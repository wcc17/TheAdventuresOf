﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class StoreLevel : BaseLevel
    {
        public static float storeLevelCharX;
        public static float storeLevelCharY;
        public static float storeLevelCharTextX;
        public static float storeLevelCharTextY;
        public static string storeLevelCharText;
        Vector2 storeLevelCharacterPositionVector;

        public StoreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }


        public override void InitializeLevel(bool usePlayerSpawnAnimation)
        {
            base.InitializeLevel(usePlayerSpawnAnimation);
            storeLevelCharacterPositionVector = new Vector2(storeLevelCharX, storeLevelCharY);
            TextManager.Instance.AddOrUpdateIndexedText(storeLevelCharTextX, storeLevelCharTextY, storeLevelCharText, 1); //item text is using 0 for index
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            base.Draw(spriteBatch);
            spriteBatch.Draw(AssetManager.Instance.storeLevelCharacterTexture, storeLevelCharacterPositionVector);
        }

        public override void Update(GameTime gameTime, GameController gameController)
        {
            base.Update(gameTime, gameController);

            manageStoreText();

            if (PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth)
            {
                nextLevel = true;
            }
        }

        void manageStoreText() {
            float playerX = PlayerManager.Instance.GetPlayerPosition().X;

            //foreach (Text text in texts) {
            //    if(text.startX <= playerX && text.endX > playerX) {
            //        TextManager.Instance.AddOrUpdateIndexedText(text);
            //        break;
            //    }
            //}
        }

        public override void CheckCollisionWithBounds(Entity entity)
        {
            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }
        }

        public override void CheckPlayerCollisionWithMonster(Monster monster) { }

        public override void CheckPlayerCollisionProjectile(Projectile proj) { }
    }
}