using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class MainMenuController : MenuController
    {
        public const int PLAY_BUTTON_ACTIVE = 0;
        public const int CHOOSE_LEVEL_BUTTON_ACTIVE = 1;
        public const int ACTIVE_BUTTON_INDEX_MIN = 0;
        public const int ACTIVE_BUTTON_INDEX_MAX = 1;
        int activeButtonIndex = 0;

        public static float playButtonX;
        public static float playButtonY;
        public static float chooseLevelButtonX;
        public static float chooseLevelButtonY;

        public bool isButtonPressed;

        public Button playButton;
        public bool playButtonPressed;
        Texture2D playButtonTexture;

        public Button chooseLevelButton;
        public bool chooseLevelButtonPressed;
        Texture2D chooseLevelButtonTexture;
        
        /**
         * Must be called before InitializeController()
         */
        public  void InitializeTextures(Texture2D playButtonTexture, 
                                       Texture2D chooseLevelButtonTexture,
                                       Texture2D arrowOutlineTexture,
                                       Texture2D buttonOutlineTexture)
        {
            InitializeOutlineTextures(arrowOutlineTexture, buttonOutlineTexture);
            this.playButtonTexture = playButtonTexture;
            this.chooseLevelButtonTexture = chooseLevelButtonTexture;
        }

        public override void InitializeController()
        {
            base.InitializeController();

            playButton = new Button(playButtonTexture.Width,
                                    playButtonTexture.Height,
                                    playButtonX,
                                    playButtonY);

            chooseLevelButton = new Button(chooseLevelButtonTexture.Width,
                                           chooseLevelButtonTexture.Height,
                                           chooseLevelButtonX,
                                           chooseLevelButtonY);

#if !__IOS__ && !__ANDROID__
            activeButton = playButton;
            isActiveButtonArrow = false;
            isActiveArrowFlipped = false;
            HandleButtonOutlinePositionChange();
#endif
        }

        public override void HandleSingleInput(Point point)
        {
            if (playButton.IsPressed(point)) {
                isButtonPressed = true;
                playButtonPressed = true;
            } else if(chooseLevelButton.IsPressed(point)) {
                isButtonPressed = true;
                chooseLevelButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(playButton, playButtonPressed);
            HandleImpact(chooseLevelButton, chooseLevelButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            playButtonPressed = false;
            chooseLevelButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);

            //Draw player button
            playButton.Draw(spriteBatch, playButtonTexture);

            chooseLevelButton.Draw(spriteBatch, chooseLevelButtonTexture);
        }

        public override void HandleInputWindows()
        {
            HandleInputWindowsController();
            HandleInputWindowsMouse();
        }

        public override void HandleInputWindowsController()
        {
            if(canPressButton)
            {
                HandleInputWindowsController_CanPressButton();
            } else
            {
                HandleInputWindowsController_WaitForRelease();
            }
            
        }

        public override void HandleInputWindowsController_CanPressButton()
        {
            bool gamePadButtonPressed = false;
            if (GamePad.GetState(PlayerIndex.One).DPad.Down == ButtonState.Pressed)
            {
                activeButtonIndex++;
                if (activeButtonIndex > ACTIVE_BUTTON_INDEX_MAX)
                {
                    activeButtonIndex = ACTIVE_BUTTON_INDEX_MAX;
                }

                gamePadButtonPressed = true;
                canPressButton = false;
            }
            if (GamePad.GetState(PlayerIndex.One).DPad.Up == ButtonState.Pressed)
            {
                activeButtonIndex--;
                if (activeButtonIndex < ACTIVE_BUTTON_INDEX_MIN)
                {
                    activeButtonIndex = ACTIVE_BUTTON_INDEX_MIN;
                }
                gamePadButtonPressed = true;
                canPressButton = false;
            }
            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed)
            {
                gamePadButtonPressed = false;
                switch (activeButtonIndex)
                {
                    case PLAY_BUTTON_ACTIVE:
                        
                        isButtonPressed = true;
                        playButtonPressed = true;
                        break;
                    case CHOOSE_LEVEL_BUTTON_ACTIVE:
                        isButtonPressed = true;
                        chooseLevelButtonPressed = true;
                        break;
                }
            }

            if (gamePadButtonPressed)
            {
                switch (activeButtonIndex)
                {
                    case PLAY_BUTTON_ACTIVE:
                        activatePlayButton();
                        break;
                    case CHOOSE_LEVEL_BUTTON_ACTIVE:
                        activateChooseLevelButton();
                        break;
                }

                gamePadButtonPressed = false;
            }
        }

        public override void HandleInputWindowsController_WaitForRelease()
        {
            bool upButtonPressedAndReleased = (activeButtonIndex == PLAY_BUTTON_ACTIVE)
                && GamePad.GetState(PlayerIndex.One).DPad.Up == ButtonState.Released;
            bool downButtonPressedAndReleased = (activeButtonIndex == CHOOSE_LEVEL_BUTTON_ACTIVE)
                && GamePad.GetState(PlayerIndex.One).DPad.Down == ButtonState.Released;

            if(upButtonPressedAndReleased
                || downButtonPressedAndReleased)
            {
                canPressButton = true;
            }
        }

        public override void HandleInputWindowsMouse()
        {
            MouseState mouseState = Mouse.GetState();
            float mouseX = mouseState.X;
            float mouseY = mouseState.Y;

            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, playButton))
            {
                
                isButtonPressed = true;
                playButtonPressed = true;
            }

            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, chooseLevelButton))
            {
                
                isButtonPressed = true;
                chooseLevelButtonPressed = true;
            }

            if (CheckMouseInsideButton(mouseX, mouseY, playButton))
            {
                activatePlayButton();
            }
            if (CheckMouseInsideButton(mouseX, mouseY, chooseLevelButton))
            {
                activateChooseLevelButton();
            }
        }

        private void activatePlayButton()
        {
            activeButton = playButton;
            isActiveButtonArrow = false;
            HandleButtonOutlinePositionChange();
        }

        private void activateChooseLevelButton()
        {
            activeButton = chooseLevelButton;
            isActiveButtonArrow = false;
            HandleButtonOutlinePositionChange();
        }
    }
}
