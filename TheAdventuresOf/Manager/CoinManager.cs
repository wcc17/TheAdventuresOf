﻿using System;
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
                if(!coin.coinPickedUp && coin.bounds.Intersects(playerBounds)) {
                    coinTotal += coin.coinValue;

                    coin.positionVector.Y = PlayerManager.Instance.GetPlayerPosition().Y;
                    coin.coinPickedUp = true;
                }
            }
        }

        //TODO: look here if performance starts to get bad
        public void CheckCollisionWithLevel(Rectangle levelBoundsLeft, Rectangle levelBoundsRight) {
            foreach(Coin coin in coins) {
                if(coin.bounds.Intersects(levelBoundsLeft)) {
                    coin.positionVector.X = levelBoundsLeft.Width;
                    coin.bounds.X = (int)coin.positionVector.X;
                } else if(coin.bounds.Intersects(levelBoundsRight)) {
                    coin.positionVector.X = ScreenManager.FULL_SCREEN_WIDTH 
                        - levelBoundsRight.Width 
                        - coin.bounds.Width;
                    coin.bounds.X = (int)coin.positionVector.X;
                }
            }
        }

        public void Update(GameTime gameTime) {
            foreach(Coin coin in coins) {
                coin.Update(gameTime);

                if(!coin.isActive) {
                    coinsToRemove.Add(coin);
                }
            }

            coins.RemoveAll(c => coinsToRemove.Contains(c));
            coinsToRemove.Clear();

            Logger.Instance.AddOrUpdateValue("ScreenCoins", coins.Count.ToString());
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

        public void RemoveAllCoins() {
            coinsToRemove.Clear();
            coins.Clear();
        }
    }
}

