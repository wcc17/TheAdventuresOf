using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{

    public class CutsceneManager
    {
        static CutsceneManager instance;
        static float topLetterBoxSize = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.23f;
        static float bottomLetterBoxSize = ScreenManager.VIRTUAL_SCREEN_HEIGHT * 0.17f;
        static float letterBoxMoveSpeed = 175.0f;
        static float topLetterBoxMoveSpeed;
        static float topLetterBoxDistanceMoved;
        static float bottomLetterBoxDistanceMoved;

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

            //we have a letterBoxMoveSpeed
            //the top Letter box needs to move faster to reach the same point
            topLetterBoxMoveSpeed = ((topLetterBoxSize) * (letterBoxMoveSpeed)) / (bottomLetterBoxSize);
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
                topLetterBoxDistanceMoved = 0f;
                bottomLetterBoxDistanceMoved = 0f;
                isLetterBoxingOut = true;
            }

            handleLetterBoxing(gameTime);
        }

        public void Draw(SpriteBatch spriteBatch) {
            if(isLetterBoxingIn || isLetterBoxingOut || (topLetterBoxDistanceMoved > 0)) {
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
            topLetterBoxDistanceMoved = 0f;
            bottomLetterBoxDistanceMoved = 0f;
        }

        void handleLetterBoxing(GameTime gameTime)
        {
            if (isLetterBoxingIn || isLetterBoxingOut)
            {
                int multiplier = 1;
                if(isLetterBoxingOut) {
                    multiplier = -1;
                }

                if(topLetterBoxDistanceMoved < topLetterBoxSize) {
                    float distanceToMove = (float)(gameTime.ElapsedGameTime.TotalSeconds * topLetterBoxMoveSpeed);
                    topLetterBoxDistanceMoved += distanceToMove;

                    topBarPositionVector.Y += (distanceToMove * multiplier);
                } 

                if(bottomLetterBoxDistanceMoved < bottomLetterBoxSize) {
                    float distanceToMove = (float)(gameTime.ElapsedGameTime.TotalSeconds * letterBoxMoveSpeed);
                    bottomLetterBoxDistanceMoved += distanceToMove;

                    bottomBarPositionVector.Y -= (distanceToMove * multiplier);
                }

                if ((topLetterBoxDistanceMoved >= topLetterBoxSize) 
                    && (bottomLetterBoxDistanceMoved >= bottomLetterBoxSize)) {
                    isLetterBoxingIn = false;
                    isLetterBoxingOut = false;
                }
            }
        }
    }
}
