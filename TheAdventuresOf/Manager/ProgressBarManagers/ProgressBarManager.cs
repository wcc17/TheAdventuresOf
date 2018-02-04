using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf {

    public class ProgressBarManager
    {
        Vector2 zeroPositionVector = new Vector2(0, 0);

        public Texture2D progressBarTexture;
        public Texture2D progressBarFillTexture;
        public int maxValue; //the highest this manager's value can go (max health, max shield, etc.)
        public float barXOffset;
        public float barY;
        public float textPositionXOffset;
        public float textPositionYOffset;
        public string valueText;

        int value; //this manager's value (its health, its shield, etc)
        Vector2 positionVector;
        Vector2 textPositionVector;
        Rectangle barFillSourceRectangle;

        public void Initialize(Texture2D progressBarTexture, Texture2D progressBarFillTexture)
        {
            this.progressBarTexture = progressBarTexture;
            this.progressBarFillTexture = progressBarFillTexture;

            value = maxValue;
            positionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH - (progressBarTexture.Width + barXOffset), barY);
            barFillSourceRectangle = new Rectangle(0, 0, progressBarFillTexture.Width, progressBarFillTexture.Height);
            textPositionVector = new Vector2(positionVector.X + textPositionXOffset, positionVector.Y + textPositionYOffset);
        }

        public int DecreaseValueByAmount(int amount)
        {
            value -= amount;
            int difference = enforceLimits();
            recalculateBarFill();

            return difference;
        }

        public int IncreaseValueByAmount(int amount)
        {
            value += amount;
            int difference = enforceLimits();
            recalculateBarFill();

            return difference;
        }

        public void RestoreToMax()
        {
            value = maxValue;
            recalculateBarFill();
        }

        public void RemoveAll()
        {
            value = 0;
            recalculateBarFill();
        }

        public int GetValue()
        {
            return value;
        }

        public void SetValue(int value) {
            this.value = value;
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            Logger.Instance.AddOrUpdateValue(valueText + ": ", value.ToString());

            spriteBatch.Draw(progressBarFillTexture, positionVector, sourceRectangle: barFillSourceRectangle);
            spriteBatch.Draw(progressBarTexture, positionVector);
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   value + "/" + maxValue,
                                   textPositionVector,
                                   Color.Black,
                                   0,
                                   zeroPositionVector,
                                   0.5f,
                                   SpriteEffects.None,
                                   0);
        }

        int enforceLimits()
        {
            int difference = 0;

            if (value > maxValue)
            {
                difference = value - maxValue;
                value = maxValue;
            }
            else if (value < 0)
            {
                difference = Math.Abs(value);
                value = 0;
            }

            return difference;
        }

        void recalculateBarFill()
        {
            float fullWidth = progressBarFillTexture.Width;
            float remainingHealth = maxValue - value;
            float newWidth = fullWidth - (remainingHealth * (fullWidth / maxValue));

            barFillSourceRectangle.Width = (int)newWidth;
        }
    }
}
