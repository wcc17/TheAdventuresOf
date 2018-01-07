using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        //these are only used on Windows
        Texture2D arrowOutlineTexture;
        Texture2D buttonOutlineTexture;
        Texture2D currentOutlineTexture;
        public Vector2 outlinePositionVector;
        public Button activeButton = null;
        public bool isActiveButtonArrow = false;
        public bool isActiveArrowFlipped = false;
        public bool canPressButton = true;

        public override void InitializeController()
        {
            base.InitializeController();
        }

        public void InitializeOutlineTextures(Texture2D arrowOutlineTexture, Texture2D buttonOutlineTexture)
        {
            this.arrowOutlineTexture = arrowOutlineTexture;
            this.buttonOutlineTexture = buttonOutlineTexture;
        }

        public override void HandleInput(List<Point> points)
        {
#if __IOS__ || __ANDROID__
            base.HandleInput(points);
#else
                HandleInputWindows();
#endif
        }

        public bool CheckButtonInputWindows(MouseState mouseState, float mouseX, float mouseY, Button button)
        {
            return CheckButtonClicked(mouseState, mouseX, mouseY, button);
        }

        public void HandleButtonOutlinePositionChange()
        {
            if (isActiveButtonArrow)
            {
                currentOutlineTexture = arrowOutlineTexture;
            }
            else
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

#if !__IOS__ && !__ANDROID__
            SpriteEffects flipTexture = SpriteEffects.None;
            if(isActiveArrowFlipped)
            {
                flipTexture = SpriteEffects.FlipHorizontally;
            }

            spriteBatch.Draw(currentOutlineTexture, outlinePositionVector, color: Color.White, effects: flipTexture);
#endif
        }

        public virtual void HandleInputWindows() { }
        public virtual void HandleInputWindowsController() { }
        public virtual void HandleInputWindowsController_WaitForRelease() { }
        public virtual void HandleInputWindowsController_CanPressButton() { }
        public virtual void HandleInputWindowsMouse() { }
    }
}
