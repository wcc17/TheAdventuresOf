using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class PreLevel : BaseLevel
    {
        //TODO: all (or most of) of this should be loaded from XML
        public const int PRE_LEVEL_TEXT_INDEX = 0;
        public static float textThreshold = 400;
        public static float textX = 1100;
        public static float textY = 500;

        public bool textAdded;

        public float preLevelCharX;
        Vector2 preLevelCharacterPositionVector;

        public PreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel() {
            base.InitializeLevel();

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
                    TextManager.Instance.AddOrUpdateText(textX, textY, "Can I have your sword when you die?", PRE_LEVEL_TEXT_INDEX);
                }
            }

            if(PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth) {
                TextManager.Instance.RemoveText(PRE_LEVEL_TEXT_INDEX);
                nextLevel = true;
            }
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
