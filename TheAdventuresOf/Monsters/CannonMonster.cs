using System;
using Microsoft.Xna.Framework;
using System.Collections.Generic;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class CannonMonster : Monster
	{
		public static float leftSideX;
		public static float rightSideX;

		bool delayAction;
		bool isShooting;

		//Bullet bullet;

		public CannonMonster()
		{
		}

		//no reason to check collision with level bounds here
		public override void HandleLevelBoundCollision(int direction, int boundX) { }

		public override void InitializeSpawn()
		{
			reset();

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

		public void HandleShoot()
		{
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!isDying && !delayAction && !isSpawning)
			{
				//if not delaying action, we should either prepare to shoot or delay an action
				//if (!isShooting)
				//{
				//	Shoot();
				//}
				//else
				//stop shooting and start delay

				if (!isShooting)
				{
					HandleShoot();
				}
				else {
					delayAction = true;
				}
			}
			else if (delayAction && !isDying && !isSpawning)
			{
				HandleDelay(gameTime);
			}
			else if (isDying && !isSpawning)
			{
				HandleDeath(gameTime);
			}
			else if (isSpawning)
			{
				HandleSpawn(gameTime);
			}
		}

		public void ChooseRandomSide(int cannonMonsterCount, List<Monster> monsters)
		{
			//there can only be two of these monsters on the level at any time
			//if a cannonMonster already exists, get its side and put the new one on the other side
			if (cannonMonsterCount > 0)
			{
				CannonMonster existingCannonMonster = (CannonMonster)monsters.Find(cm => (cm is CannonMonster));

				if (existingCannonMonster.moveLeft)
				{
					//moveLeft = facingLeft, meaning cannon is on the right side, so put the new one on the left side
					positionVector.X = leftSideX;
					moveRight = true;
				}
				else if (existingCannonMonster.moveRight)
				{
					//moveRight = facingRight, meaning cannon is on the left side, so put the new one on the right side
					positionVector.X = rightSideX;
					moveLeft = true;
				}
			}
			else 
			{
				if (rand.Next(0, 2) == 0)
				{
					positionVector.X = leftSideX;

					//if on the left side of the level, should be facing right
					moveRight = true;
				}
				else
				{
					positionVector.X = rightSideX;

					//if on the right side of the level, should be facing left
					moveLeft = true;
				}
			}

			UpdateEntityBounds();
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (isShooting)
			{
				//bullet.Draw(spriteBatch, texture);
			}
		}

	}
}

