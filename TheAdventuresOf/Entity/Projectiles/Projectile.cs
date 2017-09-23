using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Projectile : Entity
	{
		public bool isActive;
        public bool isDead;
        public float transparency = 1.0f;
        public float fadeSpeed;

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			if (moveLeft)
			{
				spriteBatch.Draw(texture, 
                                 positionVector, 
                                 color: tintColor, 
                                 effects: SpriteEffects.FlipHorizontally,
                                 rotation: rotation);
			}
			else if (moveRight)
			{
				spriteBatch.Draw(texture,
                                 positionVector, 
                                 color: tintColor,
                                 rotation: rotation);
			}

		}

        /**
         * Can override this method to take steps past setting projectile
         * isActive to false. Ex., bile should disappear
         **/
        public virtual void HandlePostPlayerCollision() {
            isActive = false;
        }

		/**
         * Handle the projectile object fading out on monsters death
         * or on expiration of projectile object
         */
        public virtual void HandleFadeOut(GameTime gameTime) {
			transparency -= (fadeSpeed * ((float)gameTime.ElapsedGameTime.TotalSeconds));
			tintColor = Color.White * transparency;

			//wanted the bile object to hurt player for a short amount of time
			//after monster actually died
			if (transparency < 0.9 && transparency > 0.0)
			{
				isActive = false;
			}
			else if (transparency <= 0.0)
			{
				isDead = true;
			}
        }
	}
}

