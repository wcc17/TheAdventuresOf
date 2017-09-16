using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class GameController : Controller
    {
        public bool isButtonPressed;
        public bool leftButtonPressed;
        public bool rightButtonPressed;
        public bool jumpButtonPressed;
        public bool pauseButtonPressed;

        public override void InitializeController() {
            base.InitializeController();
        }

        public override void HandleImpacts()
        {
            base.HandleImpacts();
        }

        public override void ResetButtonPressedValues()
        {
            isButtonPressed = false;
            leftButtonPressed = false;
            rightButtonPressed = false;
            jumpButtonPressed = false;
            pauseButtonPressed = false;
        }
    }
}
