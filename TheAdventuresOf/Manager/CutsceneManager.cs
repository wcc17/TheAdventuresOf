using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{

    public class CutsceneManager
    {
        static CutsceneManager instance;
        static float letterBoxSize = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.17f;
        static float letterBoxMoveSpeed = 175.0f;
        static float letterBoxDistanceMoved;

        Texture2D blackBackgroundTexture;
        Vector2 topBarPositionVector;
        Vector2 bottomBarPositionVector;
        bool shouldStartLetterboxIn;
        bool shouldStartLetterboxOut;

        public bool isLetterBoxingIn;
        public bool isLetterBoxingOut;

        public static CutsceneManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new CutsceneManager();
                }
                return instance;
            }
        }
        private CutsceneManager() {
            blackBackgroundTexture = AssetManager.Instance.blackBackgroundTexture;
            ResetLetterbox();
        }

        public void Update(GameTime gameTime)
        {
            if (shouldStartLetterboxIn)
            {
                shouldStartLetterboxIn = false;
                ResetLetterbox();
                isLetterBoxingIn = true;
            }

            if (shouldStartLetterboxOut)
            {
                shouldStartLetterboxOut = false;
                letterBoxDistanceMoved = 0f;
                isLetterBoxingOut = true;
            }

            handleLetterBoxing(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {
            if(isLetterBoxingIn || isLetterBoxingOut || (letterBoxDistanceMoved > 0)) {
                spriteBatch.Draw(blackBackgroundTexture, topBarPositionVector);
                spriteBatch.Draw(blackBackgroundTexture, bottomBarPositionVector);
            }
        }

        public void SetShouldLetterboxIn()
        {
            shouldStartLetterboxIn = true;
        }

        public void SetShouldLetterboxOut()
        {
            shouldStartLetterboxOut = true;
        }

        public void ResetLetterbox()
        {
            topBarPositionVector = new Vector2(0, -ScreenManager.VIRTUAL_SCREEN_HEIGHT);
            bottomBarPositionVector = new Vector2(0, ScreenManager.VIRTUAL_SCREEN_HEIGHT);
            letterBoxDistanceMoved = 0f;
        }

        void handleLetterBoxing(GameTime gameTime)
        {
            if (isLetterBoxingIn || isLetterBoxingOut)
            {
                int multiplier = 1;
                if(isLetterBoxingOut) {
                    multiplier = -1;
                }

                if(letterBoxDistanceMoved < letterBoxSize) {
                    float distanceToMove = (float)(gameTime.ElapsedGameTime.TotalSeconds * letterBoxMoveSpeed);
                    letterBoxDistanceMoved += distanceToMove;

                    topBarPositionVector.Y += (distanceToMove * multiplier);
                    bottomBarPositionVector.Y -= (distanceToMove * multiplier);
                } else {
                    isLetterBoxingIn = false;
                    isLetterBoxingOut = false;
                }
            }
        }

    }
}
