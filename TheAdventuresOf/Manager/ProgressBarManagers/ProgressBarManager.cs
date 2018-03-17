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
        public string valueText;

        int value; //this manager's value (its health, its shield, etc)
        Rectangle barFillSourceRectangle;

        public void Initialize(Texture2D progressBarTexture, Texture2D progressBarFillTexture)
        {
            this.progressBarTexture = progressBarTexture;
            this.progressBarFillTexture = progressBarFillTexture;

            value = maxValue;
            barFillSourceRectangle = new Rectangle(0, 0, progressBarFillTexture.Width, progressBarFillTexture.Height);
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

        public void Draw(SpriteBatch spriteBatch, Vector2 positionVector)
        {
            Logger.Instance.AddOrUpdateValue(valueText + ": ", value.ToString());

            Vector2 textPositionVector = new Vector2(positionVector.X + ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f,
                                                     positionVector.Y + ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f);

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
