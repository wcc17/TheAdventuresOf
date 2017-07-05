using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Player : Character
	{
		public float groundLevel;
		public float jumpSpeed;
		public float jumpHeight;

		public Rectangle swordBounds;
		public float leftSwordOffset;
		public float rightSwordOffset;
		public float swordYOffset;

		Vector2 swordPositionVector;

		public float variableJumpSpeed;
		public float jumpHeightLimit;

		public bool hasJumped;
		public bool isJumping;

		public int maxHealth;
		public int health;
		Vector2 heartPositionVector;

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
			jumpHeightLimit = startY - jumpHeight;
			variableJumpSpeed = jumpSpeed;

			swordBounds = new Rectangle((int)swordPositionVector.X, 
			                            (int)swordPositionVector.Y, 
			                            AssetManager.Instance.swordTexture.Width, 
			                            AssetManager.Instance.swordTexture.Height);

			health = maxHealth;
			heartPositionVector = new Vector2(Screen.FULL_SCREEN_WIDTH - ((AssetManager.Instance.heartTexture.Width + 20) * health), 10);

			moveRight = true;
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


			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, entityWidth - 1, entityHeight), 
			                        TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void Update(GameTime gameTime, bool buttonPressed)
		{
			if (!isDying)
			{
				HandleJump(gameTime);

				//reset isMoving before checking again to see if player is still moving
				isMoving = false;

				if (buttonPressed)
				{
					HandleMovement(gameTime);
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
		}

		public override void HandleMovement(GameTime gameTime)
		{
			if (Controller.leftButtonPressed)
			{
				Move(gameTime, LEFT);
				UpdateEntityBounds();
			}
			if (Controller.rightButtonPressed)
			{
				Move(gameTime, RIGHT);
				UpdateEntityBounds();
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
                positionVector.Y += (jumpSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
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
			UpdateEntityBounds();
			UpdateSwordBounds();

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
            if (entityBounds.Intersects(proj.entityBounds)) 
            {
                if (!isInvincible && proj.isActive) 
                {
                    Console.WriteLine("player took damage from projectile");
                    proj.HandlePostPlayerCollision();
                    handlePlayerTakingDamage(proj);
                }
            }    
        }

		public void CheckCollisionMonster(Monster monster)
		{
			if (swordBounds.Intersects(monster.entityBounds))
			{
				monster.isDying = true;
			}
			else if (entityBounds.Intersects(monster.entityBounds))
			{
				if (!isInvincible && !monster.isDying && !monster.isDead)
				{
					Console.WriteLine("player took damage from monster");
					handlePlayerTakingDamage(monster);
				}
					
			}
		}

		void handlePlayerTakingDamage(Entity entity)
		{
			health--;

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
					currentAnimation = standAnimation;
					currentAnimation.Update(gameTime);
				}
			}
		}

		public void HandleJump(GameTime gameTime)
		{
			if (Controller.upButtonPressed)
			{
				hasJumped = true;
			}

			//if jump button was pressed and character is not already jumping
			if (hasJumped && !isJumping)
			{
				hasJumped = false;
				isJumping = true;
			}
			else
			{
				//reset the jump so that it doesn't interfere later
				hasJumped = false;
			}


			//if character is currently jumping
			if (isJumping)
			{
				currentAnimation = standAnimation;
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

		public override void UpdateEntityBounds()
		{
			base.UpdateEntityBounds();
			UpdateSwordBounds();
		}

		public void UpdateSwordBounds()
		{
			swordBounds.X = (int)swordPositionVector.X;
			swordBounds.Y = (int)swordPositionVector.Y;
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
			Console.WriteLine("Player.Jump being called");

			if (!isDying && !isDead)
			{
				positionVector.Y -= (variableJumpSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
				swordPositionVector.Y = positionVector.Y + swordYOffset;
			}

			variableJumpSpeed -= 12.5f;

			//if we hit the jump height, make jumpSpeed negative, start falling
			if (positionVector.Y <= jumpHeightLimit)
			{
				//Console.WriteLine("Start falling");
				variableJumpSpeed *= -1;
			}

			//if we're falling and we hit the ground, stop jumping and reset the jump speed
			if (((int)positionVector.Y >= (int)groundLevel) && variableJumpSpeed < 0)
			{
				//Console.WriteLine("Stop jumping");
				isJumping = false;

				positionVector.Y = groundLevel;

				variableJumpSpeed = jumpSpeed;
			}

			UpdateEntityBounds();
			//UpdateSwordBounds(); already being called in UpdateEntityBounds
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

		public void DrawHealth(SpriteBatch spriteBatch)
		{
			int emptyHearts = maxHealth - health;
			for (int i = 3; i >= 1; i--)
			{
				if (i > emptyHearts)
				{
					spriteBatch.Draw(AssetManager.Instance.heartTexture,
								 	 new Vector2(heartPositionVector.X + (i * AssetManager.Instance.heartTexture.Width),
											 heartPositionVector.Y));
				}
				else 
				{
					spriteBatch.Draw(AssetManager.Instance.emptyHeartTexture,
									 new Vector2(heartPositionVector.X + (i * AssetManager.Instance.emptyHeartTexture.Width),
												 heartPositionVector.Y));
				}
			}
		}
	}
}

