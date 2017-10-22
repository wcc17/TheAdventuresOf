using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class Button
	{
		Rectangle buttonBounds;

        //float originalX, originalY; //used for saving original pos of button for animation
        float animationOffset = 3;

		float initialPosX, initialPosY;
		float width, height;
 		public Vector2 buttonPositionVector;

        //if the button has already been pressed once (before it was being held down)
        public bool initialPressHappened;

        //for drawing the movement of the buttons when they're pressed
        public bool isPressedDown;

		public Button(float textureWidth, float textureHeight, float posX, float posY)
		{
			//these will be used to get the left corner points instead of the center points of the rectangle
			this.initialPosX = posX;
			this.initialPosY = posY;

			width = textureWidth;
			height = textureHeight;

			InitializeButton();
		}

		public void InitializeButton()
		{
            buttonPositionVector = new Vector2(initialPosX, initialPosY);
			InitializeBounds();
		}

        /**
         * In case position of button has to be set after button is instantiated
         * call this to reset the "initial" position of the button so that it can
         * still animate correctly
         */
        public void ResetInitialPosition() {
            this.initialPosX = buttonPositionVector.X;
            this.initialPosY = buttonPositionVector.Y;
            InitializeButton();
        }

		public void InitializeBounds()
		{
			buttonBounds = new Rectangle((int)initialPosX, (int)initialPosY, (int)width, (int)height);
		}

		public bool IsPressed(Point point)
		{
			if (buttonBounds.Contains(point))
			{
				return true;
			}

			return false;
		}

        public void ShowPressedDown() 
        {
            buttonPositionVector.X = initialPosX + animationOffset;
            buttonPositionVector.Y = initialPosY + animationOffset;
        }

        public void ShowPressedUp() 
        {
            buttonPositionVector.X = initialPosX;
            buttonPositionVector.Y = initialPosY;
        }

		public void Draw(SpriteBatch spriteBatch, Texture2D buttonTexture, int layerDepth = 0)
		{
            //spriteBatch.Draw(buttonTexture, buttonPositionVector, null, Color.White, rotation, originVector, 1, spriteEffects, 0);
            spriteBatch.Draw(buttonTexture, buttonPositionVector, color: Color.White, layerDepth: layerDepth);
		}
	}
}

