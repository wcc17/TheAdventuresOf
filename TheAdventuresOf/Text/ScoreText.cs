using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class ScoreText : Text
    {
        public ScoreText(float startX, float startY, string text, Color color, int index) : base(startX, startY, text, color, index) { }

        public override void Update(GameTime gameTime)
        {
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            base.Update(gameTime);
        }
    }
}
