using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    class Heart : Item
    {
        public int healthValue;

        public Heart(float x, float y, int width, int height, int healthValue, float baseGroundLevel,
                    float dropSpeed, float floatSpeed, float floatLimit, float fadeSpeed, float flickerSpeed,
                    float flickerLimit, float flickerIncreaseAmount, float disappearTimeLimit)
            : base(x, y, width, height, baseGroundLevel, dropSpeed, floatSpeed, floatLimit,
                  fadeSpeed, flickerSpeed, flickerLimit, flickerIncreaseAmount, disappearTimeLimit)
        {
            //regular heart X is master, adjust small heartX around that value
            if (healthValue == HeartManager.smallHeartHealthValue)
            {
                this.groundLevel += (AssetManager.Instance.heartTexture.Height - AssetManager.Instance.heartSmallTexture.Height);
            }

            this.healthValue = healthValue;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            if(healthValue == HeartManager.heartHealthValue)
            {
                base.Draw(spriteBatch, AssetManager.Instance.heartTexture);
            }
            else if(healthValue == HeartManager.smallHeartHealthValue)
            {
                base.Draw(spriteBatch, AssetManager.Instance.heartSmallTexture);
            }
            else
            {
                throw new Exception("invalid health amount in Heart.cs");
            }
        }
    }
}
