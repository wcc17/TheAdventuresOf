using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class BaseLevel
    {
        //Used to prevent accidental jumps or pauses at beginnings of levels 
        //can consider using XML if need different values on different levels in the future
		public const float DELAY_PLAYER_MOVEMENT_TIME_LIMIT = 0.4f;

        public Vector2 levelPositionVector;
        public Rectangle leftSideBounds;
        public Rectangle rightSideBounds;
		public Texture2D levelTexture;
        public int leftBoundWidth;
        public int rightBoundWidth;
        public float groundLevel;
        public float playerStartX;
		public bool nextLevel;

        public Timer delayPlayerMovementTimer;
        public bool isDelayingMovement = true;

        public BaseLevel(Texture2D levelTexture)
        {
            levelPositionVector = new Vector2(0, 0);
            this.levelTexture = levelTexture;
            TextManager.Instance.RemoveAllText();
        }

        public virtual void InitializeLevel(bool usePlayerSpawnAnimation) {
            leftSideBounds = new Rectangle(0, 0, leftBoundWidth, levelTexture.Height);
            rightSideBounds = new Rectangle(levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, levelTexture.Height);

            PlayerManager.Instance.InitializePlayerManager(this, usePlayerSpawnAnimation);

            delayPlayerMovementTimer = new Timer(DELAY_PLAYER_MOVEMENT_TIME_LIMIT);
        }

        public virtual void Update(GameTime gameTime, GameController gameController) {
            HandleDelayMovementTimer(gameTime, gameController);

            PlayerManager.Instance.Update(gameTime, gameController);

            HealthShieldManager.Instance.Update();
        }

        public virtual void Draw(SpriteBatch spriteBatch) {
            //Draw level
            spriteBatch.Draw(levelTexture, levelPositionVector);

            //Draw player
            PlayerManager.Instance.Draw(spriteBatch);

            HealthShieldManager.Instance.Draw(spriteBatch);
        }

        /**
         * There are certain situations where we want to choose when we draw the level
         * With this method we can still draw the important things (player, health, etc.)
         * Then we can manually draw the level somewhere else. Example in StoreLevel.cs
         **/
        public void DrawWithoutLevel(SpriteBatch spriteBatch)
        {
            //Draw player
            PlayerManager.Instance.Draw(spriteBatch);

            HealthShieldManager.Instance.Draw(spriteBatch);
        }

        public virtual void CheckCollisionWithBounds(Entity entity)
        {
            entity.isCollidingWithLevelBounds = false;

            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.isCollidingWithLevelBounds = true;
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }

            if (rightSideBounds.Intersects(entity.entityBounds))
            {
                entity.isCollidingWithLevelBounds = true;
                entity.HandleLevelBoundCollision(Entity.RIGHT, levelTexture.Width - rightBoundWidth);
            }
        }

        public virtual void CheckPlayerCollisionProjectile(Projectile proj)
        {
            PlayerManager.Instance.CheckPlayerCollisionProjectile(proj);
        }

        public virtual void CheckPlayerCollisionWithMonster(Monster monster)
        {
            PlayerManager.Instance.CheckPlayerCollisionWithMonster(monster);
        }

        public virtual void HandleDelayMovementTimer(GameTime gameTime, GameController gameController) 
        {
            if (!delayPlayerMovementTimer.IsTimeUp(gameTime.ElapsedGameTime))
            {
                gameController.ResetButtonPressedValues();
            }
            else
            {
                isDelayingMovement = false;
            }
        }
    }
}
