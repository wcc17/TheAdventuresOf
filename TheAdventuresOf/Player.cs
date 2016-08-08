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

		public void InitializePlayer(float startX, float startY, int characterWidth, int characterHeight)
		{
			base.InitializeCharacter(startX, startY, characterWidth, characterHeight);

			swordPositionVector = new Vector2(startX + characterWidth - rightSwordOffset, startY + swordYOffset);
			jumpHeightLimit = startY - jumpHeight;
			variableJumpSpeed = jumpSpeed;
		}

		public override void Update(GameTime gameTime, bool buttonPressed)
		{
			HandleJump(gameTime);

			base.Update(gameTime, buttonPressed);
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
			MoveSword(gameTime, direction);
		}

		public void MoveSword(GameTime gameTime, int direction)
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

		public override void Draw(SpriteBatch spriteBatch)
		{
			base.Draw(spriteBatch);

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

