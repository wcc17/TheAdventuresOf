using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class CoinManager : ItemManager
    {
        private static CoinManager instance;
        
        Vector2 coinCountSymbolPositionVector;
        Vector2 coinCountPositionVector;
        Random rand;
        int coinTotal;
        int amountToAdd;
        int amountToSubtract;

		public static float coinYOffset;
        public static int coinXSpacing;
        public static float coinCountSymbolXOffset;
        public static float coinCountSymbolY;
        public static float coinCountY;
        public static float coinDropSpeed;
        public static float coinFloatSpeed;
        public static float coinFloatLimit;
        public static float coinFadeSpeed;
        public static float coinFlickerSpeed;
        public static float coinFlickerLimit; //should be an odd number so that coin fades out one last time
        public static float coinFlickerIncreaseAmount;
        public static float coinDisappearTimeLimit;
        public static int randomCoinLimitBronze;
        public static int randomCoinLimitSilver;
        public static int randomCoinLimitGold;

        public static CoinManager Instance {
            get {
                if (instance == null) {
                    instance = new CoinManager();
                }

                return instance;
            }
        }
        private CoinManager() { }

        public override void Initialize() {
            base.Initialize();

            coinTotal = 20000;

            rand = new Random();
            coinCountSymbolPositionVector = new Vector2(coinCountSymbolXOffset, coinCountSymbolY);
            coinCountPositionVector = new Vector2(coinCountSymbolPositionVector.X + AssetManager.Instance.goldCoinTexture.Width, coinCountY);
        }

        public override void AddItem(float x, float y) {
            base.AddItem(x, y);

            int numCoinDist = rand.Next(10); //0 - 9
            int numberOfCoins = 0;

            /**
             * Skipping XML importing for this for now. Relatively easy to understand
             * and may be made more complicated by assigning variable names.
             * Just making it less likely for a high number of coins to spawn.
             * 0 coins is most likely, then 1 coin, etc.
             **/
            if(numCoinDist < 4) { //0, 1, 2, 3
                numberOfCoins = 0;
            } else if(numCoinDist < 7) { //4, 5, 6
                numberOfCoins = 1;
            } else if(numCoinDist < 9) { //7, 8
                numberOfCoins = 2;
            } else if(numCoinDist == 9) { //9
                numberOfCoins = 3;
            }

            for (int i = 0; i < numberOfCoins; i++) {
				int randomCoinValue = rand.Next(1, 11); //get numbers 1-10 

				//move the next coin over a little bit so its easy to tell the different coins on the ground
                int coinX = ((int)x + (i * coinXSpacing)); 

                if(randomCoinValue <= randomCoinLimitBronze) {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.bronzeCoinTexture.Width,
                                       AssetManager.Instance.bronzeCoinTexture.Height, 
                                       Coin.BRONZE_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                } else if(randomCoinValue <= randomCoinLimitSilver) {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.silverCoinTexture.Width,
                                       AssetManager.Instance.silverCoinTexture.Height,
                                       Coin.SILVER_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                } else if(randomCoinValue <= randomCoinLimitGold) {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.goldCoinTexture.Width,
                                       AssetManager.Instance.goldCoinTexture.Height,
                                       Coin.GOLD_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                }
            }
        }

        public override void HandleItemPickedUp(Item item)
        {
            base.HandleItemPickedUp(item);
            Coin coin = (Coin)item;
            amountToAdd += coin.coinValue;
        }

        public override void Update(GameTime gameTime)
        {
            base.Update(gameTime);
            updateCoinAmount();
            Logger.Instance.AddOrUpdateValue("ScreenCoins", items.Count.ToString());
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);
            drawCoinCount(spriteBatch);
        }

        public int GetCoinTotal()
        {
            return coinTotal;
        }

        public void SubtractFromCoins(int amount)
        {
            amountToSubtract += amount;
        }

        void updateCoinAmount()
        {
            if (amountToSubtract > 0)
            {
                coinTotal--;
                amountToSubtract--;
            }

            if (amountToAdd > 0)
            {
                coinTotal++;
                amountToAdd--;
            }
        }

        void drawCoinCount(SpriteBatch spriteBatch)
        {
            spriteBatch.Draw(AssetManager.Instance.goldCoinTexture, coinCountSymbolPositionVector);
            spriteBatch.DrawString(AssetManager.Instance.font, " x " + coinTotal, coinCountPositionVector, Color.White);
        }
    }
}

