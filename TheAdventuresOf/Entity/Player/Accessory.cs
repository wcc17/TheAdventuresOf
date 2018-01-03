using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Accessory
    {
        public enum OriginPosition {
            CENTER = 0,
            LEFT_CENTER = 1,
            RIGHT_CENTER = 2
        }

        //because the center of the player's body isn't exactly the center of the texture
        public OriginPosition originPosition;
        public int baseXOffset;
        public float xOffset;
        public float yOffset;
        public bool doesDamage;
        public bool takesDamage;
        public bool drawBeforePlayer;

        public String name;
        Texture2D accessoryTexture;
        Vector2 positionVector;
        Vector2 originVector;
        Rectangle accessoryBounds;
        float rotation;
        SpriteEffects spriteEffect;
        Color tintColor;

        public Accessory(string name)
        {
            this.name = name;
        }

        public void InitializeTexture(Texture2D accessoryTexture) {
            this.accessoryTexture = accessoryTexture;

            setOrigin();

            accessoryBounds = new Rectangle(0, 0, accessoryTexture.Width, accessoryTexture.Height);
        }

        public void Update(Vector2 playerPosition, float playerWidth, 
                           float playerHeight, float playerRotation, bool moveLeft, 
                           Color playerTintColor) {
            //match players transparency
            tintColor = playerTintColor;

            //match players rotation
            rotation = playerRotation;

            setPosition(playerPosition, playerWidth, playerHeight, moveLeft);
        }

        public void Draw(SpriteBatch spriteBatch, bool moveLeft) {
            spriteBatch.Draw(accessoryTexture, positionVector, effects: spriteEffect, color: tintColor, rotation: rotation, origin: originVector);
        }

        public bool CheckAccessoryCollision(Rectangle monsterBounds) {
            if (monsterBounds.Intersects(accessoryBounds)) {
                return true;
            }

            return false;
        }

        void setPosition(Vector2 playerPosition, float playerWidth, float playerHeight, bool moveLeft) {
            spriteEffect = moveLeft ? SpriteEffects.FlipHorizontally : SpriteEffects.None;
            int directionMultiplier = (moveLeft) ? 1 : -1;

            //playerPosition is the top left corner of the player
            //get the position of the very center of the player
            Vector2 playerOriginVector = new Vector2(playerPosition.X + (playerWidth / 2), playerPosition.Y + (playerHeight / 2));

            //now we'll use the accessory offsets to get the center point where we want the center of the accessory to sitn before rotation is applied
            float baseAccessoryPositionX = playerOriginVector.X + (xOffset * directionMultiplier);
            if (moveLeft && originPosition != OriginPosition.CENTER) {
                baseAccessoryPositionX -= accessoryBounds.Width;
            }
            Vector2 baseAccessoryPositionVector = new Vector2(baseAccessoryPositionX, playerOriginVector.Y + yOffset);

            //so now we have the center of the accessory position exactly where we want it on the player without rotation
            //now adjust for rotation
            this.positionVector.X = (float)((baseAccessoryPositionVector.X - playerOriginVector.X) * Math.Cos(rotation)
                                            - ((baseAccessoryPositionVector.Y - playerOriginVector.Y) * Math.Sin(rotation)))
                                            + playerOriginVector.X;
            this.positionVector.Y = (float)((baseAccessoryPositionVector.X - playerOriginVector.X) * Math.Sin(rotation)
                                            + ((baseAccessoryPositionVector.Y - playerOriginVector.Y) * Math.Cos(rotation)))
                                            + playerOriginVector.Y;

            accessoryBounds.X = (int)positionVector.X;
            accessoryBounds.Y = (int)positionVector.Y;
        }

        public void setOrigin()
        {
            //Add more positions as necessary
            switch (originPosition)
            {
                case OriginPosition.RIGHT_CENTER:
                    originVector = new Vector2(accessoryBounds.Width, accessoryTexture.Height / 2);
                    break;
                case OriginPosition.LEFT_CENTER:
                    originVector = new Vector2(0, accessoryTexture.Height / 2);
                    break;
                case OriginPosition.CENTER:
                    originVector = new Vector2(accessoryTexture.Width / 2, accessoryTexture.Height / 2);
                    break;
            }
        }
    }
}
