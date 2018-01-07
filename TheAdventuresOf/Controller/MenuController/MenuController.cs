using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        //used to determine first time mouse button is clicked
        private MouseState oldState;

        //these are only used on Windows
        Texture2D arrowOutlineTexture;
        Texture2D buttonOutlineTexture;
        Texture2D currentOutlineTexture;
        public Vector2 outlinePositionVector;
        public Button activeButton = null;
        public bool isActiveButtonArrow = false;
        public bool isActiveArrowFlipped = false;
        public bool canPressButton = true;

        public override void InitializeController() {
            base.InitializeController();
        }

        public void InitializeOutlineTextures(Texture2D arrowOutlineTexture, Texture2D buttonOutlineTexture)
        {
            this.arrowOutlineTexture = arrowOutlineTexture;
            this.buttonOutlineTexture = buttonOutlineTexture;
        }

        public override void HandleInput(List<Point> points) {
            #if __IOS__ || __ANDROID__
                base.HandleInput(points);
            #else
                HandleInputWindows();
            #endif
        }

        public bool CheckButtonInputWindows(MouseState mouseState, float mouseX, float mouseY, Button button)
        {
            if (mouseState.LeftButton == ButtonState.Pressed && oldState.LeftButton == ButtonState.Released)
            {
                return CheckMouseInsideButton(mouseX, mouseY, button);
            }

            return false;
        }

        public bool CheckMouseInsideButton(float mouseX, float mouseY, Button button)
        {
            //scale mouseX and mouseY to whatever the current resolution is set to
            Point unscaledPoint = new Point((int)mouseX, (int)mouseY);
            Point scaledPoint = ScreenManager.GetScaledInputPoint(unscaledPoint);
            mouseX = scaledPoint.X;
            mouseY = scaledPoint.Y;

            //Logger.WriteToConsole("-------------------------------");
            //Logger.WriteToConsole("button (x, y): (" + button.buttonPositionVector.X + ", " + button.buttonPositionVector.Y + ")");
            //Logger.WriteToConsole("MouseX Scaled: " + mouseX);
            //Logger.WriteToConsole("MouseY Scaled: " + mouseY);
            //Logger.WriteToConsole("-------------------------------");

            if ((mouseX >= button.buttonPositionVector.X
                    && mouseX <= (button.buttonPositionVector.X + button.buttonBounds.Width))
                    && (mouseY >= button.buttonPositionVector.Y
                    && mouseY <= (button.buttonPositionVector.Y + button.buttonBounds.Height)))
            {
                return true;
            }

            return false;

        }

        public void HandleButtonOutlinePositionChange()
        {
            if(isActiveButtonArrow)
            {
                currentOutlineTexture = arrowOutlineTexture;
            } else
            {
                currentOutlineTexture = buttonOutlineTexture;
            }

            float activeButtonX = activeButton.buttonPositionVector.X;
            float activeButtonY = activeButton.buttonPositionVector.Y;
            float widthDiff = activeButton.buttonBounds.Width - currentOutlineTexture.Width;
            float heightDiff = activeButton.buttonBounds.Height - currentOutlineTexture.Height;

            outlinePositionVector = new Vector2(activeButtonX + (widthDiff / 2), activeButtonY + (heightDiff / 2));
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);
            
            SpriteEffects flipTexture = SpriteEffects.None;
            if(isActiveArrowFlipped)
            {
                flipTexture = SpriteEffects.FlipHorizontally;
            }

            spriteBatch.Draw(currentOutlineTexture, outlinePositionVector, color: Color.White, effects: flipTexture);
        }

        public virtual void HandleInputWindows() { }
        public virtual void HandleInputWindowsController() { }
        public virtual void HandleInputWindowsController_WaitForRelease() { }
        public virtual void HandleInputWindowsController_CanPressButton() { }
        public virtual void HandleInputWindowsMouse() { }
    }
}
