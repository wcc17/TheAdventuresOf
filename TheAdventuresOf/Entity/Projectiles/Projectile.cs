using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Projectile : Entity
	{
		public bool isActive;

		public override void Draw(SpriteBatch spriteBatch, Texture2D texture)
		{
			base.Draw(spriteBatch, texture);

			if (moveLeft)
			{
				spriteBatch.Draw(texture, positionVector, color: tintColor, effects: SpriteEffects.FlipHorizontally);
			}
			else if (moveRight)
			{
				spriteBatch.Draw(texture, positionVector, color: tintColor);
			}

		}

        /**
         * Can override this method to take steps past setting projectile
         * isActive to false. Ex., bile should disappear
         **/
        public virtual void HandlePostPlayerCollision() {
            isActive = false;
        }
	}
}

