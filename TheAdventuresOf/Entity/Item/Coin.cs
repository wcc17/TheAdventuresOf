using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Coin : Item
    {
        public const int BRONZE_COIN_AMOUNT = 1;
        public const int SILVER_COIN_AMOUNT = 3;
        public const int GOLD_COIN_AMOUNT = 5;

        public int coinValue;

        public Coin(float x, float y, int width, int height, int coinValue, float baseGroundLevel,
                    float dropSpeed, float floatSpeed, float floatLimit, float fadeSpeed, float flickerSpeed,
                    float flickerLimit, float flickerIncreaseAmount, float disappearTimeLimit) 
            : base(x, y, width, height, baseGroundLevel, dropSpeed, floatSpeed, floatLimit,
                  fadeSpeed, flickerSpeed, flickerLimit, flickerIncreaseAmount, disappearTimeLimit)
        {
            //adjust for coins being different sizes so that they all sit on the ground at the same place
            //the gold coin sits perfectly on the ground. The other two have to be adjusted a little bit relative to it
            switch (coinValue) {
                case BRONZE_COIN_AMOUNT:
                    this.groundLevel += (AssetManager.Instance.goldCoinTexture.Height - AssetManager.Instance.bronzeCoinTexture.Height);
                    break;
                case SILVER_COIN_AMOUNT:
                    this.groundLevel += (AssetManager.Instance.goldCoinTexture.Height - AssetManager.Instance.silverCoinTexture.Height);
                    break;
            }
           
            this.coinValue = coinValue;
        }

        public override void Draw(SpriteBatch spriteBatch) {
            switch (coinValue)
            {
                case BRONZE_COIN_AMOUNT:
                    base.Draw(spriteBatch, AssetManager.Instance.bronzeCoinTexture);
                    break;
                case SILVER_COIN_AMOUNT:
                    base.Draw(spriteBatch, AssetManager.Instance.silverCoinTexture);
                    break;
                case GOLD_COIN_AMOUNT:
                    base.Draw(spriteBatch, AssetManager.Instance.goldCoinTexture);
                    break;
                default:
                    throw new Exception("invalid coin amount in Coin.cs");
            }
        }
    }
}
