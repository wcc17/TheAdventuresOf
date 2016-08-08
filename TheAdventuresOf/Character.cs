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

		public Animation standAnimation;
		public Animation walkAnimation;
		public Animation currentAnimation;

		public int characterWidth;
		public int characterHeight;

		public bool moveLeft;
		public bool moveRight = true;
		public bool isMoving;

		public void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			this.characterWidth = characterWidth;
			this.characterHeight = characterHeight;

			positionVector = new Vector2(startX, startY);

			characterBounds = new Rectangle((int)positionVector.X, (int)positionVector.Y, characterWidth, characterHeight);
			InitializeAnimation();
		}

		public void InitializeAnimation()
		{
			//TODO: fix this characterWidth - 1. Theres a black bar appearing on the first frame that I can't get rid of
			//for now, the fix is to do characterWidth - 1, but thats not the greatest solution.
			//the character will probably need to be redrawn, but I'm not going to mess with it for now
			walkAnimation = new Animation();
			walkAnimation.AddFrame(new Rectangle(0, 0, characterWidth-1, characterHeight), TimeSpan.FromSeconds(animationSpeed));
			walkAnimation.AddFrame(new Rectangle(characterWidth, 0, characterWidth-1, characterHeight), TimeSpan.FromSeconds(animationSpeed));

			standAnimation = new Animation();
			standAnimation.AddFrame(new Rectangle(0, 0, characterWidth - 1, characterHeight), TimeSpan.FromSeconds(animationSpeed));
		}

		public void UpdateCharacterBounds()
		{
			characterBounds.X = (int)positionVector.X;
			characterBounds.Y = (int)positionVector.Y;
		}

		public void HandleLevelBoundCollision(int direction, int boundX)
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

		public void HandleAnimation(GameTime gameTime)
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

		public void HandleMovement(GameTime gameTime)
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

		public virtual void Draw(SpriteBatch spriteBatch)
		{
			//get current frame for animations
			var sourceRectangle = currentAnimation.CurrentRectangle;

			if (moveRight)
			{
				spriteBatch.Draw(AssetManager.characterTexture, positionVector, sourceRectangle, Color.White);
			}
			else if(moveLeft) {
				spriteBatch.Draw(AssetManager.characterTexture, positionVector, sourceRectangle: sourceRectangle, color: Color.White, effects: SpriteEffects.FlipHorizontally);
			}
		}
	}
}
	
