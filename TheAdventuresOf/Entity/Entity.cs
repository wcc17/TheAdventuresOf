using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	/**
	 * Entity class covers basic movement and what direction to face.
	 * Just using this class to keep certain entities (projectiles)
	 * as simple as possible while reusing the code for other more
	 * complicated entities.
	 * 
	 **/
	public class Entity
	{
        public static float RIGHT_ANGLE_RADIANS = (90 * MathHelper.Pi) / 180;
		public string entityTag = "Entity";

		public const int LEFT = 0;
		public const int RIGHT = 1;

		public float speed;
		public float rotationSpeed;
		public float rotation = 0;

		public Rectangle entityBounds;

		public Vector2 positionVector;

		public int entityWidth;
		public int entityHeight;

		public bool moveLeft;
		public bool moveRight;
		public bool isMoving;
        public bool isSpawning;

        public int damage;

		public Color tintColor = Color.White;

		public void InitializeEntity(float startX, float startY)
		{
			positionVector = new Vector2(startX, startY);
		}

		public virtual void UpdateEntityBounds()
		{
			entityBounds.X = (int)positionVector.X;
			entityBounds.Y = (int)positionVector.Y;
		}

		public virtual void HandleLevelBoundCollision(int direction, int boundX)
		{
			switch (direction)
			{
				case LEFT:
					positionVector.X = boundX;
					break;
				case RIGHT:
					positionVector.X = boundX - entityWidth;
					break;
			}
		}

		public virtual void Rotate(GameTime gameTime)
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

		public virtual void Update(GameTime gameTime, bool buttonPressed = false) { }
		public virtual void Move(GameTime gameTime, int direction) { }
		public virtual void HandleMovement(GameTime gameTime) { }
		public virtual void Draw(SpriteBatch spriteBatch, Texture2D texture) { }
	}
}

