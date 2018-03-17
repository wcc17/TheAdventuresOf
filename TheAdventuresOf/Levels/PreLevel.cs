using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class PreLevel : BaseLevel
    {
        public static float textThreshold;
        public static float textX;
        public static float textY;
        public static float preLevelCharX;
        public static string preLevelCharText;

        public Timer playerMovementTimer = new Timer(3.2f);
        public Timer beforeMovementTimer = new Timer(5.0f);

        Vector2 preLevelCharacterPositionVector;

        public PreLevel(Texture2D levelTexture, GameController gameController) 
            : base(levelTexture: levelTexture) { 
            gameController.Lock();
        }

        public override void InitializeLevel(bool usePlayerSpawnAnimation) {
            base.InitializeLevel(usePlayerSpawnAnimation);

            preLevelCharacterPositionVector = new Vector2(preLevelCharX, groundLevel);

            TextManager.Instance.AddOrUpdateIndexedText(textX, textY, preLevelCharText, Color.White, GlobalTextIndexConstants.PRE_LEVEL_TEXT_INDEX);
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);

            spriteBatch.Draw(AssetManager.Instance.preLevelCharacterTexture, preLevelCharacterPositionVector);
        }

        public override void Update(GameTime gameTime, GameController gameController) {
            base.Update(gameTime, gameController);

            if(beforeMovementTimer.IsTimeUp(gameTime.ElapsedGameTime)) {

                handlePlayerMovement(gameTime);

                if (playerMovementTimer.IsTimeUp(gameTime.ElapsedGameTime))
                {
                    TextManager.Instance.RemoveText(GlobalTextIndexConstants.PRE_LEVEL_TEXT_INDEX);
                    gameController.Unlock();
                    GoToNextState();
                }
            }
        }

        public override void CheckCollisionWithBounds(Entity entity)
        {
            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }
        }

        void handlePlayerMovement(GameTime gameTime) {
            PlayerManager.Instance.MovePlayer(gameTime);
        }

        public override void CheckPlayerCollisionWithMonster(Monster monster) { }
        public override void CheckPlayerCollisionProjectile(Projectile proj) { }
    }
}
