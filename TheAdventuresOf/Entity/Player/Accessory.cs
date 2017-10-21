using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Accessory
    {
        public const int CENTER = 0;
        public const int LEFT_CENTER = 1;

        //because the center of the player's body isn't exactly the center of the texture
        public int baseXOffset;
        public int originPosition;
        public float xOffset;
        public float yOffset;

        public String name;
        Texture2D accessoryTexture;
        Vector2 positionVector;
        Vector2 originVector;
        float rotation;

        public Accessory(string name)
        {
            this.name = name;
        }

        public void InitializeTexture(Texture2D accessoryTexture) {
            this.accessoryTexture = accessoryTexture;

            //Add more positions as necessary
            switch (originPosition)
            {
                case LEFT_CENTER:
                    originVector = new Vector2(0, accessoryTexture.Height / 2);
                    break;
                case CENTER:
                    originVector = new Vector2(accessoryTexture.Width / 2, accessoryTexture.Height / 2);
                    break;
            }
        }

        public void Update(Vector2 playerPosition, float playerWidth, float playerHeight, float playerRotation, bool moveLeft) {
            int directionMultiplier = (moveLeft) ? 1 : -1;

            //match players rotation
            rotation = playerRotation;

            setPosition(playerPosition, playerWidth, playerHeight, directionMultiplier);
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(accessoryTexture, positionVector, effects: SpriteEffects.None, color: Color.White, rotation: rotation, origin: originVector);
        }

        void setPosition(Vector2 playerPosition, float playerWidth, float playerHeight, int directionMultiplier) {
            //the center of the player's head is a point above the origin of the player
            //when the player rotates around its center origin, the position of the head point changes
            //we need to find this position and always assign it to the accessory
            //if we use the trig function here, even if player isn't rotating, the x and y will be the exact position that the center of the helmet should rest at

            //playerPosition is the top left corner of the player
            //get the position of the very center of the player
            Vector2 playerOriginVector = new Vector2(playerPosition.X + (playerWidth / 2), playerPosition.Y + (playerHeight / 2));

            //now we'll use the accessory offsets to get the center point where we want the center of the accessory to sitn before rotation is applied
            Vector2 baseAccessoryPositionVector = new Vector2(playerOriginVector.X + (xOffset * directionMultiplier), playerOriginVector.Y + yOffset);

            //so now we have the center of the accessory position exactly where we want it on the player without rotation
            //now adjust for rotation
            this.positionVector.X = (float)((baseAccessoryPositionVector.X - playerOriginVector.X) * Math.Cos(rotation)
                                            - ((baseAccessoryPositionVector.Y - playerOriginVector.Y) * Math.Sin(rotation)))
                                            + playerOriginVector.X;
            this.positionVector.Y = (float)((baseAccessoryPositionVector.X - playerOriginVector.X) * Math.Sin(rotation)
                                            + ((baseAccessoryPositionVector.Y - playerOriginVector.Y) * Math.Cos(rotation)))
                                            + playerOriginVector.Y;
        }
    }
}
