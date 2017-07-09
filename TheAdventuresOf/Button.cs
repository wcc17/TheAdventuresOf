﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using UIKit;

namespace TheAdventuresOf
{
    //TODO: see previous commits for when Button class used the originVector during drawing
    //will only need this if I want to go back to using one texture for the buttons
    //rather than rotating them myself and saving them as such
	public class Button
	{
		Rectangle buttonBounds;

        //float originalX, originalY; //used for saving original pos of button for animation
        float animationOffset = 3;

		float initialPosX, initialPosY;
		float width, height;
 		Vector2 buttonPositionVector;

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

		public void Draw(SpriteBatch spriteBatch, Texture2D buttonTexture)
		{
            //spriteBatch.Draw(buttonTexture, buttonPositionVector, null, Color.White, rotation, originVector, 1, spriteEffects, 0);
            spriteBatch.Draw(buttonTexture, buttonPositionVector, color: Color.White);
		}
	}
}

