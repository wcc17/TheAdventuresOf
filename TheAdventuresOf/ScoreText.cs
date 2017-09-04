using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class ScoreText : Text
    {
        public static float textFloatSpeed;

        public ScoreText(float startX, float startY, string text, int index) : base(startX, startY, text, index) { }

        public override void Update(GameTime gameTime)
        {
            //update position
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);

            alpha -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textDisappearSpeed);
            if (alpha <= 0.0f)
            {
                isActive = false;
            }
        }
    }
}
