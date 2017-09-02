using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class GameController : Controller
    {
        public static Vector2 controllerPositionVector;
        public static Vector2 leftButtonPositionVector;
        public static Vector2 rightButtonPositionVector;
        public static Vector2 upButtonPositionVector;

        public bool isButtonPressed;
        public bool leftButtonPressed;
        public bool rightButtonPressed;
        public bool upButtonPressed;

        public override void InitializeController() {
            base.InitializeController();
        }

        public override void HandleImpacts()
        {
            base.HandleImpacts();
        }

        public override void HandleInput(Point point) { }
        public override void ResetButtonPressedValues() { }
        public override void Draw(SpriteBatch spriteBatch) { }
    }
}
