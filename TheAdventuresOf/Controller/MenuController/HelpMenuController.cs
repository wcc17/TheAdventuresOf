using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class HelpMenuController : MenuController
    {
        public bool isButtonPressed;

        public static Button backButton;
        public bool backButtonPressed;
        Texture2D backButtonTexture;

        //must be called before initializeController
        public void InitializeTextures(Texture2D backButtonTexture, Texture2D arrowOutlineTexture, Texture2D buttonOutlineTexture) {
            InitializeOutlineTextures(arrowOutlineTexture, buttonOutlineTexture);
            this.backButtonTexture = backButtonTexture;
        }

        public void InitializeHelpMenuController() {
            base.InitializeController();

            backButton = new Button(backButtonTexture.Width,
                                    backButtonTexture.Height,
                                    0, 0);
        }

        public override void HandleSingleInput(Point point)
        {
            if (backButton.IsPressed(point))
            {
                isButtonPressed = true;
                backButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(backButton, backButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            backButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);
            backButton.Draw(spriteBatch, backButtonTexture);
        }

        public override void HandleInputWindows()
        {
            HandleInputWindowsController();
            HandleInputWindowsMouse();
        }

        public override void HandleInputWindowsController()
        {
            if (canPressButton)
            {
                HandleInputWindowsController_CanPressButton();
            }
            else
            {
                HandleInputWindowsController_WaitForRelease();
            }
        }

        public override void HandleInputWindowsController_CanPressButton()
        {
            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed
                || GamePad.GetState(PlayerIndex.Two).Buttons.B == ButtonState.Pressed)
            {
                isButtonPressed = true;
                backButtonPressed = true;
            }
        }

        public override void HandleInputWindowsController_WaitForRelease()
        {
            //TODO: i don't think anything needs to be done here except prevent player from leaving screen as soon as they open the menu
        }

        public override void HandleInputWindowsMouse()
        {
            MouseState mouseState = Mouse.GetState();
            float mouseX = mouseState.X;
            float mouseY = mouseState.Y;

            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, backButton))
            {

                isButtonPressed = true;
                backButtonPressed = true;
            }

            if (CheckMouseInsideButton(mouseX, mouseY, backButton))
            {
                activateBackButton();
            }
        }

        private void activateBackButton()
        {
            activeButton = backButton;
            isActiveButtonArrow = true;
            isActiveArrowFlipped = false;
            HandleButtonOutlinePositionChange();
        }
    }
}
