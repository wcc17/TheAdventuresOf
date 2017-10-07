using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class Coin
    {
        public const int BRONZE_COIN_AMOUNT = 1;
        public const int SILVER_COIN_AMOUNT = 3;
        public const int GOLD_COIN_AMOUNT = 5;

        public static float coinDropSpeed;
        public static float coinFloatSpeed;
        public static float coinFloatLimit;
        public static float coinFadeSpeed;
        public static float coinFlickerSpeed;
        public static float coinFlickerLimit; //should be an odd number so that coin fades out one last time
        public static float coinFlickerIncreaseAmount;
        public static float coinDisappearTimeLimit;

        public int coinValue;
        public Vector2 positionVector;
        public Rectangle bounds;
        public bool coinPickedUp;
        public bool isActive;
        public float alpha;

        Timer coinDisappearTimer = new Timer(coinDisappearTimeLimit);
        bool coinShouldDisappear;
        int flickerMultiplier = -1;
        int flickerCounter = 0;
        float groundLevel;
        float deltaCoinFlickerSpeed;

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

            //so we don't have to keep resetting original coinFlickerSpeed in coinManager. I hate that
            deltaCoinFlickerSpeed = coinFlickerSpeed;
        }

        public void Update(GameTime gameTime) {
            //if coin not picked up, drop the coin to the ground (or move it up to the ground)
            //if coin not picked up and timer has changed coinShouldDisappear to true, start fading out coin, then make inactive
            //if coin picked up, fade out above players head, then make inactive
            if(!coinPickedUp) {
                handleCoinOnGround(gameTime);
            } else {
                handleCoinPickedUp(gameTime);
            }

            if(coinShouldDisappear) {
                handleCoinFlicker(gameTime);
            }
        }

        public void CoinPickedUp() {
            coinPickedUp = true;
            alpha = 1.0f; //in case it already started to disappear
        }

        void handleCoinOnGround(GameTime gameTime) {
            if (positionVector.Y < groundLevel)
            {
                positionVector.Y += (float)(coinDropSpeed * gameTime.ElapsedGameTime.TotalSeconds);
                bounds.Y = (int)positionVector.Y;
            }
            else if (positionVector.Y > groundLevel)
            {
                positionVector.Y = groundLevel;
                bounds.Y = (int)positionVector.Y;
            }

            if(!coinShouldDisappear) {
                handleCoinDisappearDelay(gameTime);
            }
        }

        void handleCoinFlicker(GameTime gameTime) {
            alpha += ((float)(deltaCoinFlickerSpeed * gameTime.ElapsedGameTime.TotalSeconds) * flickerMultiplier);
            if (alpha <= 0 || alpha >= 1) {
                deltaCoinFlickerSpeed += coinFlickerIncreaseAmount;
                flickerMultiplier *= -1;
                flickerCounter++;

                if(flickerCounter >= coinFlickerLimit) {
                    isActive = false;
                }
            }
        }

        void handleCoinPickedUp(GameTime gameTime) {
            alpha -= (float)(coinFadeSpeed * gameTime.ElapsedGameTime.TotalSeconds);
            positionVector.Y -= (float)(coinFloatSpeed * gameTime.ElapsedGameTime.TotalSeconds);

            if (positionVector.Y <= (PlayerManager.Instance.GetPlayerPosition().Y - coinFloatLimit)) {
                isActive = false;
            }
        }

        void handleCoinDisappearDelay(GameTime gameTime)
        {
            bool timeUp = coinDisappearTimer.IsTimeUp(gameTime.ElapsedGameTime);
            if(timeUp) {
                coinShouldDisappear = true;
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
