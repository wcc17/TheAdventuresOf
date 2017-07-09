using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using UIKit;

namespace TheAdventuresOf
{
	public class Button
	{
		Rectangle buttonBounds;

		float posX, posY;
		float width, height;
 		Vector2 buttonPositionVector;
		Vector2 originVector;

        //if the button has already been pressed once (before it was being held down)
        public bool initialPressHappened = false;

		public Button(float textureWidth, float textureHeight, float posX, float posY)
		{
			//these will be used to get the left corner points instead of the center points of the rectangle
			this.posX = posX;
			this.posY = posY;

			width = textureWidth;
			height = textureHeight;

			InitializeButton();
		}

		public void InitializeButton()
		{
			//using the origin parameter in the Draw method changes the textures coordinates to use the center point 
			//instead of the top left corner, so adding the width and height / 2 accounts for that
			buttonPositionVector = new Vector2(posX + width / 2, posY + height / 2);
			originVector = new Vector2(width / 2, height / 2);

			InitializeBounds();
		}

		public void InitializeBounds()
		{
			buttonBounds = new Rectangle((int)posX, (int)posY, (int)width, (int)height);
		}

		public bool IsPressed(Point point)
		{
			if (buttonBounds.Contains(point))
			{
				return true;
			}

			return false;
		}

		public void Draw(SpriteBatch spriteBatch, Texture2D buttonTexture, float rotation = 0, SpriteEffects spriteEffects = SpriteEffects.None)
		{
			spriteBatch.Draw(buttonTexture, buttonPositionVector, null, Color.White, rotation, originVector, 1, spriteEffects, 0);
		}
	}
}

