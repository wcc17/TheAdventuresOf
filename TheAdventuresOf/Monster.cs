﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.ComponentModel;

namespace TheAdventuresOf
{
	public class Monster : Character
	{
		public static int UP = 0;
		public static int DOWN = 1;
		public float groundLevel;

		public int moveDistanceLimit;
		public float moveDelayTime;
		public float upDownSpeed;
		public bool isSpawning;

		public TimeSpan timeDelayed = TimeSpan.FromSeconds(0);
		float distanceMoved;
		bool delayMove;

		//don't want to instantiate a new Random object every frame
		public Random rand = new Random();

		public virtual void HandleSpawn(GameTime gameTime) { }
		public virtual void InitializeSpawn() { }
		public override void HandleAnimation(GameTime gameTime) { }

		public void InitializeMonsterAfterSpawn()
		{
			rotation = 0;
			isSpawning = false;
			currentAnimation = standAnimation;
			UpdateCharacterBounds();
		}

		public override void InitializeAnimation()
		{
			if (frameCount > 1)
			{
				walkAnimation = new Animation();
				walkAnimation.AddFrame(new Rectangle(characterWidth,
													 0,
													 characterWidth,
													 characterHeight), TimeSpan.FromSeconds(animationSpeed));
			}

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0,
			                                      0,
			                                      characterWidth,
			                                      characterHeight), TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
		}

		//overriden in CannonMOnster
		public virtual void HandleDelay(GameTime gameTime)
		{
			timeDelayed = timeDelayed.Add(gameTime.ElapsedGameTime);
			if (timeDelayed.TotalSeconds > moveDelayTime)
			{
				delayMove = false;
				timeDelayed = TimeSpan.FromSeconds(0);
			}
		}

		public void HandleDeath(GameTime gameTime)
		{
			//should rotate 90 degrees to the direction opposite of the direction they're facing
			//after that should slowly sink down into the ground until they're off screen, slowly becoming more transparent
			if ((moveLeft && rotation > -RIGHT_ANGLE_RADIANS) || (moveRight && rotation < RIGHT_ANGLE_RADIANS))
			{
				Rotate(gameTime);
			}
			else if (positionVector.Y < Screen.FULL_SCREEN_HEIGHT)
			{
				MoveUpDown(gameTime, DOWN);
			}
			else
			{
				isDead = true;
			}
		}

		public override void HandleMovement(GameTime gameTime)
		{
			if (moveLeft)
			{
				Move(gameTime, LEFT);
				UpdateCharacterBounds();
			}
			else if (moveRight)
			{
				Move(gameTime, RIGHT);
				UpdateCharacterBounds();
			}
		}

		//overridden in CannonMonster
		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!isDying && !delayMove && !isSpawning)
			{
				//only try to move if we're not dying, delaying or spawning
				if (!isMoving)
				{
					RandomizeMovement();
				}
				else
				{
					//stop movement
					if (distanceMoved > moveDistanceLimit)
					{
						distanceMoved = 0;
						isMoving = false;

						delayMove = true;
					}

					HandleMovement(gameTime);
				}
			}
			else if (delayMove && !isDying && !isSpawning)
			{
				//only delay if we're not dying and not spawning
				HandleDelay(gameTime);
			}
			else if (isDying && !isSpawning)
			{
				//only die if we're not spawning
				HandleDeath(gameTime);
			}
			else if (isSpawning)
			{
				//only spawn if nothing else is going on
				HandleSpawn(gameTime);
			}
		}

		void RandomizeMovement()
		{
			if (rand.Next(0, 2) == 0)
			{
				//if 0, start moving, otherwise don't
				isMoving = true;

				ChooseRandomDirection();
			}
			else {
				delayMove = true;
			}
		}

		public void ChooseRandomDirection()
		{
			//and choose a random direction
			if (rand.Next(0, 2) == 0)
			{
				moveRight = false;
				moveLeft = true;
			}
			else {
				moveLeft = false;
				moveRight = true;
			}
		}

		public override void Move(GameTime gameTime, int direction)
		{
			float distanceToMove = (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			switch (direction)
			{
				case LEFT:
					positionVector.X -= distanceToMove;
					distanceMoved += distanceToMove;
					break;
				case RIGHT:
					positionVector.X += distanceToMove;
					distanceMoved += distanceToMove;
					break;
			}
		}

		public void MoveUpDown(GameTime gameTime, int direction)
		{
			float distanceToMove = (upDownSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			if (direction == UP)
			{
				positionVector.Y -= distanceToMove;
			}
			else
			{
				positionVector.Y += distanceToMove;
			}
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);
		}

		public void reset()
		{
			isSpawning = false;
			isDying = false;
			isDead = false;
			delayMove = false;
			distanceMoved = 0;
			timeDelayed = TimeSpan.FromSeconds(0);
		}
	}
}

