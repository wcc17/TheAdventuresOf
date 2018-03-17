using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf {
    
    public class PauseManager {

        private static PauseManager instance;
        public const string QUIT_MESSAGE_TEXT = "WARNING! If you quit all progress will be lost!";

        bool isPaused;
        Vector2 quitMessagePositionVector;

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
            Vector2 textSize = AssetManager.Instance.font.MeasureString(QUIT_MESSAGE_TEXT);
            quitMessagePositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH / 2 - (textSize.X / 4),
                                                    ScreenManager.VIRTUAL_SCREEN_HEIGHT / 2);
        }

        public void Update(GameTime gameTime, GameController gameController, bool isGameActive) {
            //TODO: this currently isn't doing anything when game is no longer active. should pause game when window isn't active
            if (!isGameActive) {
                gameController.isPaused = true;
            }

            if (gameController.pauseButtonPressed) {
                gameController.isPaused = !gameController.isPaused;
            }

            isPaused = gameController.isPaused;
            if(isPaused) {
                TheAdventuresOf.showMouse = true;
                TextManager.Instance.AddOrUpdateIndexedText(quitMessagePositionVector.X,
                                                                quitMessagePositionVector.Y,
                                                                QUIT_MESSAGE_TEXT,
                                                                Color.White,
                                                                GlobalTextIndexConstants.PAUSE_SCREEN_QUIT_MESSAGE_TEXT_INDEX);
            } else {
                TheAdventuresOf.showMouse = false;
                TextManager.Instance.RemoveText(GlobalTextIndexConstants.PAUSE_SCREEN_QUIT_MESSAGE_TEXT_INDEX);
            }
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
