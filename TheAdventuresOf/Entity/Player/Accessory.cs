using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Accessory
    {
        Vector2 positionVector;
        Texture2D accessoryTexture;
        public float xOffset;
        public float yOffset;

        public Accessory(Texture2D accessoryTexture, Vector2 positionVector)
        {
            this.accessoryTexture = accessoryTexture;
            this.positionVector = positionVector;

            //TODO: this should most definitley be loaded in XML
            xOffset = 18;
            yOffset = 25;
        }

        //TODO: should this have gameTime?
        public void Update(GameTime gameTime, Vector2 playerPosition) {
            this.positionVector = playerPosition;

            this.positionVector.X -= xOffset;
            this.positionVector.Y -= yOffset;
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(accessoryTexture, positionVector);
        }
    }
}
