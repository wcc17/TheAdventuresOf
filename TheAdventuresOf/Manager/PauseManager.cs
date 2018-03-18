using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf {
    
    public class PauseManager {

        private static PauseManager instance;
        public const string pausedMessageText = "Paused.";
        public const string quitMessageText = "WARNING! If you quit all progress will be lost!";
        public const float quitMessageFontScale = 0.7f;
        public const float pausedMessageFontScale = 1.0f;

        bool isPaused;
        Vector2 quitMessagePositionVector;
        Vector2 pausedTextPositionVector;
        Vector2 basePositionVector = new Vector2(0, 0);

        public static PauseManager Instance {
            get {
                if (instance == null) {
                    instance = new PauseManager();
                }
                return instance;
            }
        }
        private PauseManager() { }

        public void Initialize() {
            Vector2 quitTextSize = AssetManager.Instance.font.MeasureString(quitMessageText) * quitMessageFontScale;
            Vector2 pausedTextSize = AssetManager.Instance.font.MeasureString(pausedMessageText) * pausedMessageFontScale;

            quitMessagePositionVector = new Vector2((ScreenManager.VIRTUAL_SCREEN_WIDTH / 2) - (quitTextSize.X / 2),
                                                    ScreenManager.VIRTUAL_SCREEN_HEIGHT / 2);
            pausedTextPositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH / 2 - (pausedTextSize.X / 2),
                                                   pausedTextSize.Y);
        }

        public void Update(GameTime gameTime, GameController gameController, bool isGameActive) {
            //TODO: this currently isn't doing anything when game is no longer active. should pause game when window isn't active
            if (!isGameActive) {
                gameController.isPaused = true;
            }

            if (gameController.pauseButtonPressed) {
                gameController.isPaused = !gameController.isPaused;
            }

            TheAdventuresOf.showMouse = gameController.isPaused;
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(AssetManager.Instance.transparentBlackBackgroundTexture, basePositionVector);

            TextManager.Instance.DrawOutlinedString(spriteBatch, 
                                                    pausedMessageText, 
                                                    pausedTextPositionVector, 
                                                    Color.White, 
                                                    pausedMessageFontScale);

            TextManager.Instance.DrawOutlinedString(spriteBatch,
                                                    quitMessageText,
                                                    quitMessagePositionVector,
                                                    Color.White,
                                                    quitMessageFontScale);
        }

        public bool HandleQuit(GameTime gameTime, GameController gameController) {
            if (gameController.quitButtonPressed) {
                return true;
            }

            return false;
        }

        public bool IsPaused() {
            return isPaused;
        }
    }
}
