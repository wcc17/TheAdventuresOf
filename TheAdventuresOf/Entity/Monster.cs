using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Monster : Character
	{
		public static int UP = 0;
		public static int DOWN = 1;
		public float groundLevel;

		public int moveDistanceLimit;
		public float actionDelayTime;
		public float upDownSpeed;
		public bool isSpawning;

		public TimeSpan timeDelayed = TimeSpan.FromSeconds(0);
		public bool delayAction;
		float distanceMoved;

		//don't want to instantiate a new Random object every frame
		public Random rand = new Random();

        public virtual void InitializeSpawn() { }
        public virtual void HandleSpawn(GameTime gameTime) { }
        public override void HandleAnimation(GameTime gameTime) { }

        public Texture2D monsterTexture;

        int shakeState = 0;
        float shakeAmt = 0;

        public void InitializeMonster()
        {
            rotation = 0;
            isSpawning = false;
            currentAnimation = standAnimation;
            UpdateEntityBounds();
        }

        public override void InitializeAnimation()
        {
            standAnimation = new Animation();
            standAnimation.AddFrame(new Rectangle(0,
                                                  0,
                                                  entityWidth,
                                                  entityHeight), TimeSpan.FromSeconds(animationSpeed));

            currentAnimation = standAnimation;
        }

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
		}

		public virtual void HandleDelay(GameTime gameTime)
		{
			timeDelayed = timeDelayed.Add(gameTime.ElapsedGameTime);
			if (timeDelayed.TotalSeconds > actionDelayTime)
			{
				delayAction = false;
				timeDelayed = TimeSpan.FromSeconds(0);
			}
		}

		public virtual void HandleDeath(GameTime gameTime)
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
				UpdateEntityBounds();
			}
			else if (moveRight)
			{
				Move(gameTime, RIGHT);
				UpdateEntityBounds();
			}
		}

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!isDying && !delayAction && !isSpawning)
			{
				//only try to move if we're not dying, delaying or spawning
				if (!isMoving)
				{
					randomizeMovement();
				}
				else
				{
					//stop movement if necessary
					if (distanceMoved > moveDistanceLimit)
					{
						distanceMoved = 0;
						isMoving = false;

						delayAction = true;
					}

					HandleAnimation(gameTime);
					HandleMovement(gameTime);
				}
			}
			else if (delayAction && !isDying && !isSpawning)
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

		void randomizeMovement()
		{
			if (rand.Next(0, 2) == 0)
			{
				//if 0, start moving, otherwise don't
				isMoving = true;

				ChooseRandomDirection();
			}
			else {
				delayAction = true;
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

        //TODO: why does this take in an int for direction? We have moveLeft and moveRight
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

        //TODO: Action is the wrong word everywhere. Should be ForceMovement and delayMovement
        /**
         * ForceAction keeps clear that we are forcing the monster to move on the
         * next frame. This was more obvious than including the inner code somehwere
         */
        public virtual void ForceAction() 
        {
            delayAction = false;
            timeDelayed = TimeSpan.FromSeconds(0); 
        }

		public virtual void Draw(SpriteBatch spriteBatch)
		{
			base.Draw(spriteBatch, monsterTexture);
		}

        public virtual void HandleShake(GameTime gameTime)
        {
            //TODO: magic number, do I want in XML or nah?
            float shakeDistance = 300 * (float)gameTime.ElapsedGameTime.TotalSeconds;
            shakeAmt += shakeDistance;

            switch (shakeState)
            {
                case 0:
                    positionVector.X += shakeDistance;
                    break;
                case 1:
                    positionVector.Y -= shakeDistance;
                    break;
                case 2:
                    positionVector.X -= shakeDistance;
                    break;
                case 3:
                    positionVector.Y += shakeDistance;
                    break;
            }

            UpdateEntityBounds();

            if (shakeAmt > 4)
            {
                shakeAmt = 0;
                shakeState++;

                if (shakeState > 3)
                {
                    shakeState = 0;
                }
            }
        }

		public virtual void Reset()
		{
			isSpawning = false;
			isDying = false;
			isDead = false;
			delayAction = false;
			distanceMoved = 0;
			timeDelayed = TimeSpan.FromSeconds(0);
		}
	}
}

