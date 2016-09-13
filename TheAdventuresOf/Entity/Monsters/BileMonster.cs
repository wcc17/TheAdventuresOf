using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class BileMonster : Monster
	{
		public static float floatHeight;

		bool isShooting;

		Bile bile;

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

		void handleShoot(GameTime gameTime)
		{
			bile.Update(gameTime);

			if (!bile.isActive)
			{
				isShooting = false;
				delayAction = true;

				//reset bile
				initializeBile();
			}
		}

		void initializeBile()
		{
			if (bile == null)
			{
				bile = new Bile();
			}

			bile.moveLeft = moveLeft;
			bile.moveRight = moveRight;

			bile.positionVector.X = positionVector.X;

			bile.UpdateEntityBounds();
		}
	}
}

