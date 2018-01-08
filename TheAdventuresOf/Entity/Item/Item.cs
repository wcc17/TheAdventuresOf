using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class Item
    {
        public float groundLevel;
        public bool itemPickedUp;
        public Rectangle bounds;
        public Vector2 positionVector;
        public bool isActive;
        float dropSpeed;
        float floatSpeed;
        float floatLimit;
        float fadeSpeed;
        float flickerSpeed;
        float flickerLimit; //should be an odd number so that the item fades out one last time
        float flickerIncreaseAmount;
        float disappearTimeLimit;
        float deltaItemFlickerSpeed;
        float alpha;
        bool itemShouldDisappear;
        int flickerMultiplier = -1;
        int flickerCounter = 0;
        Timer disappearTimer;

        public Item(float x, float y, int width, int height, float baseGroundLevel,
                    float dropSpeed, float floatSpeed, float floatLimit, float fadeSpeed, float flickerSpeed,
                    float flickerLimit, float flickerIncreaseAmount, float disappearTimeLimit)
        {
            this.groundLevel = baseGroundLevel;
            this.dropSpeed = dropSpeed;
            this.floatSpeed = floatSpeed;
            this.floatLimit = floatLimit;
            this.fadeSpeed = fadeSpeed;
            this.flickerSpeed = flickerSpeed;
            this.flickerLimit = flickerLimit;
            this.flickerIncreaseAmount = flickerIncreaseAmount;
            this.disappearTimeLimit = disappearTimeLimit;

            disappearTimer = new Timer(this.disappearTimeLimit);
            positionVector = new Vector2(x, y);
            bounds = new Rectangle((int)x, (int)y, width, height);

            alpha = 1.0f;
            isActive = true;

            //so we don't have to keep resetting original coinFlickerSpeed in the Manager
            deltaItemFlickerSpeed = this.flickerSpeed;
        }

        public void Update(GameTime gameTime)
        {
            //if item not picked up, drop the item to the ground (or move it up to the ground)
            //if item not picked up and timer has changed itemShouldDisappear to true, start fading out item, then make inactive
            //if item picked up, fade out above players head, then make inactive
            if (!itemPickedUp)
            {
                handleItemOnGround(gameTime);
            }
            else
            {
                handleItemPickedUp(gameTime);
            }

            if (itemShouldDisappear)
            {
                handleItemFlicker(gameTime);
            }
        }

        public void HandleItemPickedUp()
        {
            itemPickedUp = true;
            alpha = 1.0f; //in case it already started to disappear
        }

        public void Draw(SpriteBatch spriteBatch, Texture2D texture)
        {
            spriteBatch.Draw(texture,
                            positionVector,
                            color: (Color.White * alpha));
        }

        void handleItemOnGround(GameTime gameTime)
        {
            if (positionVector.Y < groundLevel)
            {
                positionVector.Y += (float)(dropSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                bounds.Y = (int)positionVector.Y;
            }
            else if (positionVector.Y > groundLevel)
            {
                positionVector.Y = groundLevel;
                bounds.Y = (int)positionVector.Y;
            }

            if (!itemShouldDisappear)
            {
                handleItemDisappearDelay(gameTime);
            }
        }

        void handleItemDisappearDelay(GameTime gameTime)
        {
            bool timeUp = disappearTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if (timeUp)
            {
                itemShouldDisappear = true;
            }
        }

        void handleItemFlicker(GameTime gameTime)
        {
            alpha += ((float)(deltaItemFlickerSpeed * gameTime.ElapsedGameTime.TotalSeconds) * flickerMultiplier);
            if (alpha <= 0 || alpha >= 1)
            {
                deltaItemFlickerSpeed += flickerIncreaseAmount;
                flickerMultiplier *= -1;
                flickerCounter++;

                if (flickerCounter >= flickerLimit)
                {
                    isActive = false;
                }
            }
        }

        void handleItemPickedUp(GameTime gameTime)
        {
            alpha -= (float)(fadeSpeed * gameTime.ElapsedGameTime.TotalSeconds);
            positionVector.Y -= (float)(floatSpeed * gameTime.ElapsedGameTime.TotalSeconds);

            if (positionVector.Y <= (PlayerManager.Instance.GetPlayerPosition().Y - floatLimit))
            {
                isActive = false;
            }
        }

        public virtual void Draw(SpriteBatch spriteBatch) { }
    }
}
