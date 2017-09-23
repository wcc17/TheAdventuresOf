using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class BaseLevel
    {
        public Vector2 levelPositionVector;

        public Rectangle leftSideBounds;
        public Rectangle rightSideBounds;

        public int leftBoundWidth;
        public int rightBoundWidth;
        public float groundLevel;
        public float playerStartX;

        public Texture2D levelTexture;

        public bool nextLevel; //when its time to go to next level, set to true

        public BaseLevel(Texture2D levelTexture)
        {
            levelPositionVector = new Vector2(0, 0);
            this.levelTexture = levelTexture;
            TextManager.Instance.RemoveAllText();
        }

        public virtual void InitializeLevel() {
            leftSideBounds = new Rectangle(0, 0, leftBoundWidth, levelTexture.Height);
            rightSideBounds = new Rectangle(levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, levelTexture.Height);

            PlayerManager.Instance.InitializePlayerManager(this);
        }

        public virtual void Update(GameTime gameTime, GameController gameController) {
            PlayerManager.Instance.Update(gameTime, gameController);
        }

        public virtual void Draw(SpriteBatch spriteBatch) {
            //Draw level
            spriteBatch.Draw(levelTexture, levelPositionVector);

            //Draw player
            PlayerManager.Instance.Draw(spriteBatch);
        }

        public virtual void CheckCollisionWithBounds(Entity entity)
        {
            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }

            if (rightSideBounds.Intersects(entity.entityBounds))
            {
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
    }
}
