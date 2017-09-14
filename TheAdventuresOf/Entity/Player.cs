using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Player : Character
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
		Vector2 healthPositionVector;
        Rectangle healthBarFillSourceRectangle;

		bool isInvincible;
		TimeSpan invincibilityTimer = TimeSpan.FromSeconds(0);
		public double invincibilityTime;

		float transparency = 1;
		int transparencyMultiplier = -1;

		bool isKnockedBackLeft;
		bool isKnockedBackRight;
		double knockBackDistance;
		public float knockBackDistanceLimit;
		public int knockBackSpeed;

		public void InitializePlayer(float startX, float startY, int playerWidth, int playerHeight)
		{
			base.InitializeCharacter(startX, startY, playerWidth, playerHeight);

			groundLevel = startY;

			swordPositionVector = new Vector2(startX + playerWidth - rightSwordOffset, startY + swordYOffset);

			swordBounds = new Rectangle((int)swordPositionVector.X, 
			                            (int)swordPositionVector.Y, 
			                            AssetManager.Instance.swordTexture.Width, 
			                            AssetManager.Instance.swordTexture.Height);

			health = maxHealth;
            healthPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH - (AssetManager.Instance.progressBarTexture.Width + healthBarXOffset), healthBarY);
            healthBarFillSourceRectangle = new Rectangle(0, 0, 
                                                         AssetManager.Instance.progressBarFillTexture.Width, 
                                                         AssetManager.Instance.progressBarFillTexture.Height);

			moveRight = true;

            collisionBounds = new Rectangle(entityBounds.X + collisionOffset, 
                                            entityBounds.Y + collisionOffset, 
                                            entityBounds.Width - collisionOffset, 
                                            entityBounds.Height - collisionOffset);
		}

		public override void InitializeAnimation()
		{
			//TODO: fix this characterWidth - 1. Theres a black bar appearing on the first frame that I can't get rid of
			//for now, the fix is to do characterWidth - 1, but thats not the greatest solution.
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
			if (!isDying)
			{
                HandleJump(gameTime, gameController.upButtonPressed);

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
			}
			else {
				HandleDeath(gameTime);
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
                //TODO: should this be an if/else if statement? or two ifs?
                if (swordBounds.Intersects(monster.entityBounds))
                {
                    //spike monster can't be killed by the sword
                    if(!(monster is SpikeMonster)) {
                        monster.isDying = true;
                        ScoringManager.Instance.HandleMonsterKill(monster);
                    }

                    CoinManager.Instance.AddCoins(monster.positionVector.X, monster.positionVector.Y);
                }
                else if (collisionBounds.Intersects(monster.entityBounds))
                {
                    if (!isInvincible)
                    {
                        if(monster is SpikeMonster) {
                            Logger.WriteToConsole("Player took damage from SpikeMonster");
                            ((SpikeMonster) monster).didDamagePlayer = true;
                        }


                        Logger.WriteToConsole("player took damage from monster");
                        handlePlayerTakingDamage(monster);
                    }

                } 
            }
		}

		void handlePlayerTakingDamage(Entity entity)
		{
            //TODO: different monsters should do different amounts of damage
			health -= 5;

            recalculateHealthBarFill();

			if (health > 0)
			{
				isInvincible = true;
				invincibilityTimer = TimeSpan.FromSeconds(invincibilityTime);

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

            int fullWidth = AssetManager.Instance.progressBarFillTexture.Width;
            int remainingHealth = maxHealth - health;
            int newWidth = fullWidth - (remainingHealth * (fullWidth / maxHealth));

            healthBarFillSourceRectangle.Width = newWidth;
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

		public void HandleJump(GameTime gameTime, bool isUpButtonPressed)
		{
			if (isUpButtonPressed)
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
        }
	}
}

