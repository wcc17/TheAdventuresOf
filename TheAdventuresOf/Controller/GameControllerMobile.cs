﻿using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameControllerMobile : GameController
	{
        public static Vector2 controllerPositionVector;
        public static Vector2 leftButtonPositionVector;
        public static Vector2 rightButtonPositionVector;
        public static Vector2 jumpButtonPositionVector;
        public static Vector2 pauseButtonPositionVector;

		static Button leftButton;
		static Button rightButton;
		static Button jumpButton;
        static Button pauseButton;

        bool pauseAlreadyPressed;

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
            jumpButton = new Button(AssetManager.Instance.jumpButtonTexture.Width, 
			                      AssetManager.Instance.jumpButtonTexture.Height, 
			                      jumpButtonPositionVector.X, 
			                      jumpButtonPositionVector.Y);
            pauseButton = new Button(AssetManager.Instance.pauseButtonTexture.Width,
                                     AssetManager.Instance.pauseButtonTexture.Height,
                                     pauseButtonPositionVector.X,
                                     pauseButtonPositionVector.Y);
		}

        //activated on every point touched on the screen
        //so even though leftButton is pressed, we might be looking at the rightButton point
        //so this function will think leftButton is NOT being pressed
		public override void HandleInput(List<Point> points) {
            //base.HandleInputMobile(points);

            if(!pauseAlreadyPressed) {
                base.HandleInputMobile(points);
            } else if(points.Count <= 0){
                handleNoInput();
            }
		}

        public override void HandleSingleInput(Point point) {
            HandlePauseButtonPressed(pauseButton.IsPressed(point));     //see if we should do anything about it

            if (leftButton.IsPressed(point)) {
                isButtonPressed = true;
                leftButtonPressed = true;
            }
            if (rightButton.IsPressed(point)) {
                isButtonPressed = true;
                rightButtonPressed = true;
            }
            if (jumpButton.IsPressed(point)) {
                isButtonPressed = true;
                jumpButtonPressed = true;
            }
        }

        public void HandlePauseButtonPressed(bool isPressed) {
            if(isPressed && !pauseAlreadyPressed) {     //are we pressing it and is not already pressed? then press it
                isButtonPressed = true;
                pauseButtonPressed = true;
                pauseAlreadyPressed = true;
            } else if(!isPressed) {                     //if its not pressed, its not already pressed  
                pauseAlreadyPressed = false;
            }
        }

        void handleNoInput() {
            pauseAlreadyPressed = false;   
        }

        public override void HandleImpacts() {
            if(!isPaused) {
                HandleImpact(leftButton, leftButtonPressed);
                HandleImpact(rightButton, rightButtonPressed);
                HandleImpact(jumpButton, jumpButtonPressed);
            }

            HandleImpact(pauseButton, pauseButtonPressed);
        }

		public override void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.Instance.controllerTexture, controllerPositionVector);

            if(!isPaused) {
                leftButton.Draw(spriteBatch, AssetManager.Instance.leftArrowButtonTexture);
                rightButton.Draw(spriteBatch, AssetManager.Instance.rightArrowButtonTexture);
                jumpButton.Draw(spriteBatch, AssetManager.Instance.jumpButtonTexture);
            }

            pauseButton.Draw(spriteBatch, AssetManager.Instance.pauseButtonTexture);
		}
	}
}

