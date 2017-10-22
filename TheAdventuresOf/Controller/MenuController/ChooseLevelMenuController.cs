using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ChooseLevelMenuController : MenuController
    {
        public static float chooseButtonX;
        public static float chooseButtonY;
        public static float rightButtonX;
        public static float rightButtonY;
        public static float leftButtonX;
        public static float leftButtonY;
        public static float backButtonX;
        public static float backButtonY;

        public bool isButtonPressed;

        public static Button chooseButton;
        public bool chooseButtonPressed;
        Texture2D chooseButtonTexture;

        //TODO: should this be in the controller or GameController or GameControllerMobile class?
        /**
         * Must be called before InitializeController()
         */
        public void InitializeTextures(Texture2D chooseButtonTexture)
        {
            this.chooseButtonTexture = chooseButtonTexture;
        }

        public override void InitializeController()
        {
            base.InitializeController();

            chooseButton = new Button(chooseButtonTexture.Width,
                                      chooseButtonTexture.Height,
                                      chooseButtonX,
                                      chooseButtonY);
        }

        public override void HandleSingleInput(Point point)
        {
            if (chooseButton.IsPressed(point))
            {
                isButtonPressed = true;
                chooseButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(chooseButton, chooseButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            chooseButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            //Draw player button
            chooseButton.Draw(spriteBatch, chooseButtonTexture);
        }
    }
}
