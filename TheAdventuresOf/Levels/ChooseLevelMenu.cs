using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ChooseLevelMenu
    {
        //TODO: HARDCODED NUMBER
        public Timer buttonDelayTimer = new Timer(0.2f);
        public bool disableButtonPress;

        public bool proceedToMainMenuState;
        public bool proceedToLevelState;
        public int currentLevelSelected = 1;

        Vector2 levelPreviewOutlinePositionVector;
        Vector2 levelPreviewPositionVector;
        Vector2 basePositionVector;
        List<Texture2D> previewTextures;
        Texture2D currentPreviewTexture;

        public void LoadMenu()
        {
            previewTextures = AssetManager.Instance.chooseLevelPreviewTextures;

            //assuming at least one preview texture will be loaded and that they'll all be the same 
            try {
                float previewTextureWidth = previewTextures[0].Width;
                float previewTextureHeight = previewTextures[0].Height;
                levelPreviewPositionVector = new Vector2((ScreenManager.FULL_SCREEN_WIDTH / 2) - (previewTextureWidth / 2), (ScreenManager.FULL_SCREEN_HEIGHT / 2) - (previewTextureHeight / 2));

                float previewOutlineTextureWidth = AssetManager.Instance.chooseLevelPreviewOutlineTexture.Width;
                float previewOutlineTextureHeight = AssetManager.Instance.chooseLevelPreviewOutlineTexture.Height;
                float outlineWidthDiff = previewOutlineTextureWidth - previewTextureWidth;
                float outlineHeightDiff = previewOutlineTextureHeight - previewTextureHeight;
                levelPreviewOutlinePositionVector = new Vector2(levelPreviewPositionVector.X - (outlineWidthDiff / 2), levelPreviewPositionVector.Y - (outlineHeightDiff / 2));
            } catch (IndexOutOfRangeException e) {
                Logger.WriteToConsole(e.ToString());
                Logger.WriteToConsole("No preview textures loaded");
            }

            basePositionVector = new Vector2(0, 0);

            changePreviewTexture();
        }

        public void Update(GameTime gameTime, ChooseLevelMenuController chooseLevelMenuController)
        {
            chooseLevelMenuController.Update(gameTime);

            if (!disableButtonPress)
            {
                if (chooseLevelMenuController.chooseButtonPressed)
                {
                    proceedToLevelState = true;

                }
                else if (chooseLevelMenuController.leftArrowButtonPressed)
                {
                    if (currentLevelSelected > GameManager.levelNumberMin)
                    {
                        currentLevelSelected--;
                    }
                    else
                    {
                        currentLevelSelected = GameManager.levelNumberLimit;
                    }

                    changePreviewTexture();

                }
                else if (chooseLevelMenuController.rightArrowButtonPressed)
                {
                    if (currentLevelSelected < GameManager.levelNumberLimit)
                    {
                        currentLevelSelected++;
                    }
                    else
                    {
                        currentLevelSelected = GameManager.levelNumberMin;
                    }

                    changePreviewTexture();

                }
                else if (chooseLevelMenuController.backArrowButtonPressed)
                {
                    proceedToMainMenuState = true;
                }

                //if any button is pressed, delay the next one
                if (chooseLevelMenuController.isButtonPressed)
                {
                    disableButtonPress = true;
                    buttonDelayTimer.Reset();
                }
            }
            else
            {
                bool isTimeUp = buttonDelayTimer.IsTimeUp(gameTime.ElapsedGameTime);
                if(isTimeUp) {
                    disableButtonPress = false;
                }
            }

        }

        public void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.GraphicsDevice.Clear(Color.White);
            spriteBatch.Draw(AssetManager.Instance.chooseLevelPreviewOutlineTexture, levelPreviewOutlinePositionVector, Color.White);

            if(SaveGameManager.Instance.IsLevelUnlocked(currentLevelSelected)) {
                spriteBatch.Draw(currentPreviewTexture, levelPreviewPositionVector, Color.White);
            } else {
                spriteBatch.Draw(AssetManager.Instance.chooseLevelLockedPreviewTexture, levelPreviewPositionVector, Color.White);
            }
        }

        void changePreviewTexture() {
            currentPreviewTexture = previewTextures.Find(pT => pT.Name.Equals(currentLevelSelected.ToString()));
        }
    }
}
