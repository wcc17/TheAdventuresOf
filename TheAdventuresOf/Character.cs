using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	public abstract class Character
	{
		public const int LEFT = 0;
		public const int RIGHT = 1;
		public static float RIGHT_ANGLE_RADIANS = (90 * MathHelper.Pi) / 180;

		public float speed;
		public float animationSpeed;
		public float rotationSpeed;
		public float rotation = 0;

		public Rectangle characterBounds;

		public Vector2 positionVector;
		public Vector2 originVector;

		public int frameCount;
		public Animation standAnimation;
		public Animation walkAnimation;
		public Animation currentAnimation;

		public int characterWidth;
		public int characterHeight;

		public bool moveLeft;
		public bool moveRight = true;
		public bool isMoving;

		public Color tintColor = Color.White;

		public bool isDying;
		public bool isDead;

		//completely overriden methods
		public virtual void HandleMovement(GameTime gameTime) { }
		public virtual void InitializeAnimation() { }
		public virtual void Move(GameTime gameTime, int direction) { }
		public virtual void HandleAnimation(GameTime gameTime) { }

		public virtual void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			Console.WriteLine("initializing character");
			this.characterWidth = characterWidth;
			this.characterHeight = characterHeight;

			positionVector = new Vector2(startX, startY);
			originVector = new Vector2(characterWidth / 2, 
			                           characterHeight / 2);

			characterBounds = new Rectangle((int)positionVector.X, 
			                                (int)positionVector.Y, 
			                                characterWidth, 
			                                characterHeight);
			InitializeAnimation();
		}

		public virtual void UpdateCharacterBounds()
		{
			characterBounds.X = (int)positionVector.X;
			characterBounds.Y = (int)positionVector.Y;
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

		public void Rotate(GameTime gameTime)
		{
			float degreesToRotate = rotationSpeed * (float)gameTime.ElapsedGameTime.TotalSeconds;
			float radiansToRotate = (degreesToRotate * MathHelper.Pi) / 180;
			if (moveLeft)
			{
				rotation -= radiansToRotate;
			}
			else if (moveRight)
			{
				rotation += radiansToRotate;
			}
		}

		//TODO: only player needs buttonPressed. leave as optional or give Monster its own Update method. Who knows yet
		public virtual void Update(GameTime gameTime, bool buttonPressed = false)
		{
			HandleAnimation(gameTime);
		}

		public virtual void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			//get current frame for animations
			var sourceRectangle = currentAnimation.CurrentRectangle;

			if (moveRight)
			{
				spriteBatch.Draw(texture, 
				                 new Vector2(positionVector.X + originVector.X, positionVector.Y + originVector.Y), 
				                 sourceRectangle: sourceRectangle,
								 color: tintColor, 
				                 rotation: rotation, 
				                 effects: SpriteEffects.None,
				                 origin: originVector);
			}
			else if (moveLeft)
			{
				spriteBatch.Draw(texture, 
				                 new Vector2(positionVector.X + originVector.X, positionVector.Y + originVector.Y), 
				                 sourceRectangle: sourceRectangle,
				                 color: tintColor, 
				                 rotation: rotation, 
				                 effects: SpriteEffects.FlipHorizontally,
				                 origin: originVector);
			}
		}
	}
}
	
