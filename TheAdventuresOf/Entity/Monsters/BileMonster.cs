using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace TheAdventuresOf
{
	public class BileMonster : Monster
	{
		//TODO: get rid of the hardcoded value
		public static float bileObjectLimit = 4;
		public static float throwDelayTimeLimit = 4.5f;
		public static float floatHeight;

		public TimeSpan timeThrowDelayed = TimeSpan.FromSeconds(0);
		bool delayThrow = true;

		List<Bile> activeBileObjects;

		public void SetBileMonsterData(BileMonster bileMonster)
		{
			speed = bileMonster.speed;
			animationSpeed = bileMonster.animationSpeed;
			frameCount = bileMonster.frameCount;
			moveDistanceLimit = bileMonster.moveDistanceLimit;
			actionDelayTime = bileMonster.actionDelayTime;
			rotationSpeed = bileMonster.rotationSpeed;
			upDownSpeed = bileMonster.upDownSpeed;

			monsterTexture = AssetManager.bileMonsterTexture;
		}

		public override void InitializeSpawn()
		{
			Reset();

			//assuming that new X position is set in main Update function for now
			ChooseRandomDirection();

			isSpawning = true;

			//don't want him to begin shooting as soon as he spawns
			delayAction = true;

			activeBileObjects = new List<Bile>();
		}

		public override void HandleSpawn(GameTime gameTime)
		{
			if (positionVector.Y < groundLevel)
			{
				MoveUpDown(gameTime, DOWN);
			}
			else
			{
				InitializeMonster();
			}
		}

		public override void HandleDeath(GameTime gameTime)
		{
			base.HandleDeath(gameTime);

			//TODO: definitley not the most graceful way to do this, but will do for now
			activeBileObjects.Clear();
		}

		public void HandleThrowDelay(GameTime gameTime)
		{
			timeThrowDelayed = timeThrowDelayed.Add(gameTime.ElapsedGameTime);
			if (timeThrowDelayed.TotalSeconds > throwDelayTimeLimit)
			{
				delayThrow = false;
				timeThrowDelayed = TimeSpan.FromSeconds(0);
			}
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			//update all of the existing bile objects
			foreach (Bile bile in activeBileObjects)
			{
				bile.Update(gameTime);
			}

			if (!isDying && !delayThrow && !isSpawning)
			{
				spawnNewBileObject();
				delayThrow = true;
			}
			else 
			{
				//check if monster is ready to throw, so he can throw on the next frame
				HandleThrowDelay(gameTime);

				base.Update(gameTime, buttonPressed);
			}
		}

		public override void Draw(SpriteBatch spriteBatch)
		{
			base.Draw(spriteBatch);

			foreach (Bile bile in activeBileObjects)
			{
				bile.Draw(spriteBatch, AssetManager.bileTexture);
			}
		}

		void spawnNewBileObject()
		{
			Bile bile = new Bile();

			bile.moveLeft = moveLeft;
			bile.moveRight = moveRight;
			bile.positionVector.X = positionVector.X;
			bile.positionVector.Y = positionVector.Y;
			bile.UpdateEntityBounds();

			activeBileObjects.Add(bile);
		}
	}
}

