using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	public class Entity
	{
        public Vector2 originVector;

        public bool isDying;
        public bool isDead;

		//so that we can tell if level bounds are being hit even if we're not adjusting the entities position
		public bool isCollidingWithLevelBounds; 

        public float animationSpeed;
        public int frameCount;
        public Animation baseAnimation;
        public Animation walkAnimation;
        public Animation currentAnimation;

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

        public int damage;

		public Color tintColor = Color.White;

        public void InitializeEntity(int entityWidth, int entityHeight) {
            InitializeEntity(0f, 0f, entityWidth, entityHeight);    
        }

		public void InitializeEntity(float startX, float startY, int entityWidth, int entityHeight)
		{
			positionVector = new Vector2(startX, startY);

            this.entityWidth = entityWidth;
            this.entityHeight = entityHeight;

            originVector = new Vector2(this.entityWidth / 2,
                                       entityHeight / 2);

            entityBounds = new Rectangle((int)positionVector.X,
                                            (int)positionVector.Y,
                                            entityWidth,
                                            entityHeight);
            InitializeAnimation();
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

        public virtual void InitializeAnimation() { }
        public virtual void HandleAnimation(GameTime gameTime) { }
		public virtual void Update(GameTime gameTime, bool buttonPressed = false) { }
		public virtual void Move(GameTime gameTime, int direction) { }
		public virtual void HandleMovement(GameTime gameTime) { }
	}
}

