using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
	public class BlockMonster : Monster
	{
		public BlockMonster()
		{
		}

		public override void InitializeSpawn()
		{
			reset();

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

