using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using UIKit;

namespace TheAdventuresOf
{
    public class GameController : Controller
	{
		public static Vector2 controllerPositionVector;
		public static Vector2 leftButtonPositionVector;
		public static Vector2 rightButtonPositionVector;
		public static Vector2 upButtonPositionVector;

		static Button leftButton;
		static Button rightButton;
		static Button upButton;

        public bool isButtonPressed;
		public bool leftButtonPressed;
		public bool rightButtonPressed;
		public bool upButtonPressed;

		public override void InitializeController() {
            base.InitializeController();

			leftButton = new Button(AssetManager.Instance.leftArrowButtonTexture.Width, 
			                        AssetManager.Instance.leftArrowButtonTexture.Height, 
			                        leftButtonPositionVector.X, 
			                        leftButtonPositionVector.Y);
			rightButton = new Button(AssetManager.Instance.rightArrowButtonTexture.Width, 
			                         AssetManager.Instance.rightArrowButtonTexture.Height, 
			                         rightButtonPositionVector.X, 
			                         rightButtonPositionVector.Y);
			upButton = new Button(AssetManager.Instance.upArrowButtonTexture.Width, 
			                      AssetManager.Instance.upArrowButtonTexture.Height, 
			                      upButtonPositionVector.X, 
			                      upButtonPositionVector.Y);
		}

        //activated on every point touched on the screen
        //so even though leftButton is pressed, we might be looking at the rightButton point
        //so this function will think leftButton is NOT being pressed
		public override void HandleInput(Point point) {
			
            if (leftButton.IsPressed(point)) {
				isButtonPressed = true;
				leftButtonPressed = true;
			}

			if (rightButton.IsPressed(point)) {
				isButtonPressed = true;
				rightButtonPressed = true;
			}

			if (upButton.IsPressed(point)) {
				isButtonPressed = true;
				upButtonPressed = true;
			}

		}

        public override void HandleImpacts() {
            HandleImpact(leftButton, leftButtonPressed);
            HandleImpact(rightButton, rightButtonPressed);
            HandleImpact(upButton, upButtonPressed);
        }

		public override void ResetButtonPressedValues()
		{
            isButtonPressed = false;
			leftButtonPressed = false;
			rightButtonPressed = false;
			upButtonPressed = false;
		}

		public override void Draw(SpriteBatch spriteBatch)
		{
			//Draw gameController
			spriteBatch.Draw(AssetManager.Instance.controllerTexture, controllerPositionVector);

            //Draw left buttons
            leftButton.Draw(spriteBatch, AssetManager.Instance.leftArrowButtonTexture);

			//Draw right button
            rightButton.Draw(spriteBatch, AssetManager.Instance.rightArrowButtonTexture);

			//Draw jump buttons
            upButton.Draw(spriteBatch, AssetManager.Instance.upArrowButtonTexture);
		}
	}
}

