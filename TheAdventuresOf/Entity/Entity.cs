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
		public const int LEFT = 0;
		public const int RIGHT = 1;

		public float speed;

		public Rectangle entityBounds;

		public Vector2 positionVector;

		public int entityWidth;
		public int entityHeight;

		public bool moveLeft;
		public bool moveRight;
		public bool isMoving;

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

		//TODO: only player needs buttonPressed. leave as optional or give Monster its own Update method. Who knows yet
		public virtual void Update(GameTime gameTime, bool buttonPressed = false) { }
		public virtual void Move(GameTime gameTime, int direction) { }
		public virtual void HandleMovement(GameTime gameTime) { }
		public virtual void Draw(SpriteBatch spriteBatch, Texture2D texture) { }
	}
}

