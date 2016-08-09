using System;
using Microsoft.Xna.Framework;
using CoreText;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Player : Character
	{
		public float jumpSpeed;
		public float jumpHeight;

		public float leftSwordOffset;
		public float rightSwordOffset;
		public float swordYOffset;

		Vector2 swordPositionVector;

		public float variableJumpSpeed;
		public float jumpHeightLimit;

		public bool hasJumped;
		public bool isJumping;

		public override void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			base.InitializeCharacter(startX, startY, characterWidth, characterHeight);

			swordPositionVector = new Vector2(startX + characterWidth - rightSwordOffset, startY + swordYOffset);
			jumpHeightLimit = startY - jumpHeight;
			variableJumpSpeed = jumpSpeed;
		}

		public override void InitializeAnimation()
		{
			//TODO: fix this characterWidth - 1. Theres a black bar appearing on the first frame that I can't get rid of
			//for now, the fix is to do characterWidth - 1, but thats not the greatest solution.
			//the character will probably need to be redrawn, but I'm not going to mess with it for now
			//TODO: can probably put this in a loop. all charactesr only have 3-4 frames tops, so can loop through them with playerFrames variable
			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(0, 0, characterWidth - 1, characterHeight), TimeSpan.FromSeconds(animationSpeed));
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth - 1, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth - 1, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			currentAnimation = standAnimation;

			base.InitializeAnimation();
		}

		public override void Update(GameTime gameTime, bool buttonPressed)
		{
			HandleJump(gameTime);

			base.Update(gameTime, buttonPressed);
		}

		public override void HandleMovement(GameTime gameTime)
		{
			if (Controller.leftButtonPressed)
			{
				Console.WriteLine("Character: Left button pressed");
				Move(gameTime, LEFT);
				UpdateCharacterBounds();
			}
			if (Controller.rightButtonPressed)
			{
				Console.WriteLine("Character: Right button pressed");
				Move(gameTime, RIGHT);
				UpdateCharacterBounds();
			}
		}

		public override void HandleLevelBoundCollision(int direction, int boundX)
		{
			base.HandleLevelBoundCollision(direction, boundX);
			MoveSword(direction);
		}

		public override void HandleAnimation(GameTime gameTime)
		{
			//TODO: preventing animation from changing while jumping works this way for now, but may need to change if more are added
			if (!isJumping)
			{
				base.HandleAnimation(gameTime);
			}
		}

		public void HandleJump(GameTime gameTime)
		{
			if (Controller.upButtonPressed)
			{
				Console.WriteLine("Character: Up button pressed");
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
			base.Move(gameTime, direction);
			MoveSword(direction);
		}

		public void MoveSword(int direction)
		{
			switch (direction)
			{
				case LEFT:
					swordPositionVector.X = positionVector.X - characterWidth - leftSwordOffset;
					break;
				case RIGHT:
					swordPositionVector.X = positionVector.X + characterWidth - rightSwordOffset;
					break;
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
			Console.WriteLine("Ground level: " + Level.groundLevel);

			//if we hit the jump height, make jumpSpeed negative, start falling
			if (positionVector.Y <= jumpHeightLimit)
			{
				Console.WriteLine("Start falling");
				variableJumpSpeed *= -1;
			}

			//if we're falling and we hit the ground, stop jumping and reset the jump speed
			if (((int)positionVector.Y >= (int)Level.groundLevel) && variableJumpSpeed < 0)
			{
				Console.WriteLine("Stop jumping");
				isJumping = false;

				positionVector.Y = Level.groundLevel;

				variableJumpSpeed = jumpSpeed;
			}
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (moveRight)
			{
				spriteBatch.Draw(AssetManager.swordTexture, swordPositionVector);
			}
			else if (moveLeft)
			{
				spriteBatch.Draw(AssetManager.swordTexture, swordPositionVector, effects: SpriteEffects.FlipHorizontally);
			}
		}
	}
}

