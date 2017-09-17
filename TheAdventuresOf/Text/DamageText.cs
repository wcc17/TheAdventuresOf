using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class DamageText : Text
    {
        public DamageText(float startX, float startY, string text, int index) : base(startX, startY, text, index) {
            color = Color.Red;
        }

        public override void Update(GameTime gameTime)
        {
            positionVector.X += (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            positionVector.Y -= (float)(gameTime.ElapsedGameTime.TotalSeconds * textFloatSpeed);
            base.Update(gameTime);
        }
    }
}
