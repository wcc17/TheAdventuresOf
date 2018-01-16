using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class HealthShieldManager
    {
        private static HealthShieldManager instance;

        ProgressBarManager healthManager;
        ProgressBarManager shieldManager;
        bool shouldDrawShieldManager = false;

        public static HealthShieldManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new HealthShieldManager();
                }
                return instance;
            }
        }

        private HealthShieldManager()
        {
            healthManager = new ProgressBarManager();
            shieldManager = new ProgressBarManager();
        }

        public void Initialize()
        {
            healthManager.Initialize(AssetManager.Instance.progressBarHealthTexture,
                AssetManager.Instance.progressBarFillHealthTexture);
            shieldManager.Initialize(AssetManager.Instance.progressBarShieldTexture,
               AssetManager.Instance.progressBarFillShieldTexture);

            shieldManager.RemoveAll();
        }

        public void InitializeHealthManager(int maxValue, float barXOffset, float barY,
            float textPositionXOffset, float textPositionYOffset, string valueText)
        {
            healthManager.maxValue = maxValue;
            healthManager.barXOffset = barXOffset;
            healthManager.barY = barY;
            healthManager.textPositionXOffset = textPositionXOffset;
            healthManager.textPositionYOffset = textPositionYOffset;
            healthManager.valueText = valueText;
        }

        public void InitializeShieldManager(int maxValue, float barXOffset, float barY,
            float textPositionXOffset, float textPositionYOffset, string valueText)
        {
            shieldManager.maxValue = maxValue;
            shieldManager.barXOffset = barXOffset;
            shieldManager.barY = barY;
            shieldManager.textPositionXOffset = textPositionXOffset;
            shieldManager.textPositionYOffset = textPositionYOffset;
            shieldManager.valueText = valueText;
        }

        public void IncreaseHealthByAmount(int amount)
        {
            //shield is not increased by normal hearts on level. shield can only be healed in store level
            healthManager.IncreaseValueByAmount(amount);
        }

        public void DecreaseHealthByAmount(int amount)
        {
            //if the shield is active
            if(shieldManager.GetValue() > 0)
            {
                //subtract from the shield and if theres any left over
                int difference = 0;
                difference = shieldManager.DecreaseValueByAmount(amount);

                //subtract whats left over from health
                healthManager.DecreaseValueByAmount(difference);
            } else
            {
                //if shield is not active, only subtract from health
                healthManager.DecreaseValueByAmount(amount);
            }

        }

        public void RestoreShieldToMax()
        {
            shieldManager.RestoreToMax();
        }

        public void RestoreHealthToMax()
        {
            healthManager.RestoreToMax();
        }

        public int GetHealth()
        {
            return healthManager.GetValue();
        }

        public void Update()
        {
            if((shieldManager.GetValue() > 0) && (!shouldDrawShieldManager))
            {
                shouldDrawShieldManager = true;
            }
            else if ((shieldManager.GetValue() <= 0) && shouldDrawShieldManager)
            {
                shouldDrawShieldManager = false;
            }
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            healthManager.Draw(spriteBatch);

            if (shouldDrawShieldManager)
            {
                shieldManager.Draw(spriteBatch);
            }
        }
    }
}
