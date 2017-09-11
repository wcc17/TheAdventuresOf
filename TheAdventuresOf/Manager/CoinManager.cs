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
        int coinTotal;
        float groundLevel;
        Random rand;

		public static float coinYOffset;
        public static int coinXSpacing;

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
        }

        //TODO: this should eventually take in monster and increase oddds a little for certain monsters
        public void AddCoins(float x, float y) {
            int numberOfCoins = rand.Next(5); //0 - 4 coins dropped

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

        public void checkCollisionWithPlayer(Rectangle playerBounds) {
            foreach(Coin coin in coins) {
                if(coin.bounds.Intersects(playerBounds)) {
                    coinTotal += coin.coinValue;
                    coinsToRemove.Add(coin);
                }
            }

            coins.RemoveAll(c => coinsToRemove.Contains(c));
            coinsToRemove.Clear();
        }

        public void Update(GameTime gameTime) {
            checkCollisionWithPlayer(PlayerManager.Instance.GetPlayerBounds());

            foreach(Coin coin in coins) {
                coin.Update(gameTime);
            }

            Logger.Instance.AddOrUpdateValue("Total Coins: ", coinTotal.ToString());
            Logger.WriteToConsole("number of coins on field: " + coins.Count);
        }

        public void Draw(SpriteBatch spriteBatch) {
            foreach(Coin coin in coins) {
                coin.Draw(spriteBatch);
            }
        }

        public void UpdateGroundLevel(float newGroundLevel) {
            this.groundLevel = newGroundLevel;
        }
    }
}
