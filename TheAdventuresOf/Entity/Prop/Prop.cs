using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class Prop
    {
        public Vector2 positionVector;
        public Rectangle bounds;
        public Texture2D texture;

        public Prop() { }

        public Prop(Vector2 positionVector, Rectangle bounds, Texture2D texture)
        {
            this.positionVector = positionVector;
            this.bounds = bounds;
            this.texture = texture;
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.Draw(texture, positionVector);
        }

        public bool CheckCollision(Rectangle entityBounds)
        {
            if (bounds.Intersects(entityBounds))
            {
                return true;
            }

            return false;
        }
    }
}
