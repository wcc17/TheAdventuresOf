using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class MenuController : Controller
    {
        //TODO: load this information in XML file
        public static Vector2 playButtonPositionVector;

        static Button playButton;
        public bool playButtonPressed;
        public bool isButtonPressed;

        public override void InitializeController() {
            base.InitializeController();

            //TODO: load this information in XML file
            playButtonPositionVector = new Vector2(200, 700);

            playButton = new Button(AssetManager.Instance.menuPlayButtonTexture.Width,
                                    AssetManager.Instance.menuPlayButtonTexture.Height,
                                    playButtonPositionVector.X,
                                    playButtonPositionVector.Y);
        }

        public override void HandleInput(Point point) {
            if (playButton.IsPressed(point)) {
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
