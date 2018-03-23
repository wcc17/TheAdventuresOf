using Microsoft.Xna.Framework;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class HeartManager : ItemManager
    {
        private static HeartManager instance;

        Random rand;
        public static float heartYOffset;
        public static int heartXSpacing;
        public static float heartCountSymbolXOffset;
        public static float heartCountSymbolY;
        public static float heartCountY;
        public static float heartDropSpeed;
        public static float heartFloatSpeed;
        public static float heartFloatLimit;
        public static float heartFadeSpeed;
        public static float heartFlickerSpeed;
        public static float heartFlickerLimit; //should be an odd number so that heart fades out one last time
        public static float heartFlickerIncreaseAmount;
        public static float heartDisappearTimeLimit;
        public static float heartHealthValue;
        public static float smallHeartHealthValue;
        public static float smallHeartChance;
        public static float heartChance;
        public static float smallHeartLimit;
        public static float heartLimit;

        public static HeartManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new HeartManager();
                }

                return instance;
            }
        }
        private HeartManager() { }

        public override void Initialize()
        {
            base.Initialize();

            rand = new Random();
        }

        public void AddItem(float x, float y, bool isExplosion, bool isEndless)
        {
            base.AddItem(x, y);

            //this is called each time amonster is called
            //we want a random number of hearts
            int chancesToSpawnHeart = rand.Next((int)(smallHeartLimit + heartLimit)); //0 - smallHeartLimit + heartLimit

            int numHearts = 0;
            int numSmallHearts = 0;
            //for each i in numHearts, randomly choose whether to spawn a heart and which kind
            for(int i = 0; i < chancesToSpawnHeart; i++)
            {
                //move the next coin over a little bit so its easy to tell the different coins on the ground
                int heartX = ((int)x + (i * heartXSpacing));

                int shouldSpawnHeart = rand.Next(99); //0 - 99;
				float finalSmallHeartChance = smallHeartChance;
                float finalHeartChance = heartChance;
                if(isExplosion && isEndless) {
                    //a smaller number means a greater chance of a heart being spawned in that pass in the loop
                    //adding to a final heart chance variable increases the number of times we'll try to spawn a heart
                    shouldSpawnHeart = rand.Next(30); //0-30
                    finalSmallHeartChance += 2;
                    finalHeartChance += 1;
                } else if(isExplosion) {
                    shouldSpawnHeart = rand.Next(45); //0-45
                    finalSmallHeartChance += 1;
                }

                //smallHeartChance is currently 5 and heartChance is 1
                if (shouldSpawnHeart < finalSmallHeartChance)
                {
                    if(numSmallHearts < smallHeartLimit)
                    {
                        //spawn a small heart
                        numSmallHearts++;
                        items.Add(new Heart(heartX, y, AssetManager.Instance.heartSmallTexture.Width,
                            AssetManager.Instance.heartSmallTexture.Height, (int)smallHeartHealthValue, groundLevel,
                            heartDropSpeed, heartFloatSpeed, heartFloatLimit, heartFadeSpeed, heartFlickerSpeed,
                            heartFlickerLimit, heartFlickerIncreaseAmount, heartDisappearTimeLimit));
                    }
                }
                else if (shouldSpawnHeart < (finalSmallHeartChance + finalHeartChance))
                {
                    //if theres already a regular sized heart, just skip
                    if (numHearts < heartLimit)
                    {
                        //spawn a heart
                        numHearts++;
                        items.Add(new Heart(heartX, y, AssetManager.Instance.heartTexture.Width,
                            AssetManager.Instance.heartTexture.Height, (int)heartHealthValue, groundLevel,
                            heartDropSpeed, heartFloatSpeed, heartFloatLimit, heartFadeSpeed, heartFlickerSpeed,
                            heartFlickerLimit, heartFlickerIncreaseAmount, heartDisappearTimeLimit));
                    }
                }
                else
                {
                    //spawn nothing. leaving this here to make it obvious that this is a possible outcome
                }
            }
        }

        public override void HandleItemPickedUp(Item item)
        {
            base.HandleItemPickedUp(item);

            Heart heart = (Heart)item;
            HealthShieldManager.Instance.IncreaseHealthByAmount(heart.healthValue);

            if(heart.healthValue == HeartManager.smallHeartHealthValue) {
                SoundManager.Instance.PlaySoundEffect(SoundManager.SMALL_HEART_PICKUP);
            } else {
                SoundManager.Instance.PlaySoundEffect(SoundManager.BIG_HEART_PICKUP);
            }

            HealthText healthText = new HealthText(PlayerManager.Instance.GetPlayerPosition().X,
                                                   PlayerManager.Instance.GetPlayerPosition().Y, 
                                                   "+" + heart.healthValue.ToString(),
                                                   Color.Green,
                                                   TextManager.DEFAULT_TEXT_SCALE,
                                                   -1);
            TextManager.Instance.AddText(healthText);
        }

        public override void Update(GameTime gameTime)
        {
            base.Update(gameTime);
            Logger.Instance.AddOrUpdateValue("ScreenHearts", items.Count.ToString());
        }
    }
}
