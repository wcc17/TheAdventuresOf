using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	public abstract class Character
	{
		public const int LEFT = 0;
		public const int RIGHT = 1;

		public float speed;
		public float animationSpeed;

		public Rectangle characterBounds;

		public Vector2 positionVector;

		public int frameCount;
		public Animation standAnimation;
		public Animation walkAnimation;
		public Animation currentAnimation;

		public int characterWidth;
		public int characterHeight;

		public bool moveLeft;
		public bool moveRight = true;
		public bool isMoving;

		public virtual void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			Console.WriteLine("initializing character");
			this.characterWidth = characterWidth;
			this.characterHeight = characterHeight;

			positionVector = new Vector2(startX, startY);

			characterBounds = new Rectangle((int)positionVector.X, (int)positionVector.Y, characterWidth, characterHeight);
			InitializeAnimation();
		}

		public void UpdateCharacterBounds()
		{
			characterBounds.X = (int)positionVector.X;
			characterBounds.Y = (int)positionVector.Y;
		}

		public virtual void HandleMovement(GameTime gameTime)
		{
		}

		public virtual void InitializeAnimation()
		{
		}

		public virtual void HandleLevelBoundCollision(int direction, int boundX)
		{
			switch (direction)
			{
				case LEFT:
					positionVector.X = boundX;
					break;
				case RIGHT:
					positionVector.X = boundX - characterWidth;
					break;
			}
		}

		public virtual void Update(GameTime gameTime, bool buttonPressed)
		{
			HandleAnimation(gameTime);

			//reset isMoving before checking again to see if player is still moving
			isMoving = false;

			if (buttonPressed)
			{
				HandleMovement(gameTime);
			}
		}

		public virtual void HandleAnimation(GameTime gameTime)
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

		public virtual void Move(GameTime gameTime, int direction)
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
		}

		public virtual void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			//get current frame for animations
			var sourceRectangle = currentAnimation.CurrentRectangle;

			if (moveRight)
			{
				spriteBatch.Draw(texture, positionVector, sourceRectangle, Color.White);
			}
			else if(moveLeft) {
				spriteBatch.Draw(texture, positionVector, sourceRectangle: sourceRectangle, color: Color.White, effects: SpriteEffects.FlipHorizontally);
			}
		}
	}
}
	
