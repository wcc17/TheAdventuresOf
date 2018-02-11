using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    /**
     * Mostly just for drawing these things (coins, health, whatever)
     * They need to be updated in other places because of the nature of 
     * how things work. But I like for them to be drawn here so they 
     * can be drawn in relation to each other
     */
    public class HUDManager
    {
        private static HUDManager instance;

        Vector2 scorePositionVector;
        Vector2 highScorePositionVector;
        Vector2 coinCountSymbolPositionVector;
        Vector2 coinCountPositionVector;
        Vector2 healthPositionVector;
        Vector2 shieldPositionVector;
        int savedHighScore;
        bool isEndlessMode;

        public static HUDManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new HUDManager();
                }
                return instance;
            }
        }

        private HUDManager() { }

        public void Initialize(int currentLevelNumber, bool isEndlessMode) {
            this.isEndlessMode = isEndlessMode;
            savedHighScore = SaveGameManager.Instance.GetLevelHighScoreInt(currentLevelNumber);

            float lastTextDrawYPos = 0;
            float textHeight = AssetManager.Instance.font.MeasureString("TestString").Y;
            lastTextDrawYPos = initializeScore(textHeight, lastTextDrawYPos);
            lastTextDrawYPos = initializeCoinCount(textHeight, lastTextDrawYPos);
            initializeHealthAndShield();
        }

        float initializeScore(float textHeight, float lastTextDrawYPos) {
            scorePositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH * 0.01f,
                                              ScreenManager.FULL_SCREEN_HEIGHT * 0.005f);
            highScorePositionVector = new Vector2(scorePositionVector.X,
                                                  scorePositionVector.Y
                                                    + textHeight
                                                    + ScreenManager.FULL_SCREEN_HEIGHT
                                                    * 0.01f);
            if(isEndlessMode) {
                return highScorePositionVector.Y;
            } else {
                return scorePositionVector.Y;
            }
        }

        float initializeCoinCount(float textHeight, float lastTextDrawYPos) {
            coinCountSymbolPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH * 0.01f, 
                                                        lastTextDrawYPos + textHeight + ScreenManager.FULL_SCREEN_HEIGHT * 0.005f);
            coinCountPositionVector = new Vector2(coinCountSymbolPositionVector.X 
                                                  + AssetManager.Instance.goldCoinTexture.Width, 
                                                  coinCountSymbolPositionVector.Y);

            return coinCountPositionVector.Y;
        }

        //is drawn on the right side of the screen 
        void initializeHealthAndShield() {
            healthPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH 
                                               - HealthShieldManager.Instance.GetHealthBarWidth()
                                               - (ScreenManager.FULL_SCREEN_WIDTH * 0.01f), 
                                               ScreenManager.FULL_SCREEN_HEIGHT * 0.01f);
            shieldPositionVector = new Vector2(healthPositionVector.X,
                                               healthPositionVector.Y
                                               + HealthShieldManager.Instance.GetShieldBarHeight()
                                               + ScreenManager.FULL_SCREEN_HEIGHT * 0.01f);
        }

        public void Draw(SpriteBatch spriteBatch) {

            CoinManager.Instance.DrawCoinCount(spriteBatch, 
                                      coinCountSymbolPositionVector, 
                                      coinCountPositionVector);
            HeartManager.Instance.Draw(spriteBatch);
            ScoringManager.Instance.Draw(spriteBatch, scorePositionVector, 
                                         highScorePositionVector, isEndlessMode,
                                         savedHighScore);
            HealthShieldManager.Instance.Draw(spriteBatch, 
                                              healthPositionVector, 
                                              shieldPositionVector);

        }
    }
}
