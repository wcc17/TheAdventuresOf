using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf {

    public class ProgressBarManager
    {
        Vector2 zeroPositionVector = new Vector2(0, 0);
        Vector2 valueTextPositionVector;
		Vector2 labelTextPositionVector;
        Vector2 positionVector;

        public Texture2D progressBarTexture;
        public Texture2D progressBarFillTexture;
        public int maxValue; //the highest this manager's value can go (max health, max shield, etc.)
        public string valueText;
        public string label;
        public bool shouldShowValueText = true;
        bool isInitialized = false;

        int value; //this manager's value (its health, its shield, etc)
        Rectangle barFillSourceRectangle;

        public void Initialize(Texture2D progressBarTexture, Texture2D progressBarFillTexture, String label, Vector2 positionVector)
        {
            this.progressBarTexture = progressBarTexture;
            this.progressBarFillTexture = progressBarFillTexture;
			this.positionVector = positionVector;
            this.label = label;

            value = maxValue;
            barFillSourceRectangle = new Rectangle(0, 0, progressBarFillTexture.Width, progressBarFillTexture.Height);
            valueTextPositionVector = new Vector2(positionVector.X + ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f,
                                                  positionVector.Y + ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f);
            labelTextPositionVector = new Vector2(positionVector.X - (AssetManager.Instance.font.MeasureString(label).X / 2) - (ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.004f),
                                                  positionVector.Y + ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.009f);
            isInitialized = true;
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

        public void SetValueAndRecalculate(int value) {
            this.value = value;
            recalculateBarFill();
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            if(isInitialized) {
                Logger.Instance.AddOrUpdateValue(valueText + ": ", value.ToString());

                spriteBatch.Draw(progressBarFillTexture, positionVector, sourceRectangle: barFillSourceRectangle);
                spriteBatch.Draw(progressBarTexture, positionVector);

                if (shouldShowValueText)
                {
                    spriteBatch.DrawString(AssetManager.Instance.font,
                                           value + "/" + maxValue,
                                           valueTextPositionVector,
                                           Color.Black,
                                           0,
                                           zeroPositionVector,
                                           0.5f,
                                           SpriteEffects.None,
                                           0);
                }

                spriteBatch.DrawString(AssetManager.Instance.font,
                                      label,
                                       labelTextPositionVector,
                                      Color.White,
                                      0,
                                      zeroPositionVector,
                                      0.5f,
                                      SpriteEffects.None,
                                      0);
            }
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
