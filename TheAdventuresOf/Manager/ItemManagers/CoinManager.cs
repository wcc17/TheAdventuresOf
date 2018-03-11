using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class CoinManager : ItemManager
    {
        private static CoinManager instance;
        
        Random rand;
        int coinTotal;

		public static float coinYOffset;
        public static int coinXSpacing;
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
        public static Boolean isEndlessMode; //coins should not work/show on endless mode

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

            if(TheAdventuresOf.giveCoins) {
				coinTotal = 20000;
            }
			
            rand = new Random();
        }

        public override void AddItem(float x, float y) {
            if(!isEndlessMode) {
                addItem(x, y);
            }
        }

        public override void CheckItemsCollisionWithPlayer(Rectangle playerBounds) {
            if(!isEndlessMode) {
                base.CheckItemsCollisionWithPlayer(playerBounds);
            }
        }

        public override void CheckCollisionWithLevel(Rectangle levelBoundsLeft, Rectangle levelBoundsRight) {
            if(!isEndlessMode) {
                base.CheckCollisionWithLevel(levelBoundsLeft, levelBoundsRight);
            }
        }

        public override void Update(GameTime gameTime)
        {
            if(!isEndlessMode) {
                base.Update(gameTime);
                Logger.Instance.AddOrUpdateValue("ScreenCoins", items.Count.ToString());
            }
        }

        public override void Draw(SpriteBatch spriteBatch) {
            if(!isEndlessMode) {
				base.Draw(spriteBatch);
            }
        }

        public void DrawCoinCount(SpriteBatch spriteBatch,
                           Vector2 coinCountSymbolPositionVector,
                           Vector2 coinCountPositionVector)
        {
            if(!isEndlessMode) {
				spriteBatch.Draw(AssetManager.Instance.goldCoinTexture, coinCountSymbolPositionVector);
				spriteBatch.DrawString(AssetManager.Instance.font, " x " + coinTotal, coinCountPositionVector, Color.White);
            }
        }

        public override void HandleItemPickedUp(Item item)
        {
            base.HandleItemPickedUp(item);
            Coin coin = (Coin)item;
            coinTotal += coin.coinValue;
        }

        public int GetCoinTotal()
        {
            return coinTotal;
        }

        public void SubtractFromCoins(int amount)
        {
            coinTotal -= amount;
        }

        void addItem(float x, float y)
        {
            base.AddItem(x, y);

            int numCoinDist = rand.Next(10); //0 - 9
            int numberOfCoins = 0;

            /**
             * Skipping XML importing for this for now. Relatively easy to understand
             * and may be made more complicated by assigning variable names.
             * Just making it less likely for a high number of coins to spawn.
             * 0 coins is most likely, then 1 coin, etc.
             **/
            if (numCoinDist < 4)
            { //0, 1, 2, 3
                numberOfCoins = 0;
            }
            else if (numCoinDist < 7)
            { //4, 5, 6
                numberOfCoins = 1;
            }
            else if (numCoinDist < 9)
            { //7, 8
                numberOfCoins = 2;
            }
            else if (numCoinDist == 9)
            { //9
                numberOfCoins = 3;
            }

            for (int i = 0; i < numberOfCoins; i++)
            {
                int randomCoinValue = rand.Next(1, 11); //get numbers 1-10 

                //move the next coin over a little bit so its easy to tell the different coins on the ground
                int coinX = ((int)x + (i * coinXSpacing));

                if (randomCoinValue <= randomCoinLimitBronze)
                {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.bronzeCoinTexture.Width,
                                       AssetManager.Instance.bronzeCoinTexture.Height,
                                       Coin.BRONZE_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                }
                else if (randomCoinValue <= randomCoinLimitSilver)
                {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.silverCoinTexture.Width,
                                       AssetManager.Instance.silverCoinTexture.Height,
                                       Coin.SILVER_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                }
                else if (randomCoinValue <= randomCoinLimitGold)
                {
                    items.Add(new Coin(coinX, y, AssetManager.Instance.goldCoinTexture.Width,
                                       AssetManager.Instance.goldCoinTexture.Height,
                                       Coin.GOLD_COIN_AMOUNT, groundLevel, coinDropSpeed,
                                       coinFloatSpeed, coinFloatLimit, coinFadeSpeed, coinFlickerSpeed,
                                       coinFlickerLimit, coinFlickerIncreaseAmount, coinDisappearTimeLimit));
                }
            }
        }

        public void ResetCoins() {
            coinXSpacing = 0;
        }
    }
}

