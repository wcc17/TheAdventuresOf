using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class Level : BaseLevel
    {
        public const int EXPLOSION_KILL_LIMIT = 50;
        public const int ENDLESS_TIER_KILLS = 45;
        public const float SHAKE_TIME_SECONDS = 5.0f;
        public const float shakeOffset = 500.0f;
        public const float gameOverDelayTimeLimit = 5.0f;
        public string gameOverText = "You died!"; 

        int levelNumber;
        public static MonsterManager monsterManager;

        public int maxTier;
        public int currentTier;
        public int endlessTier; //will be used after max tier is hit in endless mode
        public float masterSpawnDelayTime; //time before another monster of any kind can be spawned
        public BlockMonster blockMonster;
        public SunMonster sunMonster;
        public GroundCannonMonster groundCannonMonster;
        public BileMonster bileMonster;
        public SpikeMonster spikeMonster;
        public DashMonster dashMonster;
        public FlyingCannonMonster flyingCannonMonster;
        public UndergroundMonster undergroundMonster;
        public SwoopMonster swoopMonster;
        public Dictionary<int, List<int>> tierMonsterLimits;
        public Dictionary<int, int> tierKills = new Dictionary<int, int>();
        public Dictionary<int, float> spawnDelayTimes; //an individual spawn delay time for each monster

        public bool playerDied;
        public bool endlessMode;

        bool storyMode;
        public ScoreStatOverlay scoreStatOverlay;
        bool showScoreStatOverlay;
        Vector2 gameOverTextPositionVector;
        Timer gameOverDelayTimer = new Timer(gameOverDelayTimeLimit);

        public int currentTierKills = 0;
        public int explosionKills = 0;
        bool isExplosion;
        int explosionMonster;
        float amountShaken = 0f; //amount in one direction the level has shaken so far
        int shakeState = 0; //shake up, down, left, or right
        bool isShaking = false;
        Timer shakeTimer;
        bool hasAlreadyShaken = false;

        public Level(Texture2D levelTexture, int levelNumber, bool storyMode, bool endlessMode) : base(levelTexture: levelTexture) {
            this.levelNumber = levelNumber;
            this.storyMode = storyMode;
            this.endlessMode = endlessMode;

            currentTier = 0;
            CoinManager.Instance.RemoveAllItems(); 
            HeartManager.Instance.RemoveAllItems();

            Vector2 gameOverTextDimensionsVector = AssetManager.Instance.font.MeasureString(gameOverText);
            gameOverTextPositionVector = new Vector2((ScreenManager.FULL_SCREEN_WIDTH / 2) - (gameOverTextDimensionsVector.X / 2),
                                                     ((ScreenManager.FULL_SCREEN_HEIGHT * 0.3f) - (gameOverTextDimensionsVector.Y / 2)));

            shakeTimer = new Timer(SHAKE_TIME_SECONDS);
        }

		public override void InitializeLevel(bool usePlayerSpawnAnimation)
		{
            base.InitializeLevel(usePlayerSpawnAnimation);
			monsterManager = new MonsterManager(this);

            loadMonsterLevelInformation();
		}

		public override void Update(GameTime gameTime, GameController gameController)
		{
            if(!showScoreStatOverlay) {
                updateLevel(gameTime, gameController);
            } else {
                if(!monsterManager.monstersEmpty()) {
					monsterManager.Update(gameTime, isExplosion, explosionMonster); //need to update monsters still since we're not calling UpdateLevel
                }
                updateScoreStatOverlay(gameTime, gameController);
            }
		}

        void updateLevel(GameTime gameTime, GameController gameController) {
            Logger.Instance.AddOrUpdateValue("Explosion Kills: ", explosionKills.ToString());
            Logger.Instance.AddOrUpdateValue("Tier Kills: ", currentTierKills.ToString());
            Logger.Instance.AddOrUpdateValue("Tier: ", currentTier.ToString());
            Logger.Instance.AddOrUpdateValue("Tier Limit: ", tierKills[currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Is Explosion?: ", isExplosion.ToString());
            Logger.Instance.AddOrUpdateValue("ExplosionMonster: ", explosionMonster.ToString());

            HandleDelayMovementTimer(gameTime, gameController);

            if(!playerDied) {
                PlayerManager.Instance.Update(gameTime, gameController);
            }

            HealthShieldManager.Instance.Update();

            handleExplosion();

            monsterManager.Update(gameTime, isExplosion, explosionMonster);
            if(isExplosion && !isShaking && !hasAlreadyShaken) {
                isShaking = true;
                hasAlreadyShaken = true;
                shakeTimer.Reset();
            } else if(!isExplosion) {
                hasAlreadyShaken = false;
            }

			handleLevelShake(gameTime);

            //using this condition twice because I want these methods to be called in a specific order 
            if(!playerDied) {
                //if ready to move on to next tier
                if (currentTierKills > tierKills[currentTier] && currentTier < (maxTier - 1))
                {
                    currentTierKills = 0;
                    currentTier = currentTier + 1;
                    checkExplosion();
                }

                //if ready to move on to next tier and its endless mode
                if((currentTierKills > ENDLESS_TIER_KILLS) && endlessMode) {
                    currentTierKills = 0;
                    endlessTier += 1;
                    checkExplosion();   
                }

                //if score limit has been reached
                if (!endlessMode && currentTier == (maxTier - 1) && currentTierKills > tierKills[currentTier])
                {
                    initiateScoreStatOverlay();
                }

                //if player is dead
                if (PlayerManager.Instance.IsPlayerDead())
                {
                    SoundManager.Instance.PlayGameOverSoundEffect();
                    monsterManager.DespawnMonsters();
                    playerDied = true;

                    if(endlessMode) {
                        SaveGameManager.Instance.SetLevelHighScore(levelNumber, ScoringManager.Instance.score);
                    }
                }
            } else {
                handleGameOverDelay(gameTime);
            }
        }

        void checkExplosion() {
            if(!PlayerManager.Instance.IsPlayerDying() && !PlayerManager.Instance.IsPlayerDead()) {
                int tier = currentTier;
                if (endlessMode && (currentTier >= (maxTier - 1)))
                {
                    tier = endlessTier;
                }

                //start explosion every third tier
                if ((tier + 1) % 3 == 0)
                {
                    explosionKills = 0;
                    isExplosion = true;
                    explosionMonster = monsterManager.GetRandomExplosionMonster();
                    monsterManager.InitializeExplosion(explosionMonster);
                }
                else
                {
                    isExplosion = false;
                    explosionMonster = -1;
                } 
            }
        }

        void handleExplosion() {
            if(explosionKills >= EXPLOSION_KILL_LIMIT) {
                explosionKills = 0;
				isExplosion = false;
                monsterManager.ResetExplosion();
            }
        }

        void updateScoreStatOverlay(GameTime gameTime, GameController gameController) {
            if (scoreStatOverlay.CanContinueToNextLevel(gameTime))
            {
                if (gameController.jumpButtonPressed)
                {
                    //if player is dead or if its not story mode go to menu, otherwise go to store
                    if(PlayerManager.Instance.IsPlayerDead() 
                       || (!PlayerManager.Instance.IsPlayerDead()) && !storyMode) {
                        ResetUponReturnToMenu();
                        goToNextState();
                    } else if(storyMode){
                        SaveGameManager.Instance.SetLevelUnlocked(levelNumber);
                        goToStoreLevel(gameController);
                    }
                }
            }
        }

        //not using base.Draw so that player can be drawn after monster
		public override void Draw(SpriteBatch spriteBatch)
		{
            //Draw level
            spriteBatch.Draw(levelTexture, levelPositionVector);


            if(!showScoreStatOverlay) {
				//Draw monsters
				monsterManager.DrawMonsters(spriteBatch);
                
                //Draw player
                PlayerManager.Instance.Draw(spriteBatch);
            } else {
                if(!monsterManager.monstersEmpty()) {
                    monsterManager.DrawMonsters(spriteBatch);
                }

                scoreStatOverlay.Draw(spriteBatch);
            }

            if(playerDied && !showScoreStatOverlay) {
                spriteBatch.Draw(AssetManager.Instance.transparentBlackBackgroundTexture, levelPositionVector);

                spriteBatch.DrawString(AssetManager.Instance.font,
                             gameOverText,
                             gameOverTextPositionVector,
                             Color.White,
                             0,
                             new Vector2(0, 0),
                             1.0f,
                             SpriteEffects.None,
                             0);
            }
            
		}

        void handleLevelShake(GameTime gameTime) {
            if(isShaking) {
                if(shakeTimer.IsTimeUp(gameTime.ElapsedGameTime)) {
                    isShaking = false;
                } else {
					handleShake(gameTime);
                }
            }
        }

        void handleShake(GameTime gameTime) {
            float shakeDistance = shakeOffset * (float)gameTime.ElapsedGameTime.TotalSeconds;
            amountShaken += shakeDistance;

            switch (shakeState)
            {
                case 0:
                    levelPositionVector.X += shakeDistance;
                    break;
                case 1:
                    levelPositionVector.Y -= shakeDistance;
                    break;
                case 2:
                    levelPositionVector.X -= shakeDistance;
                    break;
                case 3:
                    levelPositionVector.Y += shakeDistance;
                    break;
            }

            if (amountShaken > 4)
            {
                amountShaken = 0;
                shakeState++;

                if (shakeState > 3)
                {
                    shakeState = 0;
                }
            }
        }

        //load any extra monster information dependent on the current level
        //this assumes that assets have already been loaded for level and for monsters
        void loadMonsterLevelInformation() {
			float rightSideBound = AssetManager.Instance.levelTexture.Width - rightBoundWidth;

			flyingCannonMonster.leftSideX = leftBoundWidth + flyingCannonMonster.boundOffset;
			flyingCannonMonster.rightSideX = rightSideBound
				- (AssetManager.Instance.flyingCannonMonsterTexture.Width / flyingCannonMonster.frameCount)
				- flyingCannonMonster.boundOffset;

			DashMonster.leftSideX = leftBoundWidth + DashMonster.boundOffset;
			DashMonster.rightSideX = rightSideBound 
                - (AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount) 
                - DashMonster.boundOffset;

			groundCannonMonster.leftSideX = leftBoundWidth + groundCannonMonster.boundOffset;
			groundCannonMonster.rightSideX = rightSideBound 
                - AssetManager.Instance.cannonMonsterTexture.Width 
                - groundCannonMonster.boundOffset;
        }

        void handleGameOverDelay(GameTime gameTime) {
            if(gameOverDelayTimer.IsTimeUp(gameTime.ElapsedGameTime)) {
                initiateScoreStatOverlay();
            }
        }

        void goToStoreLevel(GameController gameController) {
            //reset jump button so player doesn't jump at beginning of store
            gameController.jumpButtonPressed = false;
            gameController.isButtonPressed = false;
            goToNextState();
        }

        void goToNextState() {
            showScoreStatOverlay = false;
            ScoringManager.Instance.ClearScores();
            monsterManager.ResetMonsters();
            shouldTransitionOut = true;
        }

        void initiateScoreStatOverlay() {
            monsterManager.DespawnMonsters();
            scoreStatOverlay = new ScoreStatOverlay(monsterManager);
            showScoreStatOverlay = true;
			HeartManager.Instance.RemoveAllItems();
            CoinManager.Instance.RemoveAllItems();
            TextManager.Instance.RemoveAllText();
        }
	}
}

