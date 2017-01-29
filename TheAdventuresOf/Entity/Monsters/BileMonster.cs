using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace TheAdventuresOf
{
	public class BileMonster : Monster
	{
		public static float floatHeight;

		//TODO: get rid of the hardcoded values!!
		public static float bileObjectLimit = 4;
		public static float bileSpeed;
		List<Bile> activeBileObjects;

		public static float throwDelayTimeLimit = 4.5f;
		public TimeSpan timeThrowDelayed = TimeSpan.FromSeconds(0);
		bool delayThrow = true;

		public static float firstFrameTimeLimit = 0.75f;
		public static float secondFrameTimeLimit = 0.75f;
		public TimeSpan frameTime = TimeSpan.FromSeconds(0);
		bool isThrowing = false;

		public void SetBileMonsterData(BileMonster bileMonster, Bile bile)
		{
			speed = bileMonster.speed;
			animationSpeed = bileMonster.animationSpeed;
			frameCount = bileMonster.frameCount;
			moveDistanceLimit = bileMonster.moveDistanceLimit;
			actionDelayTime = bileMonster.actionDelayTime;
			rotationSpeed = bileMonster.rotationSpeed;
			upDownSpeed = bileMonster.upDownSpeed;

			//set bile specific info
			bileSpeed = bile.speed;

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

			if (!isDying && !delayThrow && !isSpawning && !isThrowing)
			{
				isThrowing = true;
			}
			else if (!isDying && !delayThrow && !isSpawning && isThrowing)
			{
				handleThrow(gameTime);
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

		void handleThrow(GameTime gameTime)
		{
			spawnNewBileObject();
			delayThrow = true;
		}

		void spawnNewBileObject()
		{
			Bile bile = new Bile();

			bile.speed = bileSpeed;
			bile.moveLeft = moveLeft;
			bile.moveRight = moveRight;
			bile.positionVector.X = positionVector.X;
			bile.positionVector.Y = positionVector.Y;
			bile.UpdateEntityBounds();

			activeBileObjects.Add(bile);
		}
	}
}

