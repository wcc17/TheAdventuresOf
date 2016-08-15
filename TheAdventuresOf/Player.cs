using System;
using Microsoft.Xna.Framework;
using CoreText;
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

		public override void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			base.InitializeCharacter(startX, startY, characterWidth, characterHeight);

			groundLevel = startY;

			swordPositionVector = new Vector2(startX + characterWidth - rightSwordOffset, startY + swordYOffset);
			jumpHeightLimit = startY - jumpHeight;
			variableJumpSpeed = jumpSpeed;

			swordBounds = new Rectangle((int)swordPositionVector.X, 
			                            (int)swordPositionVector.Y, 
			                            AssetManager.swordTexture.Width, 
			                            AssetManager.swordTexture.Height);

			health = maxHealth;
			heartPositionVector = new Vector2(Screen.FULL_SCREEN_WIDTH - ((AssetManager.heartTexture.Width + 20) * health), 10);
		}

		public override void InitializeAnimation()
		{
			//TODO: fix this characterWidth - 1. Theres a black bar appearing on the first frame that I can't get rid of
			//for now, the fix is to do characterWidth - 1, but thats not the greatest solution.
			//the character will probably need to be redrawn, but I'm not going to mess with it for now
			//TODO: can probably put this in a loop. all charactesr only have 3-4 frames tops, so can loop through them with playerFrames variable
			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(0, 0, characterWidth - 1, characterHeight),
			                       TimeSpan.FromSeconds(animationSpeed));
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth - 1, characterHeight), 
			                       TimeSpan.FromSeconds(animationSpeed));


			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth - 1, characterHeight), 
			                        TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void Update(GameTime gameTime, bool buttonPressed)
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

			if (isKnockedBackLeft || isKnockedBackRight)
			{
				HandleKnockBack(gameTime);
			}

			base.Update(gameTime, buttonPressed);
		}

		public override void HandleMovement(GameTime gameTime)
		{
			if (Controller.leftButtonPressed)
			{
				Move(gameTime, LEFT);
				UpdateCharacterBounds();
			}
			if (Controller.rightButtonPressed)
			{
				Move(gameTime, RIGHT);
				UpdateCharacterBounds();
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
			UpdateCharacterBounds();
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

		public void CheckCollision(Monster monster)
		{
			if (swordBounds.Intersects(monster.characterBounds))
			{
				monster.isDying = true;
			}
			else if (characterBounds.Intersects(monster.characterBounds))
			{
				if (!isInvincible && !monster.isDying && !monster.isDead)
				{
					Console.WriteLine("CHARACTER HURT");
					health--;

					isInvincible = true;
					invincibilityTimer = TimeSpan.FromSeconds(invincibilityTime);

					if (monster.moveLeft)
					{
						isKnockedBackLeft = true;
					}
					else if (monster.moveRight)
					{
						isKnockedBackRight = true;
					}
				}
					
			}
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			//TODO: preventing animation from changing while jumping works this way for now, but may need to change if more are added
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

		public override void UpdateCharacterBounds()
		{
			base.UpdateCharacterBounds();
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
				swordPositionVector.X = positionVector.X - characterWidth - leftSwordOffset;
			}
			else if (moveRight)
			{
				swordPositionVector.X = positionVector.X + characterWidth - rightSwordOffset;
			}
		}

		public void Jump(GameTime gameTime)
		{
			positionVector.Y -= (variableJumpSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds);
			swordPositionVector.Y = positionVector.Y + swordYOffset;

			variableJumpSpeed -= 12.5f;

			Console.WriteLine("Y: " + positionVector.Y);
			Console.WriteLine("jump speed: " + variableJumpSpeed);
			Console.WriteLine("jumpHeight limit: " + jumpHeightLimit);
			Console.WriteLine("Ground level: " + groundLevel);

			//if we hit the jump height, make jumpSpeed negative, start falling
			if (positionVector.Y <= jumpHeightLimit)
			{
				Console.WriteLine("Start falling");
				variableJumpSpeed *= -1;
			}

			//if we're falling and we hit the ground, stop jumping and reset the jump speed
			if (((int)positionVector.Y >= (int)groundLevel) && variableJumpSpeed < 0)
			{
				Console.WriteLine("Stop jumping");
				isJumping = false;

				positionVector.Y = groundLevel;

				variableJumpSpeed = jumpSpeed;
			}
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (moveRight)
			{
				spriteBatch.Draw(AssetManager.swordTexture, 
				                 swordPositionVector, 
				                 color: tintColor);
				DrawHealth(spriteBatch);
			}
			else if (moveLeft)
			{
				spriteBatch.Draw(AssetManager.swordTexture, 
				                 swordPositionVector, 
				                 effects: SpriteEffects.FlipHorizontally, 
				                 color: tintColor);
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
					spriteBatch.Draw(AssetManager.heartTexture,
								 	 new Vector2(heartPositionVector.X + (i * AssetManager.heartTexture.Width),
											 heartPositionVector.Y));
				}
				else 
				{
					spriteBatch.Draw(AssetManager.emptyHeartTexture,
									 new Vector2(heartPositionVector.X + (i * AssetManager.emptyHeartTexture.Width),
												 heartPositionVector.Y));
				}
			}
		}
	}
}

