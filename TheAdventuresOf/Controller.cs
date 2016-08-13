using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
namespace TheAdventuresOf
{
	public static class Controller
	{

		static Button leftButton;
		static Button rightButton;
		static Button upButton;

		static Vector2 controllerPositionVector;

		public static bool isButtonPressed;
		public static bool leftButtonPressed;
		public static bool rightButtonPressed;
		public static bool upButtonPressed;

		public static void InitializeController(GraphicsDevice graphicsDevice)
		{

			leftButton = new Button(AssetManager.arrowButtonTexture.Width, AssetManager.arrowButtonTexture.Height, 50, 865);
			rightButton = new Button(AssetManager.arrowButtonTexture.Width, AssetManager.arrowButtonTexture.Height, 300, 865);
			upButton = new Button(AssetManager.arrowButtonTexture.Width, AssetManager.arrowButtonTexture.Height, 1650, 865);

			controllerPositionVector = new Vector2(0, 850);
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
			spriteBatch.Draw(AssetManager.controllerTexture, controllerPositionVector);

			//Draw left buttons
			leftButton.Draw(spriteBatch, AssetManager.arrowButtonTexture);

			//Draw right button
			rightButton.Draw(spriteBatch, AssetManager.arrowButtonTexture, (float)Math.PI, SpriteEffects.FlipVertically);

			//Draw jump buttons
			upButton.Draw(spriteBatch, AssetManager.arrowButtonTexture, (float)Math.PI / 2);
		}
	}
}

