﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Coin
    {
        public const int BRONZE_COIN_AMOUNT = 1;
        public const int SILVER_COIN_AMOUNT = 3;
        public const int GOLD_COIN_AMOUNT = 5;

        public int coinValue;
        public Vector2 positionVector;
        public Rectangle bounds;

        public static float coinDropSpeed;
        float groundLevel;

        public static float coinFloatSpeed;
        public static float coinFloatLimit;
        public static float coinFadeSpeed;
        public bool coinPickedUp;
        public bool isActive;
        public float alpha;

        public Coin(float x, float y, int width, int height, int coinValue, float baseGroundLevel)
        {
            this.groundLevel = baseGroundLevel;

            //adjust for coins being different sizes so that they all sit on the ground at the same place
            //the gold coin sits perfectly on the ground. The other two have to be adjusted a little bit relative to it
            switch(coinValue) {
                case BRONZE_COIN_AMOUNT:
                    this.groundLevel += (AssetManager.Instance.goldCoinTexture.Height - AssetManager.Instance.bronzeCoinTexture.Height);
                    break;
                case SILVER_COIN_AMOUNT:
                    this.groundLevel += (AssetManager.Instance.goldCoinTexture.Height - AssetManager.Instance.silverCoinTexture.Height);
                    break;
            }

            positionVector = new Vector2(x, y);
            bounds = new Rectangle((int)x, (int)y, width, height);
            this.coinValue = coinValue;

            alpha = 1.0f;
            isActive = true;
        }

        public void Update(GameTime gameTime) {
            if(!coinPickedUp) {
                if (positionVector.Y < groundLevel) {
                    positionVector.Y += (float)(coinDropSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                    bounds.Y = (int)positionVector.Y;
                } else if (positionVector.Y > groundLevel) {
                    positionVector.Y = groundLevel;
                    bounds.Y = (int)positionVector.Y;
                }
            } else {
                positionVector.Y -= (float)(coinFloatSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                alpha -= (float)(coinFadeSpeed * gameTime.ElapsedGameTime.TotalSeconds);

                if(positionVector.Y <= (PlayerManager.Instance.GetPlayerPosition().Y - coinFloatLimit)) {
                    isActive = false;
                }
            }
        }

        public void Draw(SpriteBatch spriteBatch) {

            Texture2D coinTexture = null; //TODO: should I be assigning the texture?

            switch (coinValue)
            {
                case BRONZE_COIN_AMOUNT:
                    coinTexture = AssetManager.Instance.bronzeCoinTexture;
                    break;
                case SILVER_COIN_AMOUNT:
                    coinTexture = AssetManager.Instance.silverCoinTexture;
                    break;
                case GOLD_COIN_AMOUNT:
                    coinTexture = AssetManager.Instance.goldCoinTexture;
                    break;
            }

            if (coinTexture != null) {
                spriteBatch.Draw(coinTexture, positionVector, color: Color.White * alpha);
            }
        }
    }
}
