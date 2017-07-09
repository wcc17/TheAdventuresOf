using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using UIKit;

namespace TheAdventuresOf
{
	public static class Controller
	{
        //for slight vibrations when buttons are pressed
        static UIImpactFeedbackGenerator impactGenerator;

		public static Vector2 controllerPositionVector;
		public static Vector2 leftButtonPositionVector;
		public static Vector2 rightButtonPositionVector;
		public static Vector2 upButtonPositionVector;

		static Button leftButton;
		static Button rightButton;
		static Button upButton;

		public static bool isButtonPressed;
		public static bool leftButtonPressed;
		public static bool rightButtonPressed;
		public static bool upButtonPressed;

		public static void InitializeController()
		{
            impactGenerator = new UIImpactFeedbackGenerator(UIImpactFeedbackStyle.Medium);
            impactGenerator.Prepare();

			leftButton = new Button(AssetManager.Instance.arrowButtonTexture.Width, 
			                        AssetManager.Instance.arrowButtonTexture.Height, 
			                        leftButtonPositionVector.X, 
			                        leftButtonPositionVector.Y);
			rightButton = new Button(AssetManager.Instance.arrowButtonTexture.Width, 
			                         AssetManager.Instance.arrowButtonTexture.Height, 
			                         rightButtonPositionVector.X, 
			                         rightButtonPositionVector.Y);
			upButton = new Button(AssetManager.Instance.arrowButtonTexture.Width, 
			                      AssetManager.Instance.arrowButtonTexture.Height, 
			                      upButtonPositionVector.X, 
			                      upButtonPositionVector.Y);
		}

        //activated on every point touched on the screen
        //so even though leftButton is pressed, we might be looking at the rightButton point
        //so this function will think leftButton is NOT being pressed
		public static void HandleInput(Point point)
		{
			if (leftButton.IsPressed(point))
			{
				isButtonPressed = true;
				leftButtonPressed = true;
			}

			if (rightButton.IsPressed(point))
			{
				isButtonPressed = true;
				rightButtonPressed = true;
			}

			if (upButton.IsPressed(point))
			{
				isButtonPressed = true;
				upButtonPressed = true;
			}

		}

        public static void HandleImpacts() 
        {
            HandleImpact(leftButton, leftButtonPressed);
            HandleImpact(rightButton, rightButtonPressed);
            HandleImpact(upButton, upButtonPressed);
        }

        public static void HandleImpact(Button button, bool isPressed)
        {
            if (isPressed)
            {
                if (!button.initialPressHappened)
                {
                    button.initialPressHappened = true;
                    impactGenerator.ImpactOccurred();
                }
            }
            else
            {
                button.initialPressHappened = false;
            }
        }

		public static void ResetButtonPressedValues()
		{
			isButtonPressed = false;
			leftButtonPressed = false;
			rightButtonPressed = false;
			upButtonPressed = false;
		}

		public static void Draw(SpriteBatch spriteBatch)
		{
			//Draw controller
			spriteBatch.Draw(AssetManager.Instance.controllerTexture, controllerPositionVector);

			//Draw left buttons
			leftButton.Draw(spriteBatch, AssetManager.Instance.arrowButtonTexture);

			//Draw right button
			rightButton.Draw(spriteBatch, AssetManager.Instance.arrowButtonTexture, (float)Math.PI, SpriteEffects.FlipVertically);

			//Draw jump buttons
			upButton.Draw(spriteBatch, AssetManager.Instance.arrowButtonTexture, (float)Math.PI / 2);
		}
	}
}

