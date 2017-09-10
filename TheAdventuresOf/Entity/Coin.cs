using System;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class Coin
    {
        public int coinValue;
        public Vector2 positionVector;
        public Rectangle bounds;

        public Coin(int x, int y, int width, int height, int coinValue)
        {
            positionVector = new Vector2(x, y);
            bounds = new Rectangle(x, y, width, height);
            this.coinValue = coinValue;
        }
    }
}
