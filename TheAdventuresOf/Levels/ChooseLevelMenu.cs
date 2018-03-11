using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ChooseLevelMenu
    {
        //TODO: HARDCODED NUMBER
        public Timer initialButtonDelayTimer = new Timer(0.8f); //so that no buttons are accidentally pressed when opening menu
        public Timer buttonDelayTimer = new Timer(0.2f); //delay after pressing any button so we don't accidentally press twice
        public bool disableButtonPress;

        public bool proceedToMainMenuState;
        public bool proceedToLevelState;
        public bool proceedToEndlessLevelState;
        public int currentLevelSelected = 1;

        Vector2 levelPreviewOutlinePositionVector;
        public Vector2 levelPreviewPositionVector;
        Vector2 basePositionVector;
        Vector2 currentLevelTextPositionVector;
        Vector2 currentLevelHighScoreTextPositionVector;
        List<Texture2D> previewTextures;
        Texture2D currentPreviewTexture;
        string currentLevelString = "Level 1";
        string currentLevelHighScoreString = "High Score: 0";

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

            float currentLevelTextX = levelPreviewOutlinePositionVector.X
               + AssetManager.Instance.chooseLevelPreviewOutlineTexture.Width
               - AssetManager.Instance.font.MeasureString(currentLevelString).X;
            float currentLevelTextY = levelPreviewOutlinePositionVector.Y 
               - AssetManager.Instance.font.MeasureString(currentLevelString).Y;
            basePositionVector = new Vector2(0, 0);
            float currentLevelHighScoreTextX = levelPreviewPositionVector.X;
            float currentLevelHighScoreTextY = currentLevelTextY;
            basePositionVector = new Vector2(0, 0);
            currentLevelTextPositionVector = new Vector2(currentLevelTextX, currentLevelTextY);
            currentLevelHighScoreTextPositionVector = new Vector2(currentLevelHighScoreTextX, currentLevelHighScoreTextY);

            setLevelHighscoreString();
            changePreviewTexture();
        }

        public void Update(GameTime gameTime, ChooseLevelMenuController chooseLevelMenuController)
        {
            if(initialButtonDelayTimer.IsTimeUp(gameTime.ElapsedGameTime)) { //don't allow buttons to be pressed as soon as menu is loaded
                chooseLevelMenuController.Update(gameTime);

                if (!disableButtonPress)
                {
                    if (chooseLevelMenuController.chooseButtonPressed)
                    {
                        if (SaveGameManager.Instance.IsLevelUnlocked((currentLevelSelected)))
                        {
                            proceedToLevelState = true;
                        }

                    }
                    else if (chooseLevelMenuController.chooseEndlessButtonPressed)
                    {
                        if (SaveGameManager.Instance.IsLevelUnlocked((currentLevelSelected)))
                        {
                            proceedToEndlessLevelState = true;
                        }
                    }
                    else if (chooseLevelMenuController.leftArrowButtonPressed)
                    {
                        if (currentLevelSelected > GameManager.levelNumberMin)
                        {
                            int previousLevel = (currentLevelSelected - 1 >= 1) ? (currentLevelSelected - 1) : GameManager.levelNumberLimit;

                            //should never be moving backwards to a locked level
                            if (SaveGameManager.Instance.IsLevelUnlocked(previousLevel))
                            {
                                currentLevelSelected--;
                                currentLevelString = "Level " + currentLevelSelected;
                                setLevelHighscoreString();
                            }

                        }
                        else
                        {
                            currentLevelSelected = GameManager.levelNumberLimit;
                            currentLevelString = "Level " + currentLevelSelected;
                            setLevelHighscoreString();
                        }

                        changePreviewTexture();

                    }
                    else if (chooseLevelMenuController.rightArrowButtonPressed)
                    {
                        if (currentLevelSelected < GameManager.levelNumberLimit)
                        {
                            //if the current level is locked and the next level is locked as well, don't let player see the next locked level number
                            if (SaveGameManager.Instance.IsLevelUnlocked(currentLevelSelected))
                            {
                                currentLevelSelected++;
                                currentLevelString = "Level " + currentLevelSelected;
                                setLevelHighscoreString();
                            }

                        }
                        else
                        {
                            currentLevelSelected = GameManager.levelNumberMin;
                            currentLevelString = "Level " + currentLevelSelected;
                            setLevelHighscoreString();
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
                    if (isTimeUp)
                    {
                        disableButtonPress = false;
                    }
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

            spriteBatch.DrawString(AssetManager.Instance.font,
                             currentLevelString,
                             currentLevelTextPositionVector,
                             Color.Black,
                             0,
                             new Vector2(0, 0),
                             1.0f,
                             SpriteEffects.None,
                             0);

            spriteBatch.DrawString(AssetManager.Instance.font,
                             currentLevelHighScoreString,
                             currentLevelHighScoreTextPositionVector,
                             Color.Black,
                             0,
                             new Vector2(0, 0),
                             1.0f,
                             SpriteEffects.None,
                             0);
        }

        void changePreviewTexture() {
            currentPreviewTexture = previewTextures.Find(pT => pT.Name.Equals(currentLevelSelected.ToString()));
        }

        void setLevelHighscoreString() {
            currentLevelHighScoreString = "Endless High Score: " + SaveGameManager.Instance.GetLevelHighScoreString(currentLevelSelected);
        }
    }
}
