using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class CoinManager
    {
        private const int bronzeCoinAmount = 1;
        private const int silverCoinAmount = 3;
        private const int goldCoinAmount = 5;

        private static CoinManager instance;

        public static float groundLevel;
        List<Coin> coinsToRemove; //so I'm not making a new list every frame
        List<Coin> coins;
        int coinTotal;

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
            groundLevel = PlayerManager.Instance.GetPlayerPosition().Y;
        }

        //TODO: this should eventually take in monster and increase oddds a little for monster
        public void AddCoin(float x) {

            //need to get random amount of coins
            //need to get random distribution of coins
            coins.Add(new Coin((int)x, (int)groundLevel, AssetManager.Instance.bronzeCoinTexture.Width, AssetManager.Instance.bronzeCoinTexture.Height, 1));
            coinTotal += 1;
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

        public void Update() {
            checkCollisionWithPlayer(PlayerManager.Instance.GetPlayerBounds());

            //TODO: hardcoded string
            Logger.Instance.AddOrUpdateValue("Total Coins: ", coinTotal.ToString());

            Logger.WriteToConsole("number of coins on field" + coinTotal.ToString());
        }

        public void Draw(SpriteBatch spriteBatch) {
            foreach(Coin coin in coins) {

                int coinValue = coin.coinValue;
                Texture2D coinTexture = null; //TODO: is this a bad thing to do?

                switch(coin.coinValue) {
                    case bronzeCoinAmount:
                        coinTexture = AssetManager.Instance.bronzeCoinTexture;
                        break;
                    case silverCoinAmount:
                        coinTexture = AssetManager.Instance.silverCoinTexture;
                        break;
                    case goldCoinAmount:
                        coinTexture = AssetManager.Instance.goldCoinTexture;
                        break;
                }

                if(coinTexture != null) {
                    spriteBatch.Draw(coinTexture, coin.positionVector);
                } else {
                    Console.WriteLine("THIS SHOULD NOT BE HAPPENING");
                }
            }
        }
    }
}
