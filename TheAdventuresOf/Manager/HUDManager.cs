using System;
using System.Collections.Generic;
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

        ProgressBarManager levelProgressBarManager;
        Vector2 scorePositionVector;
        Vector2 highScorePositionVector;
        Vector2 coinCountSymbolPositionVector;
        Vector2 coinCountPositionVector;
        Vector2 healthPositionVector;
        Vector2 shieldPositionVector;
        Vector2 levelProgressPositionVector;
        int savedHighScore;
        int levelProgressTotalKills = 0;
		bool isEndlessMode;
        bool isGameLevel;
        bool shouldShowLevelProgress;
        bool isStoreLevel;
        bool isInitialized;

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

        public void Initialize(int currentLevelNumber, bool isEndless, bool isGame, bool isStore) {
            this.isGameLevel = isGame;
            this.isStoreLevel = isStore;
            this.isEndlessMode = isEndless;
            savedHighScore = SaveGameManager.Instance.GetLevelHighScoreInt(currentLevelNumber);

            if ((this.isEndlessMode != isEndless) || (!isInitialized)) {
                initialize(currentLevelNumber, isEndlessMode, isGame, isStore);
            }
            else {
                initializeProgressBars();
            }

        }

        void initialize(int currentLevelNumber, bool isEndless, bool isGame, bool isStore) {
            initializeProgressBars();
            HealthShieldManager.Instance.RestoreHealthToMax();
            HealthShieldManager.Instance.EmptyShield();
            isInitialized = true;
        }

        void initializeProgressBars() {
            float lastTextDrawYPos = 0;
            float textHeight = AssetManager.Instance.font.MeasureString("TestString").Y;
            lastTextDrawYPos = initializeScore(textHeight, lastTextDrawYPos);
            lastTextDrawYPos = initializeCoinCount(textHeight, lastTextDrawYPos);
            shouldShowLevelProgress = !isEndlessMode && isGameLevel;

            if (shouldShowLevelProgress)
            {
                initializeLevelProgress();
            }
            initializeHealthAndShield();
            HealthShieldManager.Instance.RecalculateFills();
        }
        void initializeLevelProgress() {
            levelProgressBarManager = new ProgressBarManager();

            levelProgressPositionVector = new Vector2()
            {
                X = ScreenManager.VIRTUAL_SCREEN_WIDTH
                                 - AssetManager.Instance.progressBarOutlineTexture.Width
                                 - (ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f),
                Y = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f
            };

            levelProgressBarManager.Initialize(AssetManager.Instance.progressBarOutlineTexture,
                                               AssetManager.Instance.progressBarFillLevelTexture,
                                               "Progress:",
                                               levelProgressPositionVector);
            levelProgressBarManager.SetValueAndRecalculate(0);
            levelProgressBarManager.shouldShowValueText = false;
        }

        float initializeScore(float textHeight, float lastTextDrawYPos) {
            scorePositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f,
                                              ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.005f);
            highScorePositionVector = new Vector2(scorePositionVector.X,
                                                  scorePositionVector.Y
                                                    + textHeight - 20);
            if(isEndlessMode) {
                return highScorePositionVector.Y;
            } else {
                return scorePositionVector.Y;
            }
        }

        float initializeCoinCount(float textHeight, float lastTextDrawYPos) {
            float posY;
            if(isStoreLevel) {
                posY = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f;
            } else {
                posY = lastTextDrawYPos + textHeight + (ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.005f);
            }

            coinCountSymbolPositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f, 
                                                        posY);
            coinCountPositionVector = new Vector2(coinCountSymbolPositionVector.X + AssetManager.Instance.goldCoinTexture.Width, 
                                                  coinCountSymbolPositionVector.Y - ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.014f);

            return coinCountPositionVector.Y;
        }

        //is drawn on the right side of the screen 
        void initializeHealthAndShield() {
            //adjust for level progress bar if in normal play
            float healthBarPosY;
            if(shouldShowLevelProgress) {
                healthBarPosY = levelProgressPositionVector.Y 
                    + AssetManager.Instance.progressBarOutlineTexture.Height 
                    + ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f;
            } else {
                healthBarPosY = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f;
            }

            healthPositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH
                                               - AssetManager.Instance.progressBarOutlineTexture.Width
                                               - (ScreenManager.VIRTUAL_SCREEN_WIDTH * 0.01f),
                                              healthBarPosY);
            shieldPositionVector = new Vector2(healthPositionVector.X,
                                               healthPositionVector.Y
                                               + AssetManager.Instance.progressBarOutlineTexture.Height
                                               + ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.01f);

            HealthShieldManager.Instance.Initialize(healthPositionVector, shieldPositionVector);
        }

        public void InitializeLevelProgressBar(int maxTier, Dictionary<int, int> tierKills) {
            levelProgressTotalKills = 0;
            for (int i = 0; i < maxTier; i++) {
                levelProgressTotalKills += tierKills[i];
            }

            levelProgressBarManager.maxValue = levelProgressTotalKills;
        }

        public void UpdateLevelProgressBar(int currentTotalKills) {
            if(currentTotalKills > levelProgressBarManager.GetValue()) {
                levelProgressBarManager.IncreaseValueByAmount(currentTotalKills - levelProgressBarManager.GetValue());
            }
        }

        public void Draw(SpriteBatch spriteBatch) {

            if(!isEndlessMode && (isStoreLevel || isGameLevel)) {
                CoinManager.Instance.DrawCoinCount(spriteBatch,
                                      coinCountSymbolPositionVector,
                                      coinCountPositionVector);
            }

            if(shouldShowLevelProgress) {
				levelProgressBarManager.Draw(spriteBatch);
            }

            if(isGameLevel || isStoreLevel) {
                
                HealthShieldManager.Instance.Draw(spriteBatch);

                if(isGameLevel) {
					HeartManager.Instance.Draw(spriteBatch);
					ScoringManager.Instance.Draw(spriteBatch, scorePositionVector, 
	                                             highScorePositionVector, isEndlessMode,
					                             savedHighScore);
                }
            }

        }
    }
}
