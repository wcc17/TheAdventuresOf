using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class StoreLevel : BaseLevel
    {
        //keeps track of which texts we've already given to the TextManager
        //TODO: this info needs to be loaded from XML rather than hardcoded in initializeLevel
        SortedDictionary<int, bool> textAddedFlags = new SortedDictionary<int, bool>();
        public static string welcomeText = "Welcome to my store!";
        public static string item1Text = "This is item 1";
        public static string item2Text = "This is item 2";
        public static string item3Text = "This is item 3";
        public static string byeText = "Goodbye!";
        public static int welcomeTextIndex = 0;
        public static int item1TextIndex = 1;
        public static int item2TextIndex = 2;
        public static int item3TextIndex = 3;
        public static int byeTextIndex = 4;
        public static float item1StartX = 260;
        public static float item1EndX = 540;
        public static float item2StartX = 670;
        public static float item2EndX = 955;
        public static float item3StartX = 1080;
        public static float item3EndX = 1365;
        bool item1TextAdded = false;
        bool item2TextAdded = false;
        bool item3TextAdded = false;
        bool welcomeTextAdded = false;
        bool byeTextAdded = false;
        public static float textX = 1500;
        public static float textY = 200;


        public float storeLevelCharX;
        public float storeLevelCharY;
        Vector2 storeLevelCharacterPositionVector;

        public StoreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel() {
            base.InitializeLevel();

            storeLevelCharacterPositionVector = new Vector2(storeLevelCharX, storeLevelCharY);

            PlayerManager.Instance.SetPlayerX(100);
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);

            spriteBatch.Draw(AssetManager.Instance.storeLevelCharacterTexture, storeLevelCharacterPositionVector);
        }

        public override void Update(GameTime gameTime, GameController gameController) {
            base.Update(gameTime, gameController);

            changeText();

            if(PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth) {
                resetText();
                nextLevel = true;
            }
        }

        //TODO: this could be imporoved a lot., THIS IS AWFUL
        public void changeText()
        {
            float playerX = PlayerManager.Instance.GetPlayerPosition().X;

            if (playerX < item1StartX) {
                if(!welcomeTextAdded) {
                    resetText();
                    TextManager.Instance.AddOrUpdateText(textX, textY, welcomeText, welcomeTextIndex);
                }
            } else if ( (playerX >= item1StartX) && (playerX <= item1EndX) ) {
                if (!item1TextAdded) {
                    resetText();
                    TextManager.Instance.AddOrUpdateText(textX, textY, item1Text, item1TextIndex);
                }
            } else if ( (playerX >= item2StartX) && (playerX <= item2EndX) ) {
                if (!item2TextAdded) {
                    resetText();
                    TextManager.Instance.AddOrUpdateText(textX, textY, item2Text, item2TextIndex);
                }
            } else if ( (playerX >= item3StartX) && (playerX <= item3EndX) ) {
                if (!item3TextAdded) {
                    resetText();
                    TextManager.Instance.AddOrUpdateText(textX, textY, item3Text, item3TextIndex);
                }
            } else if (playerX > item3EndX) {
                if (!byeTextAdded) {
                    resetText();
                    TextManager.Instance.AddOrUpdateText(textX, textY, byeText, byeTextIndex);
                }
            } else {
                resetText();
            }
        }

        private void resetText()
        {
            TextManager.Instance.RemoveAllText();
            item1TextAdded = false;
            item2TextAdded = false;
            item3TextAdded = false;
            welcomeTextAdded = false;
            byeTextAdded = false;
        }

        public override void CheckCollisionWithBounds(Entity entity)
        {
            //base.CheckCollisionWithBounds(entity);
        }

        public override void CheckPlayerCollisionWithMonster(Monster monster)
        {
            //base.CheckPlayerCollisionWithMonster(monster);
        }

        public override void CheckPlayerCollisionProjectile(Projectile proj)
        {
            //base.CheckPlayerCollisionProjectile(proj);
        }
    }
}
