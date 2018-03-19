using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class GameControllerMobile : GameController
	{
        const float quitButtonYOffset = 0.037f * ScreenManager.VIRTUAL_SCREEN_HEIGHT;
        public static Vector2 controllerPositionVector;
        public static Vector2 leftButtonPositionVector;
        public static Vector2 rightButtonPositionVector;
        public static Vector2 jumpButtonPositionVector;
        public static Vector2 pauseButtonPositionVector;
        public static Vector2 quitButtonPositionVector;

		static Button leftButton;
		static Button rightButton;
		static Button jumpButton;
        static Button pauseButton;
        static Button quitButton;

        bool pauseAlreadyPressed;

        public Texture2D controllerTexture;
        public Texture2D leftArrowButtonTexture;
        public Texture2D rightArrowButtonTexture;
        public Texture2D jumpButtonTexture;
        public Texture2D pauseButtonTexture;
        public Texture2D quitButtonTexture;

        public void InitializeTextures(Texture2D leftArrowButtonTexture,
                                      Texture2D rightArrowButtonTexture,
                                      Texture2D jumpButtonTexture, 
                                      Texture2D pauseButtonTexture,
                                      Texture2D quitButtonTexture,
                                      Texture2D controllerTexture) {
            this.leftArrowButtonTexture = leftArrowButtonTexture;
            this.rightArrowButtonTexture = rightArrowButtonTexture;
            this.jumpButtonTexture = jumpButtonTexture;
            this.pauseButtonTexture = pauseButtonTexture;
            this.quitButtonTexture = quitButtonTexture;
            this.controllerTexture = controllerTexture;
        }

		public override void InitializeController() {
            base.InitializeController();

            quitButtonPositionVector = new Vector2(
                (ScreenManager.VIRTUAL_SCREEN_WIDTH / 2) - (quitButtonTexture.Width / 2),
                ((ScreenManager.VIRTUAL_SCREEN_HEIGHT / 2) - quitButtonTexture.Height - quitButtonYOffset));

			leftButton = new Button(leftArrowButtonTexture.Width, 
			                        leftArrowButtonTexture.Height, 
			                        leftButtonPositionVector.X, 
			                        leftButtonPositionVector.Y);
			rightButton = new Button(rightArrowButtonTexture.Width, 
			                         rightArrowButtonTexture.Height, 
			                         rightButtonPositionVector.X, 
			                         rightButtonPositionVector.Y);
            jumpButton = new Button(jumpButtonTexture.Width, 
			                      jumpButtonTexture.Height, 
			                      jumpButtonPositionVector.X, 
			                      jumpButtonPositionVector.Y);
            pauseButton = new Button(pauseButtonTexture.Width,
                                     pauseButtonTexture.Height,
                                     pauseButtonPositionVector.X,
                                     pauseButtonPositionVector.Y);
            quitButton = new Button(quitButtonTexture.Width,
                                    quitButtonTexture.Height,
                                    quitButtonPositionVector.X,
                                    quitButtonPositionVector.Y);
		}

        //activated on every point touched on the screen
        //so even though leftButton is pressed, we might be looking at the rightButton point
        //so this function will think leftButton is NOT being pressed
		public override void HandleInput(List<Point> points) {
            if(!pauseAlreadyPressed) {
                base.HandleInput(points);
            } else if(points.Count <= 0){
                handleNoInput();
            }
		}

        public override void HandleSingleInput(Point point) {
            HandlePauseButtonPressed(pauseButton.IsPressed(point));     //see if we should do anything about it

            if(!isPaused) {
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
                if (jumpButton.IsPressed(point))
                {
                    isButtonPressed = true;
                    jumpButtonPressed = true;
                }
            } 
            else 
            {
                if(quitButton.IsPressed(point)) 
                {
                    isButtonPressed = true;
                    quitButtonPressed = true;
                }
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
            } else {
                HandleImpact(quitButton, quitButtonPressed);
            }

            HandleImpact(pauseButton, pauseButtonPressed);
        }

		public override void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(controllerTexture, controllerPositionVector);

            if(!isPaused) {
                leftButton.Draw(spriteBatch, leftArrowButtonTexture);
                rightButton.Draw(spriteBatch, rightArrowButtonTexture);
                jumpButton.Draw(spriteBatch, jumpButtonTexture);
            } else {
                //TODO: NEED TO BE DRAWING THIS ON TOP OF PAUSE SCREEN TRANSPARENCY (DIMMING TEXTURE)
                quitButton.Draw(spriteBatch, quitButtonTexture, 1);
            }

            pauseButton.Draw(spriteBatch, pauseButtonTexture);
		}
	}
}

