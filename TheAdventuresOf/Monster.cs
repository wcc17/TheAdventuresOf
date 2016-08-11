using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.ComponentModel;

namespace TheAdventuresOf
{
	public class Monster : Character
	{
		public const float RIGHT_ANGLE_RADIANS = (90 * MathHelper.Pi) / 180;

		public int moveDistanceLimit;
		public float moveDelayTime;
		public float rotationSpeed;
		public bool isDead;

		float distanceMoved = 0;
		TimeSpan timeDelayed = TimeSpan.FromSeconds(0);
		bool delayMove;

		//don't want to instantiate a new Random object every frame
		Random rand = new Random();

		public override void InitializeAnimation()
		{
			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			//first check if monster should be dead. next check if move should be delayed. next check if we need to make a move
			//finally, if we're moving, check to see if we need to stop moving and delay the next move
			if (!isDead)
			{
				if (!delayMove)
				{
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

						//animation is handled here only 
						base.Update(gameTime, false);

						HandleMovement(gameTime);
					}
				}
				else 
				{
					HandleDelay(gameTime);
				}
			}
			else 
			{
				//TODO: I don't like that I'm setting this every frame, but I'll figure it out soon
				currentAnimation = walkAnimation;
				HandleDeath(gameTime);
			}
		}

		void HandleDelay(GameTime gameTime)
		{
			timeDelayed = timeDelayed.Add(gameTime.ElapsedGameTime);
			if (timeDelayed.TotalSeconds > moveDelayTime)
			{
				delayMove = false;
				timeDelayed = TimeSpan.FromSeconds(0);
			}
		}

		void HandleDeath(GameTime gameTime)
		{
			//should rotate 90 degrees to the direction opposite of the direction they're facing
			//after that should slowly sink down into the ground until they're off screen, slowly becoming more transparent
			if ( (moveLeft && rotation < RIGHT_ANGLE_RADIANS) || (moveRight && rotation > -RIGHT_ANGLE_RADIANS))
			{
				float degreesToRotate = rotationSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
				float radiansToRotate = (degreesToRotate * MathHelper.Pi) / 180;
				if (moveLeft)
				{
					rotation += radiansToRotate;
					Console.WriteLine("rotation = " + rotation);
				}
				else if (moveRight)
				{
					rotation -= radiansToRotate;
					Console.WriteLine("rotation = " + rotation);
				}
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

		void ChooseRandomDirection()
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

		public override void HandleMovement(GameTime gameTime)
		{
			if (moveLeft)
			{
				Move(gameTime, LEFT);
				UpdateCharacterBounds();
			}
			else if (moveRight) {
				Move(gameTime, RIGHT);
				UpdateCharacterBounds();
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

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);
		}
	}
}

