using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class MainMenuController : MenuController
    {
        public static float playButtonX;
        public static float playButtonY;
        public static float chooseLevelButtonX;
        public static float chooseLevelButtonY;

        public bool isButtonPressed;

        public Button playButton;
        public bool playButtonPressed;
        Texture2D playButtonTexture;

        public Button chooseLevelButton;
        public bool chooseLevelButtonPressed;
        Texture2D chooseLevelButtonTexture;

        /**
         * Must be called before InitializeController()
         */
        public void InitializeTextures(Texture2D playButtonTexture, 
                                       Texture2D chooseLevelButtonTexture)
        {
            this.playButtonTexture = playButtonTexture;
            this.chooseLevelButtonTexture = chooseLevelButtonTexture;
        }

        public override void InitializeController() {
            base.InitializeController();

            playButton = new Button(playButtonTexture.Width,
                                    playButtonTexture.Height,
                                    playButtonX,
                                    playButtonY);

            chooseLevelButton = new Button(chooseLevelButtonTexture.Width,
                                           chooseLevelButtonTexture.Height,
                                           chooseLevelButtonX,
                                           chooseLevelButtonY);
        }

        public override void HandleSingleInput(Point point)
        {
            if (playButton.IsPressed(point)) {
                isButtonPressed = true;
                playButtonPressed = true;
            } else if(chooseLevelButton.IsPressed(point)) {
                isButtonPressed = true;
                chooseLevelButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(playButton, playButtonPressed);
            HandleImpact(chooseLevelButton, chooseLevelButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            playButtonPressed = false;
            chooseLevelButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            //Draw player button
            playButton.Draw(spriteBatch, playButtonTexture);

            chooseLevelButton.Draw(spriteBatch, chooseLevelButtonTexture);
        }
    }
}
