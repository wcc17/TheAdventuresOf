using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class CoinManager
    {
        private static CoinManager instance;

        List<Coin> coinsToRemove; //so I'm not making a new list every frame
        List<Coin> coins;
        Vector2 coinCountSymbolPositionVector;
        Vector2 coinCountPositionVector;
        int coinTotal;
        float groundLevel;
        Random rand;

		public static float coinYOffset;
        public static int coinXSpacing;
        public static float coinCountSymbolXOffset;
        public static float coinCountSymbolY;
        public static float coinCountY;

        //TODO: should I be changing these from level to level?
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

        private CoinManager() {
            coins = new List<Coin>();
            coinsToRemove = new List<Coin>();
            rand = new Random();

            coinCountSymbolPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH - coinCountSymbolXOffset, coinCountSymbolY);
            coinCountPositionVector = new Vector2(coinCountSymbolPositionVector.X + AssetManager.Instance.goldCoinTexture.Width, coinCountY);
        }

        //TODO: this should eventually take in monster and increase oddds a little for certain monsters
        public void AddCoins(float x, float y) {
            int numCoinDist = rand.Next(11); //0 - 10
            int numberOfCoins = 0;

            /**
             * Skipping XML importing for this for now. Relatively easy to understand
             * and may be made more complicated by assigning variable names.
             * Just making it less likely for a high number of coins to spawn.
             * 0 coins is most likely, then 1 coin, etc.
             **/
            if(numCoinDist < 3) {
                numberOfCoins = 0;
            } else if(numCoinDist < 6) {
                numberOfCoins = 1;
            } else if(numCoinDist < 8) {
                numberOfCoins = 2;
            } else if(numCoinDist < 9) {
                numberOfCoins = 3;
            } else if(numCoinDist < 10) {
                numberOfCoins = 4;
            }

            for (int i = 0; i < numberOfCoins; i++) {
				int randomCoinValue = rand.Next(1, 11); //get numbers 1-10 

				//move the next coin over a little bit so its easy to tell the different coins on the ground
                int coinX = ((int)x + (i * coinXSpacing)); 

                if(randomCoinValue <= randomCoinLimitBronze) {
                    coins.Add(new Coin(coinX, y, AssetManager.Instance.bronzeCoinTexture.Width,
                                       AssetManager.Instance.bronzeCoinTexture.Height, 
                                       Coin.BRONZE_COIN_AMOUNT, groundLevel));
                } else if(randomCoinValue <= randomCoinLimitSilver) {
                    coins.Add(new Coin(coinX, y, AssetManager.Instance.silverCoinTexture.Width,
                                       AssetManager.Instance.silverCoinTexture.Height,
                                       Coin.SILVER_COIN_AMOUNT, groundLevel));
                } else if(randomCoinValue <= randomCoinLimitGold) {
                    coins.Add(new Coin(coinX, y, AssetManager.Instance.goldCoinTexture.Width,
                                       AssetManager.Instance.goldCoinTexture.Height,
                                       Coin.GOLD_COIN_AMOUNT, groundLevel));
                }
            }
        }

        public void CheckCollisionWithPlayer(Rectangle playerBounds) {
            foreach(Coin coin in coins) {
                if(coin.bounds.Intersects(playerBounds)) {
                    coinTotal += coin.coinValue;
                    coinsToRemove.Add(coin);
                }
            }

            coins.RemoveAll(c => coinsToRemove.Contains(c));
            coinsToRemove.Clear();
        }

        //TODO: look here if performance starts to get bad
        public void CheckCollisionWithLevel(Rectangle levelBoundsLeft, Rectangle levelBoundsRight) {
            foreach(Coin coin in coins) {
                if(coin.bounds.Intersects(levelBoundsLeft)) {
                    coin.positionVector.X = levelBoundsLeft.X;   
                } else if(coin.bounds.Intersects(levelBoundsRight)) {
                    coin.positionVector.X = levelBoundsRight.X - coin.bounds.Width;
                }
            }
        }

        public void Update(GameTime gameTime) {
            foreach(Coin coin in coins) {
                coin.Update(gameTime);
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            foreach(Coin coin in coins) {
                coin.Draw(spriteBatch);
            }

            drawCoinCount(spriteBatch);
        }

        void drawCoinCount(SpriteBatch spriteBatch) {
            spriteBatch.Draw(AssetManager.Instance.goldCoinTexture, coinCountSymbolPositionVector);
            spriteBatch.DrawString(AssetManager.Instance.font, " x " + coinTotal, coinCountPositionVector, Color.White);
        }

        public void UpdateGroundLevel(float newGroundLevel) {
            this.groundLevel = newGroundLevel;
        }
    }
}

