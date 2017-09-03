using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class StoreLevel : BaseLevel
    {
        public float storeLevelCharX;
        public float storeLevelCharY;
        Vector2 storeLevelCharacterPositionVector;

        public StoreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel() {
            base.InitializeLevel();

            storeLevelCharacterPositionVector = new Vector2(storeLevelCharX, storeLevelCharY);
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);

            spriteBatch.Draw(AssetManager.Instance.storeLevelCharacterTexture, storeLevelCharacterPositionVector);
        }

        public override void Update(GameTime gameTime, GameController gameController) {
            base.Update(gameTime, gameController);

            if(PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth) {
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
