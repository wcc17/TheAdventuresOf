using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Player : Entity
	{
		public float groundLevel;

        //giving the player a little slack when it comes to collisions with monsters so we can be 100% sure that the monster hurt the player
        Rectangle collisionBounds;
        public int collisionOffset;

		public Rectangle swordBounds;
		public float leftSwordOffset;
		public float rightSwordOffset;
		public float swordYOffset;

		Vector2 swordPositionVector;

		public bool hasJumped;
		public bool isJumping;
        public float initialJumpVelocity;
        public float jumpGravity;
        float velocityY;

		public int maxHealth;
		public int health;
        public float healthBarXOffset;
        public float healthBarY;
        public float healthTextPositionXOffset;
        public float healthTextPositionYOffset;
		Vector2 healthPositionVector;
        Vector2 healthTextPositionVector;
        Rectangle healthBarFillSourceRectangle;
        Vector2 zeroPositionVector = new Vector2(0, 0);

        //TODO: this should be a Timer, not a TimeSpan. the dealing with this is nasty.  Could also be in Entity class
		TimeSpan invincibilityTimer = TimeSpan.FromSeconds(0);

		float transparency = 1;
		int transparencyMultiplier = -1;

		bool isKnockedBackLeft;
		bool isKnockedBackRight;
		double knockBackDistance;
		public float knockBackDistanceLimit;
		public int knockBackSpeed;

		public bool isSpawning;
		public Vector2 initialPositionVector; //save position given by XML
		public float spawnStartX;
		public float spawnStartY;
		public float spawnXLimit;
		public float spawnRotationSpeed;
		public float spawnFlipLimitDegrees;
		float spawnFlipLimitRadians;
		float totalRotation = 0;

		public void InitializePlayer(float startX, float startY, int playerWidth, int playerHeight, bool useSpawnAnimation)
		{
            base.InitializeEntity(startX, startY, playerWidth, playerHeight);
            groundLevel = startY;

            //prepare spawning
            if (useSpawnAnimation) {
                spawnFlipLimitRadians = spawnFlipLimitDegrees * (float)(Math.PI / 180);
                initialPositionVector = new Vector2();
                initialPositionVector = positionVector;
                positionVector.X = spawnStartX;
                positionVector.Y = spawnStartY;
                isSpawning = true;
            }

            swordPositionVector = new Vector2(positionVector.X + playerWidth - rightSwordOffset, positionVector.Y + swordYOffset);
			swordBounds = new Rectangle((int)swordPositionVector.X, 
			                            (int)swordPositionVector.Y, 
			                            AssetManager.Instance.swordTexture.Width, 
			                            AssetManager.Instance.swordTexture.Height);

			health = maxHealth;
            healthPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH - (AssetManager.Instance.progressBarTexture.Width + healthBarXOffset), healthBarY);
            healthBarFillSourceRectangle = new Rectangle(0, 0, 
                                                         AssetManager.Instance.progressBarFillTexture.Width, 
                                                         AssetManager.Instance.progressBarFillTexture.Height);
            healthTextPositionVector = new Vector2(healthPositionVector.X + healthTextPositionXOffset,
                                                   healthPositionVector.Y + healthTextPositionYOffset);

			moveRight = true;

            collisionBounds = new Rectangle(entityBounds.X + collisionOffset, 
                                            entityBounds.Y + collisionOffset, 
                                            entityBounds.Width - collisionOffset, 
                                            entityBounds.Height - collisionOffset);
		}

		public override void InitializeAnimation()
		{
            //TODO: fix this entityWidth - 1. Theres a black bar appearing on the first frame that I can't get rid of
            //for now, the fix is to do entityWidth - 1, but thats not the greatest solution.
            //the character will probably need to be redrawn, but I'm not going to mess with it for now
            walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(0, 0, entityWidth - 1, entityHeight),
			                       TimeSpan.FromSeconds(animationSpeed));
			walkAnimation.AddFrame(new Rectangle(entityWidth, 0, entityWidth - 1, entityHeight), 
			                       TimeSpan.FromSeconds(animationSpeed));


			baseAnimation = new Animation();
			baseAnimation.AddFrame(new Rectangle(0, 0, entityWidth - 1, entityHeight), 
			                        TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = baseAnimation;

			base.InitializeAnimation();
		}

		public void UpdatePlayer(GameTime gameTime, GameController gameController)
		{
			if (!isDying && !isSpawning)
			{
                HandleJump(gameTime, gameController.jumpButtonPressed);

				//reset isMoving before checking again to see if player is still moving
				isMoving = false;

                if (gameController.isButtonPressed)
				{
                    HandlePlayerMovement(gameTime, gameController.leftButtonPressed, 
                                   gameController.rightButtonPressed);
				}

				if (isInvincible)
				{
					HandleInvincibility(gameTime);
				}

				//don't want the knockback to happen while the player is in the air
				if ( (isKnockedBackLeft || isKnockedBackRight) && !isJumping )
				{
					HandleKnockBack(gameTime);
                } else {
                    isKnockedBackLeft = false;
                    isKnockedBackRight = false;
                }

				HandleAnimation(gameTime);
			} else if(isDying && !isSpawning) {
				HandleDeath(gameTime);
            } else if(isSpawning) {
                handleSpawn(gameTime);
            }

            UpdateEntityBounds();
		}

		public void HandlePlayerMovement(GameTime gameTime, 
                                            bool leftButtonPressed, 
                                            bool rightButtonPressed) {
			if (leftButtonPressed)
			{
				Move(gameTime, LEFT);
			}
			if (rightButtonPressed)
			{
				Move(gameTime, RIGHT);
			}
		}

		public void HandleDeath(GameTime gameTime)
		{
			if ((moveLeft && rotation > -RIGHT_ANGLE_RADIANS) || (moveRight && rotation < RIGHT_ANGLE_RADIANS))
			{
				Rotate(gameTime);
			}
			else if (positionVector.Y < groundLevel)
			{
                positionVector.Y += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			}
			else
			{
				isDead = true;
			}
		}

		public void HandleInvincibility(GameTime gameTime)
		{
			invincibilityTimer = invincibilityTimer.Subtract(gameTime.ElapsedGameTime);
			if (invincibilityTimer.Seconds <= 0)
			{
				isInvincible = false;
				transparency = 1;
				transparencyMultiplier = -1;
				tintColor = Color.White;

				return;
			}

			if (transparency < 0 || transparency > 1)
			{
				transparencyMultiplier *= -1;
			}

			transparency += (transparencyMultiplier * ((float)gameTime.ElapsedGameTime.TotalSeconds * 10));
			tintColor = Color.White * transparency;
		}

		public void HandleKnockBack(GameTime gameTime)
		{
			double distance = knockBackSpeed * (gameTime.ElapsedGameTime.TotalSeconds);
			knockBackDistance += distance;

			int addOrSubtract = 1;
			if (isKnockedBackLeft)
			{
				addOrSubtract = -1;
			}

			positionVector.X += (addOrSubtract * (float)distance);
			UpdateSwordPosition();

			if (knockBackDistance > knockBackDistanceLimit)
			{
				knockBackDistance = 0;
				isKnockedBackLeft = false;
				isKnockedBackRight = false;
			}
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
			UpdateSwordPosition();
		}

        public void CheckCollisionProjectile(Projectile proj) 
        {
             
            if (collisionBounds.Intersects(proj.entityBounds)) 
            {
                if (!isInvincible && proj.isActive) 
                {
                    Logger.WriteToConsole("player took damage from projectile");
                    proj.HandlePostPlayerCollision();
                    handlePlayerTakingDamage(proj);
                }
            }    
        }

		public void CheckCollisionMonster(Monster monster)
		{
            if(!monster.isDying && !monster.isDead) {
                if (swordBounds.Intersects(monster.entityBounds) && !monster.isInvincible)
                {
                    //TODO: consider moving this if condition to the outside if statement above this one
                    //spike monster can't be killed by the sword
                    if(!(monster is SpikeMonster)) {
                        monster.isDying = true;
                        ScoringManager.Instance.HandleMonsterKill(monster);
                    }

                    monster.HandleCoinDropOnDeath();
                }
                else if (collisionBounds.Intersects(monster.entityBounds))
                {
                    if (!isInvincible) //if player isn't invincible
                    {
                        if(monster is SpikeMonster) {
                            Logger.WriteToConsole("Player took damage from SpikeMonster");
                            ((SpikeMonster) monster).didDamagePlayer = true;
                        }

                        //don't restart timer if its already started
                        if( (monster is SwoopMonster || monster is DashMonster) && !monster.isInvincible) {
                            monster.StartInvincibility();
                        }

                        Logger.WriteToConsole("player took damage from monster");
                        handlePlayerTakingDamage(monster);
                    }

                } 
            }
		}

        void handleSpawn(GameTime gameTime)
        {
            //no matter what, update sword position
            UpdateSwordPosition();
            Move(gameTime, RIGHT);
            HandleAnimation(gameTime);

            if(positionVector.X >= spawnXLimit) {
                HandleJump(gameTime, true);

                handleSpawnRotation(gameTime);

				if (positionVector.Y >= groundLevel)
                {
                    positionVector = initialPositionVector;
                    UpdateSwordPosition();
                    UpdateEntityBounds();

                    rotation = 0;
                    isSpawning = false;
                }
            }
        }

        void handleSpawnRotation(GameTime gameTime) {
            if (totalRotation < spawnFlipLimitRadians) {
				//handle rotate
				float radiansToRotate = spawnRotationSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
				totalRotation += radiansToRotate;

                //make sure we don't go over the limit before checking for limit in next frame
                if((rotation + radiansToRotate) > spawnFlipLimitRadians) {
                    rotation += (spawnFlipLimitRadians - rotation);
                } else {
					rotation += radiansToRotate;
                }
			} else {
				rotation = 0;
			}
        }

		void handlePlayerTakingDamage(Entity entity)
		{
            health -= entity.damage;
            recalculateHealthBarFill();

            DamageText damageText = new DamageText(positionVector.X, positionVector.Y, "-" + entity.damage.ToString(), -1);
            TextManager.Instance.AddText(damageText);

			if (health > 0)
			{
				isInvincible = true;
				invincibilityTimer = TimeSpan.FromSeconds(invincibilityTimeLimit);

				//check for bile - it shouldn't affect knock back direction because its just sitting on the ground
				if(!(entity is Bile)) {
                    isKnockedBackLeft = entity.moveLeft;
                    isKnockedBackRight = entity.moveRight;
                } else {
                    isKnockedBackLeft = !moveLeft;
                    isKnockedBackRight = !moveRight;
                }
			}
			else {
				isDying = true;
			}
		}

        void recalculateHealthBarFill() {
            Logger.Instance.AddOrUpdateValue("Health: ", health.ToString());

            float fullWidth = AssetManager.Instance.progressBarFillTexture.Width;
            float remainingHealth = maxHealth - health;
            float newWidth = fullWidth - (remainingHealth * (fullWidth / maxHealth));

            healthBarFillSourceRectangle.Width = (int)newWidth;
        }

		public override void HandleAnimation(GameTime gameTime)
		{
			if (!isJumping)
			{
				if (isMoving)
				{
					currentAnimation = walkAnimation;
					currentAnimation.Update(gameTime);
				}
				else {
					currentAnimation = baseAnimation;
					currentAnimation.Update(gameTime);
				}
			}
		}

		public void HandleJump(GameTime gameTime, bool isjumpButtonPressed)
		{
			if (isjumpButtonPressed)
			{
				hasJumped = true;
			}

			//if jump button was pressed and character is not already jumping
			if (hasJumped && !isJumping)
			{
				hasJumped = false;
				isJumping = true;
                velocityY = initialJumpVelocity;
			}
			else
			{
				//reset the jump so that it doesn't interfere later
				hasJumped = false;
			}


			//if character is currently jumping
			if (isJumping)
			{
				currentAnimation = baseAnimation;
				Jump(gameTime);
			}
		}

		public override void Move(GameTime gameTime, int direction)
		{
			switch (direction)
			{
				case LEFT:
					isMoving = true;
					moveRight = false;
					moveLeft = true;

					positionVector.X -= (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
					break;
				case RIGHT:
					isMoving = true;
					moveRight = true;
					moveLeft = false;

					positionVector.X += (speed * (float)gameTime.ElapsedGameTime.TotalSeconds);
					break;
			}

			UpdateSwordPosition();
		}

		public override void UpdateEntityBounds() {
			base.UpdateEntityBounds();
			updateSwordBounds();
            updateCollisionBounds();
		}

		void updateSwordBounds() {
			swordBounds.X = (int)swordPositionVector.X;
			swordBounds.Y = (int)swordPositionVector.Y;
		}

        void updateCollisionBounds() {
            collisionBounds.X = entityBounds.X + collisionOffset;
            collisionBounds.Y = entityBounds.Y + collisionOffset;
        }

		public void UpdateSwordPosition()
		{
			if (moveLeft)
			{
				swordPositionVector.X = positionVector.X - entityWidth - leftSwordOffset;
			}
			else if (moveRight)
			{
				swordPositionVector.X = positionVector.X + entityWidth - rightSwordOffset;
			}
		}

		public void Jump(GameTime gameTime)
		{
            velocityY += (jumpGravity);
            positionVector.Y += (velocityY);
            swordPositionVector.Y = positionVector.Y + swordYOffset;

			//if we're falling and we hit the ground, stop jumping and reset the jump speed
            if (((int)positionVector.Y >= (int)groundLevel))// && variableJumpSpeed < 0)
			{
				isJumping = false;
				positionVector.Y = groundLevel;
			}
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (moveRight)
			{
				if (!isDying && !isDead)
				{
					spriteBatch.Draw(AssetManager.Instance.swordTexture,
								 swordPositionVector,
								 color: tintColor,
								 rotation: rotation);
				}
				DrawHealth(spriteBatch);
			}
			else if (moveLeft)
			{
				if (!isDying && !isDead)
				{
					spriteBatch.Draw(AssetManager.Instance.swordTexture,
								 swordPositionVector,
								 effects: SpriteEffects.FlipHorizontally,
								 color: tintColor,
								 rotation: rotation);
				}
				DrawHealth(spriteBatch);
			}
		}

        public void DrawHealth(SpriteBatch spriteBatch) {
			spriteBatch.Draw(AssetManager.Instance.progressBarFillTexture, healthPositionVector, sourceRectangle: healthBarFillSourceRectangle);
            spriteBatch.Draw(AssetManager.Instance.progressBarTexture, healthPositionVector);
            spriteBatch.DrawString(AssetManager.Instance.font, 
                                   health + "/" + maxHealth, 
                                   healthTextPositionVector, 
                                   Color.Black, 
                                   0, 
                                   zeroPositionVector, 
                                   0.5f, 
                                   SpriteEffects.None, 
                                   0);
        }
	}
}

