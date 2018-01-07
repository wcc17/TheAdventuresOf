using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class ChooseLevelMenuController : MenuController
    {
        public static float buttonOffset; //how far buttons should be away from edges

        public bool isButtonPressed;

        public static Button chooseButton;
        public bool chooseButtonPressed;
        Texture2D chooseButtonTexture;

        public static Button leftArrowButton;
        public bool leftArrowButtonPressed;
        Texture2D leftArrowButtonTexture;

        public static Button rightArrowButton;
        public bool rightArrowButtonPressed;
        Texture2D rightArrowButtonTexture;

        public static Button backArrowButton;
        public bool backArrowButtonPressed;
        Texture2D backArrowButtonTexture;

        Texture2D arrowOutlineTexture;
        Texture2D buttonOutlineTexture;

        /**
         * Must be called before InitializeController()
         */
        public void InitializeTextures(Texture2D chooseButtonTexture,
                                       Texture2D backArrowButtonTexture,
                                       Texture2D rightArrowButtonTexture,
                                       Texture2D leftArrowButtonTexture,
                                       Texture2D arrowOutlineTexture,
                                       Texture2D buttonOutlineTexture)
        {
            this.chooseButtonTexture = chooseButtonTexture;
            this.rightArrowButtonTexture = rightArrowButtonTexture;
            this.leftArrowButtonTexture = leftArrowButtonTexture;
            this.backArrowButtonTexture = backArrowButtonTexture;
            this.arrowOutlineTexture = arrowOutlineTexture;
            this.buttonOutlineTexture = buttonOutlineTexture;
        }

        public override void InitializeController()
        {
            base.InitializeController();

            chooseButton = new Button(chooseButtonTexture.Width,
                                      chooseButtonTexture.Height,
                                      0, 0);

            backArrowButton = new Button(backArrowButtonTexture.Width,
                                      backArrowButtonTexture.Height,
                                      0, 0);

            rightArrowButton = new Button(rightArrowButtonTexture.Width,
                                      rightArrowButtonTexture.Height,
                                      0, 0);

            leftArrowButton = new Button(leftArrowButtonTexture.Width,
                                      leftArrowButtonTexture.Height,
                                      0, 0);

            chooseButton.buttonPositionVector.X = (ScreenManager.FULL_SCREEN_WIDTH / 2) - (chooseButtonTexture.Width / 2);
            chooseButton.buttonPositionVector.Y = ScreenManager.FULL_SCREEN_HEIGHT - chooseButtonTexture.Height - buttonOffset;
            chooseButton.ResetInitialPosition();

            backArrowButton.buttonPositionVector.X = buttonOffset;
            backArrowButton.buttonPositionVector.Y = buttonOffset;
            backArrowButton.ResetInitialPosition();

            rightArrowButton.buttonPositionVector.X = ScreenManager.FULL_SCREEN_WIDTH - rightArrowButtonTexture.Width - buttonOffset;
            rightArrowButton.buttonPositionVector.Y = (ScreenManager.FULL_SCREEN_HEIGHT / 2) - (rightArrowButtonTexture.Height / 2);
            rightArrowButton.ResetInitialPosition();

            leftArrowButton.buttonPositionVector.X = buttonOffset;
            leftArrowButton.buttonPositionVector.Y = (ScreenManager.FULL_SCREEN_HEIGHT / 2) - (rightArrowButtonTexture.Height / 2);
            leftArrowButton.ResetInitialPosition();
        }

        public override void HandleSingleInput(Point point)
        {
            if (chooseButton.IsPressed(point))
            {
                isButtonPressed = true;
                chooseButtonPressed = true;
            }

            if (backArrowButton.IsPressed(point))
            {
                isButtonPressed = true;
                backArrowButtonPressed = true;
            }

            if (rightArrowButton.IsPressed(point))
            {
                isButtonPressed = true;
                rightArrowButtonPressed = true;
            }

            if (leftArrowButton.IsPressed(point))
            {
                isButtonPressed = true;
                leftArrowButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(chooseButton, chooseButtonPressed);
            HandleImpact(backArrowButton, backArrowButtonPressed);
            HandleImpact(rightArrowButton, rightArrowButtonPressed);
            HandleImpact(leftArrowButton, leftArrowButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            chooseButtonPressed = false;
            backArrowButtonPressed = false;
            rightArrowButtonPressed = false;
            leftArrowButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            //Draw player button
            chooseButton.Draw(spriteBatch, chooseButtonTexture);
            backArrowButton.Draw(spriteBatch, backArrowButtonTexture);
            rightArrowButton.Draw(spriteBatch, rightArrowButtonTexture);
            leftArrowButton.Draw(spriteBatch, leftArrowButtonTexture);
        }

        public override void HandleInputWindows()
        {
            MouseState mouseState = Mouse.GetState();
            float mouseX = mouseState.X;
            float mouseY = mouseState.Y;

            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, chooseButton))
            {
                isButtonPressed = true;
                chooseButtonPressed = true;
            }
            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, leftArrowButton))
            {
                isButtonPressed = true;
                leftArrowButtonPressed = true;
            }
            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, rightArrowButton))
            {
                isButtonPressed = true;
                rightArrowButtonPressed = true;
            }
            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, backArrowButton))
            {
                isButtonPressed = true;
                backArrowButtonPressed = true;
            }
        }
    }
}
