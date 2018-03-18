using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Monster : Entity
	{
        public const int UP = 0;
        public const int DOWN = 1;
        public float groundLevel;

		public int monsterIndex; //set by constants in monsterManager
        public int spawnType;
        public const int SPAWN_BOTTOM = 0;
        public const int SPAWN_TOP = 1;
        public const int SPAWN_LEFT = 2;
        public const int SPAWN_RIGHT = 3;
        public float spawnXLimit; //only used if spawning left or spawning right

        public float spawnSpeed;
        public float deathSpeed;
		public int moveDistanceLimit;
		public float actionDelayTime;
        public bool isSpawning;

		public TimeSpan timeDelayed = TimeSpan.FromSeconds(0);
		public bool delayAction;
		public float distanceMoved;

		public Random rand = new Random();

        public Texture2D monsterTexture;

        int shakeState = 0;
        float shakeAmt = 0;
        public float bounceHeight;
        public float bounceSpeed;
        public int bounceUpDown = 1; //positive to go up, negative to go down

        public float alpha = 1.0f;
        public float fadeSpeed;

        Timer invincibilityTimer;

        public override void HandleAnimation(GameTime gameTime) { }

        public virtual void InitializeSpawn() {
            Reset();
        }

        public virtual void InitializeMonster()
        {
            rotation = 0;
            isSpawning = false;
            currentAnimation = baseAnimation;
            invincibilityTimer = new Timer((float)invincibilityTimeLimit);
        }

        public override void InitializeAnimation()
        {
            baseAnimation = new Animation();
            baseAnimation.AddFrame(new Rectangle(0,
                                                  0,
                                                  entityWidth,
                                                  entityHeight), TimeSpan.FromSeconds(animationSpeed));

            currentAnimation = baseAnimation;
        }

		public override void Update(GameTime gameTime, bool buttonPressed = false)
		{
			if (!isDying && !delayAction && !isSpawning)
			{
				//only try to move if we're not dying, delaying or spawning
				if (!isMoving)
				{
                    decideMovement();
				}
				else
				{
					//stop movement if necessary
                    //TODO: this probably belongs in the HandleMovement method.
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
			else if (isDying)
			{
                isSpawning = false;

				//only die if we're not spawning
				HandleDeath(gameTime);
			}
			else if (isSpawning)
			{
				//only spawn if nothing else is going on
				HandleSpawn(gameTime);
			}

            UpdateEntityBounds();
		}

        public virtual void HandleSpawn(GameTime gameTime) {
            switch(spawnType) {
                case SPAWN_BOTTOM:
                    HandleSpawnBottom(gameTime);
                    break;
                case SPAWN_TOP:
                    HandleSpawnTop(gameTime);
                    break;
                case SPAWN_LEFT:
                    HandleSpawnLeft(gameTime);
                    break;
                case SPAWN_RIGHT:
                    HandleSpawnRight(gameTime);
                    break;
            }
        }

        public virtual void HandleSpawnTop(GameTime gameTime) {
            if (positionVector.Y < groundLevel)
            {
                MoveUpDown(gameTime, DOWN, spawnSpeed);
            }
            else
            {
                InitializeMonster();
            }
        }

        public virtual void HandleSpawnBottom(GameTime gameTime) {
            if (positionVector.Y > groundLevel)
            {
                MoveUpDown(gameTime, UP, spawnSpeed);
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

        public virtual void HandleSpawnLeft(GameTime gameTime) {
            if (positionVector.X < spawnXLimit) {
                float distanceToMove = (spawnSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
                positionVector.X += distanceToMove;
            } else {
                InitializeMonster();
            }
        }

        public virtual void HandleSpawnRight(GameTime gameTime) {
            if(positionVector.X > spawnXLimit) {
                float distanceToMove = (spawnSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
                positionVector.X -= distanceToMove;
            } else {
                InitializeMonster();
            }
        }

		public virtual void MoveUpDown(GameTime gameTime, int direction, float speed)
		{
			float distanceToMove = (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			if (direction == UP)
			{
				positionVector.Y -= distanceToMove;
			}
			else
			{
				positionVector.Y += distanceToMove;
			}

            UpdateEntityBounds();
		}

        public override void HandleLevelBoundCollision(int direction, int boundX)
        {
            if(!isSpawning && !isDying) {
                base.HandleLevelBoundCollision(direction, boundX);
            }
        }

        //TODO: replace with timer!
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
            else if (positionVector.Y < ScreenManager.VIRTUAL_SCREEN_HEIGHT + this.entityHeight)
            {
                MoveUpDown(gameTime, DOWN, deathSpeed);
            }
            else
            {
                isDead = true;
            }

            //TODO: should we go ahead and kill off monster when alpha is below 0?
            //TODO: check out BileMonster before doing this
            HandleFadeOut(gameTime);
        }

        public void HandleFadeOut(GameTime gameTime)
        {
            if(alpha >= 0) {
                alpha -= (fadeSpeed * ((float)gameTime.ElapsedGameTime.TotalSeconds));
                tintColor = Color.White * alpha;
            }
        }

        public void HandleItemDropOnDeath(bool isExplosion) {
			//it would look weird if coins just appeared on the level when either of these monsters died
            if (!(this is SpikeMonster) 
                && !(this is UndergroundMonster) 
                && !isCollidingWithLevelBounds) {
				CoinManager.Instance.AddItem(positionVector.X, positionVector.Y);
                HeartManager.Instance.AddItem(positionVector.X, positionVector.Y, isExplosion);
			}
        }

		//TODO: magic number? this method has way too many of them
		public virtual void HandleShake(GameTime gameTime)
        {
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

        public virtual void HandleBounce(GameTime gameTime)
        {
            if (positionVector.Y >= (groundLevel + bounceHeight))
            {
                bounceUpDown = -1;
            }

            if (positionVector.Y <= groundLevel)
            {
                bounceUpDown = 1;
            }

            positionVector.Y += (float)(bounceSpeed / 3 * gameTime.ElapsedGameTime.TotalSeconds * bounceUpDown);
        }

        //decide if we're going to move and in what direction
		void decideMovement()
		{
			if (rand.Next(0, 2) == 0)
			{
				//if 0, start moving, otherwise don't
				isMoving = true;

                ChooseDirection();
			}
			else {
				delayAction = true;
			}
		}

        //choose direction we're going
		public void ChooseDirection()
		{
            //1/5 chance for random, 2/5 chance for move toward player
            //and choose a random direction
            if (rand.Next(0, 5) <= 0) {
                ChooseRandomDirection();
            }
            else if (rand.Next(0, 5) > 0) {
                MoveTowardPlayer();
            } else {
                Logger.WriteToConsole("No direction chosen");
            }
		}

        public void ChooseRandomDirection() {
            //and choose a random direction
            if (rand.Next(0, 2) == 0) {
                moveRight = false;
                moveLeft = true;
            }
            else {
                moveLeft = false;
                moveRight = true;
            }
        }

        //move in the direction of the player depending on what side of the player they're on
        //TODO: BileMonster should use this method instead of what its currently doing 
        public virtual void MoveTowardPlayer() {
            if (PlayerManager.Instance.GetPlayerPosition().X > positionVector.X) {
                moveRight = true;
                moveLeft = false;
            } else if(PlayerManager.Instance.GetPlayerPosition().X < positionVector.X) {
                moveRight = false;
                moveLeft = true;
            } else {
                ChooseRandomDirection();
            }
        }

		public override void HandleMovement(GameTime gameTime)
		{
			float distanceToMove = (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
            if (moveLeft) {
				positionVector.X -= distanceToMove;
				distanceMoved += distanceToMove;
            } else if(moveRight) {
				positionVector.X += distanceToMove;
				distanceMoved += distanceToMove;
            }
		}

        public void StartInvincibility() {
            isInvincible = true;
            Logger.WriteToConsole(entityTag + " is now invincible");
        }

        public void HandleInvincibility(GameTime gameTime) {
            if(isInvincible) {
                bool timeUp = invincibilityTimer.IsTimeUp(gameTime.ElapsedGameTime);
                if (timeUp) {
                    isInvincible = false;
                    invincibilityTimer.Reset();

                    Logger.WriteToConsole(entityTag + "is no longer invincible");
                } 
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

        public virtual void Reset()
		{
			isSpawning = false;
			isDying = false;
			isDead = false;
			delayAction = false;
			distanceMoved = 0;
			timeDelayed = TimeSpan.FromSeconds(0);
            alpha = 1.0f;
		}
	}
}

