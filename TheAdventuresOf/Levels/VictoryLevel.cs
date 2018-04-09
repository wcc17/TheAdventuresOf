using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class VictoryLevel : BaseLevel
    {
        const float BEFORE_PLAYER_MOVEMENT_TIMER_DELAY = 2.0f;
        const float BEFORE_FADE_TIMER_DELAY = 2.2f;
        const float AFTER_TROPHY_MOVEMENT_TIMER_DELAY = 5.0f;
        const float VICTORY_LEVEL_GROUND_LEVEL_OFFSET = 0.106f;

        Vector2 trophyPositionVector;
        Rectangle trophyBounds;
        Vector2 playerVictoryPosePositionVector;
        Rectangle playerVictoryPoseBounds;
        Texture2D trophyTexture;
        Texture2D playerVictoryPoseTexture;
        Timer beforePlayerMovementTimer;
        Timer beforeFadeOutTimer;
        Timer afterTrophyMovementTimer;
        bool shouldDrawVictoryPose;
        bool shouldDrawTrophy = true;
        bool playerGrabbedTrophy;

        public VictoryLevel(Texture2D levelTexture, GameController gameController)
            : base(levelTexture: levelTexture){
            gameController.Lock();
        }

        public override void InitializeLevel(bool usePlayerSpawnAnimation)
        {
            this.groundLevel = 705;
            this.playerStartX = 100;

            base.InitializeLevel(usePlayerSpawnAnimation);

            beforePlayerMovementTimer = new Timer(BEFORE_PLAYER_MOVEMENT_TIMER_DELAY);
            beforeFadeOutTimer = new Timer(BEFORE_FADE_TIMER_DELAY);
            afterTrophyMovementTimer = new Timer(AFTER_TROPHY_MOVEMENT_TIMER_DELAY);

            initializeTrophy();
            initializePlayerVictoryPose();
        }

		public override void Draw(SpriteBatch spriteBatch)
		{
            base.DrawWithoutPlayer(spriteBatch);

            if(shouldDrawVictoryPose) {
                spriteBatch.Draw(playerVictoryPoseTexture, playerVictoryPosePositionVector);
            } else {
				PlayerManager.Instance.Draw(spriteBatch);
            }

            if(shouldDrawTrophy) {
				spriteBatch.Draw(trophyTexture, trophyPositionVector);
            }
		}

        public override void Update(GameTime gameTime, GameController gameController)
		{
            base.Update(gameTime, gameController);
			//UpdateDialogText(gameTime);

            updateCutscene(gameTime, gameController);
		}

        void updateCutscene(GameTime gameTime, GameController gameController) {
            if(playerShouldStartMoving(gameTime)) {

                if(!shouldDrawVictoryPose) {
                    //this will be called every frame after the above condition is true unless shouldDrawVictoryPose = true
                    //keep that in mind if adding to nested loops
					handlePlayerMovement(gameTime);
                }

                if(playerCanGrabTrophy() || playerGrabbedTrophy) {
                    HandleLetterBoxingIn();

                    if(!shouldDrawVictoryPose && !playerGrabbedTrophy) {
                        playerGrabbedTrophy = true;
						shouldDrawVictoryPose = true;
						initializeTrophyForPlayerVictoryPose();
                    } else if(playerShouldStartMovingAgain(gameTime)) {
                        HandleLetterBoxingOut();
                        playerGrabbedTrophy = true;
                        shouldDrawTrophy = false;
                        shouldDrawVictoryPose = false;

                        //wait a little while longer, then handle boxing out
                        if(shouldStartFadingOut(gameTime)) {
                            gameController.Unlock();
                            GoToNextState();
                        }
                    }
                }
            }
        }

        void handlePlayerMovement(GameTime gameTime) {
            PlayerManager.Instance.MovePlayer(gameTime);
        }

        bool playerShouldStartMoving(GameTime gameTime) {
            return beforePlayerMovementTimer.IsTimeUp(gameTime.ElapsedGameTime);
        }

        bool playerCanGrabTrophy() {
            return checkPlayerCollisionWithTrophy();
        }

        bool playerShouldStartMovingAgain(GameTime gameTime) {
            return afterTrophyMovementTimer.IsTimeUp(gameTime.ElapsedGameTime);
        }

        bool shouldStartFadingOut(GameTime gameTime) {
            return beforeFadeOutTimer.IsTimeUp(gameTime.ElapsedGameTime);
        }

        bool checkPlayerCollisionWithTrophy() {
            return (
                (PlayerManager.Instance.GetPlayerPosition().X < trophyPositionVector.X + trophyBounds.Width))
                && (PlayerManager.Instance.GetPlayerPosition().X > trophyPositionVector.X
             );
        }

        void initializeTrophy() {
            trophyTexture = AssetManager.Instance.victoryLevelTrophyTexture;
            trophyPositionVector = new Vector2(
                (ScreenManager.VIRTUAL_SCREEN_WIDTH / 2) - (trophyTexture.Width / 2) + 13,
                (ScreenManager.VIRTUAL_SCREEN_HEIGHT / 2) - 50);
            trophyBounds = new Rectangle((int)trophyPositionVector.X,
                                         (int)trophyPositionVector.Y,
                                         trophyTexture.Width,
                                         trophyTexture.Height);
        }

        void initializePlayerVictoryPose() {
            playerVictoryPoseTexture = AssetManager.Instance.victoryLevelPlayerVictoryPoseTexture;
            playerVictoryPosePositionVector = new Vector2(
                (ScreenManager.VIRTUAL_SCREEN_WIDTH / 2) - (playerVictoryPoseTexture.Width / 2),
                groundLevel);
            playerVictoryPoseBounds = new Rectangle((int)playerVictoryPosePositionVector.X,
                                                    (int)playerVictoryPosePositionVector.Y,
                                                    playerVictoryPoseTexture.Width,
                                                    playerVictoryPoseTexture.Height);
        }

        //happens after player is able to "grab" the trophy
        void initializeTrophyForPlayerVictoryPose() {
            trophyPositionVector = new Vector2(
                playerVictoryPosePositionVector.X + ((playerVictoryPoseTexture.Width / 2) - (trophyTexture.Width / 2)),
                (playerVictoryPosePositionVector.Y) - (trophyTexture.Height / 2) - (playerVictoryPoseTexture.Height));
        }

        public override void CheckCollisionWithBounds(Entity entity) { }
        public override void CheckPlayerCollisionWithMonster(Monster monster) { }
        public override void CheckPlayerCollisionProjectile(Projectile proj) { }
	}
}
