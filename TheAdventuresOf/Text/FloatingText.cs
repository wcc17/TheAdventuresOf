using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class FloatingText : Text
    {
        public static float textFloatSpeed;

        public FloatingText(float startX, float startY, string text, int index) : base(startX, startY, text, index) { }

    }
}
