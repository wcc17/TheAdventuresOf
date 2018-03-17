﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class PreLevel : BaseLevel
    {
        const float PRE_LEVEL_CHAR_TEXT_OFFSET_X = 0.041f;
        const float PRE_LEVEL_CHAR_TEXT_OFFSET_Y = 0.037f;
        const float PLAYER_MOVEMENT_TIMER_DELAY = 4.2f;
        const float BEFORE_MOVEMENT_TIMER_DELAY = 4.0f;

        public static float preLevelCharX;
        public static string preLevelCharText;

        Timer playerMovementTimer;
        Timer beforeMovementTimer;

        Vector2 preLevelTextPositionVector;
        Vector2 preLevelCharacterPositionVector;
		float textX;
		float textY;

        public PreLevel(Texture2D levelTexture, GameController gameController) 
            : base(levelTexture: levelTexture) { 
            gameController.Lock();
            charTextScale = 1.0f;
        }

        public override void InitializeLevel(bool usePlayerSpawnAnimation) {
            base.InitializeLevel(usePlayerSpawnAnimation);

            playerMovementTimer = new Timer(PLAYER_MOVEMENT_TIMER_DELAY);
            beforeMovementTimer = new Timer(BEFORE_MOVEMENT_TIMER_DELAY);

            preLevelCharacterPositionVector = new Vector2(preLevelCharX, groundLevel);

            textX = preLevelCharacterPositionVector.X
                    - (AssetManager.Instance.font.MeasureString(preLevelCharText).X / 2)
                    - (ScreenManager.VIRTUAL_SCREEN_WIDTH * PRE_LEVEL_CHAR_TEXT_OFFSET_X);
            textY = preLevelCharacterPositionVector.Y
                    - (AssetManager.Instance.font.MeasureString(preLevelCharText).Y / 2)
                    - (ScreenManager.VIRTUAL_SCREEN_HEIGHT * PRE_LEVEL_CHAR_TEXT_OFFSET_Y);
            characterTextPositionVector = new Vector2(textX, textY);

            characterText = preLevelCharText;
        }

        public override void Draw(SpriteBatch spriteBatch) {
            base.Draw(spriteBatch);
            spriteBatch.Draw(AssetManager.Instance.preLevelCharacterTexture, preLevelCharacterPositionVector);
            DrawCharacterDialogText(spriteBatch, charTextScale);
        }

        public override void Update(GameTime gameTime, GameController gameController) {
            base.Update(gameTime, gameController);
            UpdateDialogText(gameTime);

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
