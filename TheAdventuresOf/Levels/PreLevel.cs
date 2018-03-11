using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class PreLevel : BaseLevel
    {
        public const int PRE_LEVEL_TEXT_INDEX = 0;
        public static float textThreshold;
        public static float textX;
        public static float textY;
        public static float preLevelCharX;
        public static string preLevelCharText;

        public bool textAdded; //to prevent text from being added more than once

        Vector2 preLevelCharacterPositionVector;

        public PreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel(bool usePlayerSpawnAnimation) {
            base.InitializeLevel(usePlayerSpawnAnimation);

            preLevelCharacterPositionVector = new Vector2(preLevelCharX, groundLevel);
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);

            spriteBatch.Draw(AssetManager.Instance.preLevelCharacterTexture, preLevelCharacterPositionVector);
        }

        public override void Update(GameTime gameTime, GameController gameController) {
            base.Update(gameTime, gameController);

            if(PlayerManager.Instance.GetPlayerPosition().X > textThreshold) {
                if(!textAdded)
                {
                    textAdded = true;
                    TextManager.Instance.AddOrUpdateIndexedText(textX, textY, preLevelCharText, PRE_LEVEL_TEXT_INDEX);
                }
            }

            if(PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth) {
                TextManager.Instance.RemoveText(PRE_LEVEL_TEXT_INDEX);
                //nextLevel = true;
                shouldTransitionOut = true;
            }
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
