using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace TheAdventuresOf
{
	public class BileMonster : Monster
	{
		public static float floatHeight;
		public static float bileObjectLimit;
		public static float throwDelayTimeLimit;
		List<Bile> activeBileObjects;

		public string bileTag;
		public float bileSpeed;

		public TimeSpan timeThrowDelayed = TimeSpan.FromSeconds(0);
		bool delayThrow = true;
		bool isThrowing = false;

		public void SetBileMonsterData(BileMonster bileMonster, Bile bile)
		{
			entityTag = bileMonster.entityTag;
			speed = bileMonster.speed;
			animationSpeed = bileMonster.animationSpeed;
			frameCount = bileMonster.frameCount;
			moveDistanceLimit = bileMonster.moveDistanceLimit;
			actionDelayTime = bileMonster.actionDelayTime;
			rotationSpeed = bileMonster.rotationSpeed;
			upDownSpeed = bileMonster.upDownSpeed;

			//set bile specific info
			bileSpeed = bile.speed;
			bileTag = bile.entityTag;

			monsterTexture = AssetManager.Instance.bileMonsterTexture;
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

			//TODO: these just instantly disappear. need some sort of fade out or something
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
				bile.Draw(spriteBatch, AssetManager.Instance.bileTexture);
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

			bile.entityTag = bileTag;
			bile.speed = bileSpeed;
			bile.moveLeft = moveLeft;
			bile.moveRight = moveRight;
			bile.positionVector.X = positionVector.X;
			bile.positionVector.Y = positionVector.Y;
			bile.originVector.X = positionVector.X;
			bile.originVector.Y = positionVector.Y;
			bile.UpdateEntityBounds();

			activeBileObjects.Add(bile);
		}
	}
}

