using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class BlockMonster : Monster
	{
		public void SetBlockMonsterData(BlockMonster blockMonster)
		{
			entityTag = blockMonster.entityTag;
			speed = blockMonster.speed;
			animationSpeed = blockMonster.animationSpeed;
			frameCount = blockMonster.frameCount;
			moveDistanceLimit = blockMonster.moveDistanceLimit;
			actionDelayTime = blockMonster.actionDelayTime;
			rotationSpeed = blockMonster.rotationSpeed;
			upDownSpeed = blockMonster.upDownSpeed;

			monsterTexture = AssetManager.Instance.blockMonsterTexture;
		}

		public override void InitializeSpawn()
		{
			Reset();

			//assuming that new X position is set in main Update function for now
			ChooseRandomDirection();
			if (moveLeft)
			{
				rotation = RIGHT_ANGLE_RADIANS;
			}
			else
			{
				rotation = -RIGHT_ANGLE_RADIANS;
			}

			isSpawning = true;
		}

		public override void HandleSpawn(GameTime gameTime)
		{
			if (positionVector.Y > groundLevel)
			{
				MoveUpDown(gameTime, UP);
			}
			else if ((moveLeft && rotation > 0) || (moveRight && rotation < 0))
			{
				Rotate(gameTime);
			}
			else
			{
				InitializeMonster();
			}
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			if (isMoving)
			{
				currentAnimation = walkAnimation;
			}
			else {
				currentAnimation = standAnimation;
			}
		}
	}
}

