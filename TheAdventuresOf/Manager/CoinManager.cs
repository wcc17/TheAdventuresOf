using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class CoinManager
    {
        public static float coinOffset;

        private static CoinManager instance;

        List<Coin> coinsToRemove; //so I'm not making a new list every frame
        List<Coin> coins;
        int coinTotal;
        float groundLevel;

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
        }

        //TODO: this should eventually take in monster and increase oddds a little for certain monsters
        public void AddCoin(float x, float y) {


            //need to get random amount of coins
            //need to get random distribution of coins
            int coinValue = 9;
            coins.Add(new Coin(x, y, AssetManager.Instance.bronzeCoinTexture.Width, AssetManager.Instance.bronzeCoinTexture.Height, 1, groundLevel));
            coins.Add(new Coin(x, y, AssetManager.Instance.silverCoinTexture.Width, AssetManager.Instance.silverCoinTexture.Height, 3, groundLevel));
            coins.Add(new Coin(x, y, AssetManager.Instance.goldCoinTexture.Width, AssetManager.Instance.goldCoinTexture.Height, 5, groundLevel));
            coinTotal += coinValue;
        }

        public void checkCollisionWithPlayer(Rectangle playerBounds) {
            foreach(Coin coin in coins) {
                if(coin.bounds.Intersects(playerBounds)) {
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
