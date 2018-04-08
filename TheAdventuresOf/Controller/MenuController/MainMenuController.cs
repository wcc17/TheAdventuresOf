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
        public const int HELP_MENU_BUTTON_ACTIVE = 2;

        public const int ACTIVE_BUTTON_INDEX_MIN = 0;
        public const int ACTIVE_BUTTON_INDEX_MAX = 2; //highest number from all the x_ACTIVE variables
        int activeButtonIndex = 0;

        public static float playButtonX;
        public static float playButtonY;

        public bool isButtonPressed;

        public Button playButton;
        public bool playButtonPressed;
        Texture2D playButtonTexture;

        public Button chooseLevelButton;
        public bool chooseLevelButtonPressed;
        Texture2D chooseLevelButtonTexture;

        public Button helpButton;
        public bool helpButtonPressed;
        Texture2D helpButtonTexture;
        
        /**
         * Must be called before InitializeController()
         */
        public  void InitializeTextures(Texture2D playButtonTexture, 
                                       Texture2D chooseLevelButtonTexture,
                                       Texture2D arrowOutlineTexture,
                                       Texture2D buttonOutlineTexture,
                                       Texture2D helpButtonTexture)
        {
            InitializeOutlineTextures(arrowOutlineTexture, buttonOutlineTexture);
            this.playButtonTexture = playButtonTexture;
            this.chooseLevelButtonTexture = chooseLevelButtonTexture;
            this.helpButtonTexture = helpButtonTexture;
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
                                           playButtonX,
                                           playButtonY + (chooseLevelButtonTexture.Height) + 20);

            helpButton = new Button(helpButtonTexture.Width,
                                    helpButtonTexture.Height,
                                    chooseLevelButton.buttonPositionVector.X,
                                    chooseLevelButton.buttonPositionVector.Y + (helpButtonTexture.Height) + 20);

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
            } else if(helpButton.IsPressed(point)) {
                isButtonPressed = true;
                helpButtonPressed = true;
            }
        }

        public override void HandleImpacts()
        {
            HandleImpact(playButton, playButtonPressed);
            HandleImpact(chooseLevelButton, chooseLevelButtonPressed);
            HandleImpact(helpButton, helpButtonPressed);
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            playButtonPressed = false;
            chooseLevelButtonPressed = false;
            helpButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);

            playButton.Draw(spriteBatch, playButtonTexture);
            chooseLevelButton.Draw(spriteBatch, chooseLevelButtonTexture);
            helpButton.Draw(spriteBatch, helpButtonTexture);
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
                    case HELP_MENU_BUTTON_ACTIVE:
                        isButtonPressed = true;
                        helpButtonPressed = true;
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
                    case HELP_MENU_BUTTON_ACTIVE:
                        activateHelpButton();
                        break;
                }

                gamePadButtonPressed = false;
            }
        }

        public override void HandleInputWindowsController_WaitForRelease()
        {
            bool upButtonPressedAndReleased = (activeButtonIndex == PLAY_BUTTON_ACTIVE)
                && GamePad.GetState(PlayerIndex.One).DPad.Up == ButtonState.Released;
            //bool downButtonPressedAndReleased = (activeButtonIndex == CHOOSE_LEVEL_BUTTON_ACTIVE)
                //&& GamePad.GetState(PlayerIndex.One).DPad.Down == ButtonState.Released;
            bool helpButtonPressedAndReleased = (activeButtonIndex == HELP_MENU_BUTTON_ACTIVE)
                && GamePad.GetState(PlayerIndex.One).DPad.Down == ButtonState.Released;

            if(upButtonPressedAndReleased
               || helpButtonPressedAndReleased)
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

            if (CheckButtonInputWindows(mouseState, mouseX, mouseY, helpButton))
            {
                isButtonPressed = true;
                helpButtonPressed = true;
            }

            if (CheckMouseInsideButton(mouseX, mouseY, playButton))
            {
                activatePlayButton();
            }
            if (CheckMouseInsideButton(mouseX, mouseY, chooseLevelButton))
            {
                activateChooseLevelButton();
            }
            if (CheckMouseInsideButton(mouseX, mouseY, helpButton)) {
                activateHelpButton();
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

        private void activateHelpButton() {
            activeButton = helpButton;
            isActiveButtonArrow = false;
            HandleButtonOutlinePositionChange();
        }
    }
}
