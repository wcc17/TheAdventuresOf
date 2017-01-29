using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	public static class Controller
	{
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

