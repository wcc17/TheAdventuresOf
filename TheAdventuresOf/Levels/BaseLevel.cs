﻿using System;
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
        const float DIALOG_TIMER_DELAY = 0.040f;

		public Vector2 originVector = new Vector2(0, 0);
        public Vector2 levelPositionVector;
        public Vector2 dialogTextPositionVector;
        public Rectangle leftSideBounds;
        public Rectangle rightSideBounds;
        public Texture2D levelTexture;
        public int leftBoundWidth;
        public int rightBoundWidth;
        public float groundLevel;
        public float playerStartX;
        public float textScale = 1.0f;
        public Timer dialogTimer;
        public Timer delayPlayerMovementTimer;
		public bool nextLevel;
        public bool isDelayingMovement = true;
        public string dialogTextToDraw = "";
        public string dialogText;
        public bool hasAlreadyLetterBoxedIn;
        public bool hasAlreadyLetterBoxedOut;

        public BaseLevel(Texture2D levelTexture)
        {
            ScoringManager.Instance.ClearScores();
            levelPositionVector = new Vector2(0, 0);
            this.levelTexture = levelTexture;
            TextManager.Instance.RemoveAllText();
            dialogTimer = new Timer(DIALOG_TIMER_DELAY);
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
        }

        public virtual void DrawWithoutPlayer(SpriteBatch spriteBatch) {
            spriteBatch.Draw(levelTexture, levelPositionVector);
        }

        /**
         * There are certain situations where we want to choose when we draw the level
         * With this method we can still draw the important things (player, health, etc.)
         * Then we can manually draw the level somewhere else. Example in StoreLevel.cs.
         **/
        public void DrawWithoutLevel(SpriteBatch spriteBatch)
        {
            //Draw player
            PlayerManager.Instance.Draw(spriteBatch);
        }

        public virtual void DrawDialogText(SpriteBatch spriteBatch, float charTextScale) {
            TextManager.Instance.DrawOutlinedString(spriteBatch, 
                                                    dialogTextToDraw, 
                                                    dialogTextPositionVector, 
                                                    Color.White, 
                                                    charTextScale);
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

        public virtual void CheckPlayerCollisionWithMonster(Monster monster) { }

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

        public virtual void UpdateDialogText(GameTime gameTime)
        {
            if (dialogTimer.IsTimeUp(gameTime.ElapsedGameTime))
            {
                dialogTimer.Reset();

                int size = dialogTextToDraw.Length;
                if (size < dialogText.Length)
                {
                    dialogTextToDraw += dialogText[size];
                }
            }
        }

        public virtual void GoToNextState() {
            if (!nextLevel) {
                TransitionManager.Instance.FadeOut();
                nextLevel = true;
            }
        }

        public virtual void HandleLetterBoxingIn()
        {
            if (!hasAlreadyLetterBoxedIn)
            {
                hasAlreadyLetterBoxedIn = true;
                CutsceneManager.Instance.SetShouldLetterboxIn();
            }
        }

        public virtual void HandleLetterBoxingOut()
        {
            if (!hasAlreadyLetterBoxedOut)
            {
                hasAlreadyLetterBoxedOut = true;
                CutsceneManager.Instance.SetShouldLetterboxOut();
            }
        }
    }
}
