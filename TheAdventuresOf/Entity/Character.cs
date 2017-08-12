using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	/**
	 * Handles things that are common between Monsters and 
	 * Player. Mostly characters in the game that move, act, 
	 * or need rotation. More complex than an entity.
	 * 
	 **/
	public class Character : Entity
	{
		public float animationSpeed;

		public Vector2 originVector;

		public int frameCount;
		public Animation standAnimation;
		public Animation walkAnimation;
		public Animation currentAnimation;

		public bool isDying;
		public bool isDead;

		public virtual void InitializeAnimation() { }
		public virtual void HandleAnimation(GameTime gameTime) { }

		public void InitializeCharacter(float startX, float startY, int characterWidth, int characterHeight)
		{
			InitializeEntity(startX, startY);

			entityWidth = characterWidth;
			entityHeight = characterHeight;

			originVector = new Vector2(characterWidth / 2, 
			                           characterHeight / 2);

			entityBounds = new Rectangle((int)positionVector.X, 
			                                (int)positionVector.Y, 
			                                entityWidth, 
			                                entityHeight);
			InitializeAnimation();
		}

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
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
	
