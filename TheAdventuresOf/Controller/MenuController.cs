﻿using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        public static Vector2 playButtonPositionVector;

        static Button playButton;
        public bool playButtonPressed;
        public bool isButtonPressed;

        public override void InitializeController() {
            base.InitializeController();

            playButton = new Button(AssetManager.Instance.menuPlayButtonTexture.Width,
                                    AssetManager.Instance.menuPlayButtonTexture.Height,
                                    playButtonPositionVector.X,
                                    playButtonPositionVector.Y);
        }

        public override void HandleInput(List<Point> points) {
            #if __IOS__ || __ANDROID__
                base.HandleInput(points);
            #else
                HandleInputWindows(points);
            #endif
        }

        public override void HandleSingleInput(Point point) {
            if (playButton.IsPressed(point))
            {
                isButtonPressed = true;
                playButtonPressed = true;
            }
        }

        public void HandleInputWindows()
        {
            if (GamePad.GetState(PlayerIndex.One).Buttons.A == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Enter))
            {
                isButtonPressed = true;
                playButtonPressed = true;
            }
        }

        public override void HandleImpacts() {
            HandleImpact(playButton, playButtonPressed);
        }

        public override void ResetButtonPressedValues() 
        {
            isButtonPressed = false;
            playButtonPressed = false;
        }

        public override void Draw(SpriteBatch spriteBatch) {

            //Draw player button
            playButton.Draw(spriteBatch, AssetManager.Instance.menuPlayButtonTexture);
        }
    }
}
