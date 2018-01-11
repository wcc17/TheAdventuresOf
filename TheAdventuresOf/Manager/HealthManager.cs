using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class HealthManager
    {
        private static HealthManager instance;
        public static int maxHealth;
        public static float healthBarXOffset;
        public static float healthBarY;
        public static float healthTextPositionXOffset;
        public static float healthTextPositionYOffset;

        public int health;
        Vector2 healthPositionVector;
        Vector2 healthTextPositionVector;
        Rectangle healthBarFillSourceRectangle;
        Vector2 zeroPositionVector = new Vector2(0, 0);

        public static HealthManager Instance {
            get {
                if (instance == null) {
                    instance = new HealthManager();
                }

                return instance;
            }
        }
        private HealthManager() { }

        public void Initialize() {
            health = maxHealth;
            healthPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH - (AssetManager.Instance.progressBarTexture.Width + healthBarXOffset), healthBarY);
            healthBarFillSourceRectangle = new Rectangle(0, 0,
                                                         AssetManager.Instance.progressBarFillTexture.Width,
                                                         AssetManager.Instance.progressBarFillTexture.Height);
            healthTextPositionVector = new Vector2(healthPositionVector.X + healthTextPositionXOffset,
                                                   healthPositionVector.Y + healthTextPositionYOffset);
        }

        public void DecreaseHealthByAmount(int amount) {
            health -= amount;
            enforceHealthLimits();
            recalculateHealthBarFill();
        }

        public void IncreaseHealthByAmount(int amount)
        {
            health += amount;
            enforceHealthLimits();
            recalculateHealthBarFill();
        }

        public void RestoreAllHealth()
        {
            health = maxHealth;
            recalculateHealthBarFill();
        }

        void enforceHealthLimits()
        {
            if(health > maxHealth)
            {
                health = maxHealth;
            }
            else if(health < 0)
            {
                health = 0;
            }
        }

        public int GetHealth() {
            return this.health;
        }

        void recalculateHealthBarFill()
        {
            Logger.Instance.AddOrUpdateValue("Health: ", health.ToString());

            float fullWidth = AssetManager.Instance.progressBarFillTexture.Width;
            float remainingHealth = maxHealth - health;
            float newWidth = fullWidth - (remainingHealth * (fullWidth / maxHealth));

            healthBarFillSourceRectangle.Width = (int)newWidth;
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.Draw(AssetManager.Instance.progressBarFillTexture, healthPositionVector, sourceRectangle: healthBarFillSourceRectangle);
            spriteBatch.Draw(AssetManager.Instance.progressBarTexture, healthPositionVector);
            spriteBatch.DrawString(AssetManager.Instance.font,
                                   health + "/" + maxHealth,
                                   healthTextPositionVector,
                                   Color.Black,
                                   0,
                                   zeroPositionVector,
                                   0.5f,
                                   SpriteEffects.None,
                                   0);
        }
    }
}
