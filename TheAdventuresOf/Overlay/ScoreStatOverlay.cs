using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoreStatOverlay
    {
        /**
         * Note on multipliers:
         * Multipliers are used to adjust position values relative to the 
         * actual size of the screen in case one day I need to support higher
         * resolutions. This eliminates hard coded values and still allows
         * me to adjust positions via XML loading, just have to do a small amount
         * of math based on current resolution:
         * screen_width(orheight) / (x or y you want on screen) = multiplier
         */
        public static string totalScoreString;
        public static string totalKillString;
        public static string jumpToContinueString;
        public static float countPositionXMultiplier;
        public static float countPositionYMultiplier;
        public static float totalScorePositionXMultiplier;
        public static float totalScorePositionYMultiplier;
		public static float continueDelayTimeLimit;
		public static float fontScale;
		public static float monsterTextureScale;
        public static float totalKilledPositionYMultiplier;
        public static float continueTextPositionYMultiplier;
        public static float monsterKillCountXMultiplier;
        public static float monsterKillCountYMultiplier;
        public static float monsterScoreXMultiplier;
        public static float monsterScoreYMultiplier;

        float totalKilledPositionYOffset;
        float continueTextPositionYOffset;
        float monsterKillCountXOffset;
        float monsterKillCountYOffset;
        float monsterScoreXOffset;
        float monsterScoreYOffset;

        MonsterManager monsterManager;
        Vector2 positionVector = new Vector2(0, 0);
        Vector2 zeroOriginVector = new Vector2(0, 0);
        Vector2 countPositionVector;
        Vector2 totalScorePositionVector;
        Vector2 totalKilledPositionVector;
        Vector2 continueTextPositionVector;
        Color fontColor = Color.White;
        bool showContinueText;
        Timer continueDelayTimer; //how long to wait before player can hit jump to go to next level
        int totalMonstersKilled;

        BlockMonster blockMonster;
        SunMonster sunMonster;
        BileMonster bileMonster;
        DashMonster dashMonster;
        GroundCannonMonster groundCannonMonster;
        FlyingCannonMonster flyingCannonMonster;
        SpikeMonster spikeMonster;
        UndergroundMonster undergroundMonster;
        SwoopMonster swoopMonster;

        public ScoreStatOverlay(MonsterManager monsterManager) {
            XmlManager.LoadScoreStatOverlayInformation();
            this.monsterManager = monsterManager;
			continueDelayTimer = new Timer(continueDelayTimeLimit);

			totalKilledPositionYOffset = ScreenManager.VIRTUAL_SCREEN_HEIGHT / totalKilledPositionYMultiplier;
			continueTextPositionYOffset = ScreenManager.VIRTUAL_SCREEN_HEIGHT / continueTextPositionYMultiplier;
			monsterKillCountXOffset = ScreenManager.VIRTUAL_SCREEN_WIDTH / monsterKillCountXMultiplier;
			monsterKillCountYOffset = ScreenManager.VIRTUAL_SCREEN_HEIGHT / monsterKillCountYMultiplier;
			monsterScoreXOffset = ScreenManager.VIRTUAL_SCREEN_WIDTH / monsterScoreXMultiplier;
			monsterScoreYOffset = ScreenManager.VIRTUAL_SCREEN_HEIGHT / monsterScoreYMultiplier;

            countPositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH * countPositionXMultiplier, 
                                              ScreenManager.VIRTUAL_SCREEN_HEIGHT * countPositionYMultiplier);
            totalScorePositionVector = new Vector2(ScreenManager.VIRTUAL_SCREEN_WIDTH * totalScorePositionXMultiplier, 
                                                   ScreenManager.VIRTUAL_SCREEN_HEIGHT * totalScorePositionYMultiplier);
            totalKilledPositionVector = new Vector2(totalScorePositionVector.X, 
                                                    totalScorePositionVector.Y + totalKilledPositionYOffset);
            continueTextPositionVector = new Vector2(totalScorePositionVector.X,
                                                     totalScorePositionVector.Y + continueTextPositionYOffset);

            initializeMonsters();
            initializeKillTotal();
        }

        public bool CanContinueToNextLevel(GameTime gameTime) {
            if(continueDelayTimer.IsTimeUp(gameTime.ElapsedGameTime)) {
                showContinueText = true;
                return true;
            }

            return false;
        }

        /**
         * Drawing monsters just to show what the scores mean on the end of level overlay
         */
        void initializeMonsters() {
            //TEST VALUES
            //ScoringManager.Instance.blockMonstersKilled = 27;
            //ScoringManager.Instance.sunMonstersKilled = 100;
            //ScoringManager.Instance.bileMonstersKilled = 46;
            //ScoringManager.Instance.dashMonstersKilled = 12;
            //ScoringManager.Instance.groundCannonMonstersKilled = 155;
            //ScoringManager.Instance.flyingCannonMonstersKilled = 13;
            //ScoringManager.Instance.spikeMonstersKilled = 66;
            //ScoringManager.Instance.undergroundMonstersKilled = 123;
            //ScoringManager.Instance.swoopMonstersKilled = 1;

            Monster previousMonster;

            blockMonster = monsterManager.GenerateBlockMonster();
            blockMonster.rotation = 0;
            blockMonster.positionVector = new Vector2(countPositionVector.X, countPositionVector.Y);
            if (ScoringManager.Instance.blockMonstersKilled > 0) {
                previousMonster = blockMonster;
            } else {
                previousMonster = new Monster();
                previousMonster.positionVector = new Vector2(countPositionVector.X, countPositionVector.Y);
            }

            sunMonster = monsterManager.GenerateSunMonster();
            sunMonster.rotation = 0;
            sunMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.sunMonstersKilled > 0) { previousMonster = sunMonster; }

            bileMonster = monsterManager.GenerateBileMonster();
            bileMonster.rotation = 0;
            bileMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.bileMonstersKilled > 0) { previousMonster = bileMonster; }

            dashMonster = monsterManager.GenerateDashMonster();
            dashMonster.rotation = 0;
            dashMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.dashMonstersKilled > 0) { previousMonster = dashMonster; }

            groundCannonMonster = monsterManager.GenerateGroundCannonMonster();
            groundCannonMonster.rotation = 0;
            groundCannonMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.groundCannonMonstersKilled > 0) { previousMonster = groundCannonMonster; }

            flyingCannonMonster = monsterManager.GenerateFlyingCannonMonster();
            flyingCannonMonster.rotation = 0;
            flyingCannonMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.flyingCannonMonstersKilled > 0) { previousMonster = flyingCannonMonster; }

            spikeMonster = monsterManager.GenerateSpikeMonster();
            spikeMonster.rotation = 0;
            spikeMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.spikeMonstersKilled > 0) { previousMonster = spikeMonster; }

            undergroundMonster = monsterManager.GenerateUndergroundMonster();
            undergroundMonster.rotation = 0;
            undergroundMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.undergroundMonstersKilled > 0) { previousMonster = undergroundMonster; }

            swoopMonster = monsterManager.GenerateSwoopMonster();
            swoopMonster.rotation = 0;
            swoopMonster.positionVector = new Vector2(countPositionVector.X, previousMonster.positionVector.Y + previousMonster.entityHeight);
            if (ScoringManager.Instance.swoopMonstersKilled > 0) { previousMonster = swoopMonster; }
        }

        void initializeKillTotal() {
            totalMonstersKilled = ScoringManager.Instance.blockMonstersKilled
                            + ScoringManager.Instance.sunMonstersKilled
                            + ScoringManager.Instance.bileMonstersKilled
                            + ScoringManager.Instance.dashMonstersKilled
                            + ScoringManager.Instance.groundCannonMonstersKilled
                            + ScoringManager.Instance.flyingCannonMonstersKilled
                            + ScoringManager.Instance.spikeMonstersKilled
                            + ScoringManager.Instance.undergroundMonstersKilled
                            + ScoringManager.Instance.swoopMonstersKilled;

        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.Draw(AssetManager.Instance.transparentBlackBackgroundTexture, positionVector);

            drawMonsterScore(spriteBatch, blockMonster, 
                             ScoringManager.blockMonsterScore, 
                             ScoringManager.Instance.blockMonstersKilled);
            drawMonsterScore(spriteBatch, sunMonster,
                             ScoringManager.sunMonsterScore,
                             ScoringManager.Instance.sunMonstersKilled);
            drawMonsterScore(spriteBatch, bileMonster,
                             ScoringManager.bileMonsterScore,
                             ScoringManager.Instance.bileMonstersKilled);
            drawMonsterScore(spriteBatch, sunMonster,
                             ScoringManager.sunMonsterScore,
                             ScoringManager.Instance.sunMonstersKilled);
            drawMonsterScore(spriteBatch, dashMonster,
                             ScoringManager.dashMonsterScore,
                             ScoringManager.Instance.dashMonstersKilled);
            drawMonsterScore(spriteBatch, groundCannonMonster,
                             ScoringManager.groundCannonMonsterScore,
                             ScoringManager.Instance.groundCannonMonstersKilled);
            drawMonsterScore(spriteBatch, flyingCannonMonster,
                             ScoringManager.flyingCannonMonsterScore,
                             ScoringManager.Instance.flyingCannonMonstersKilled);
            drawMonsterScore(spriteBatch, spikeMonster,
                             ScoringManager.spikeMonsterScore,
                             ScoringManager.Instance.spikeMonstersKilled);
            drawMonsterScore(spriteBatch, undergroundMonster,
                             ScoringManager.undergroundMonsterScore,
                             ScoringManager.Instance.undergroundMonstersKilled);
            drawMonsterScore(spriteBatch, swoopMonster,
                             ScoringManager.swoopMonsterScore,
                             ScoringManager.Instance.swoopMonstersKilled);

            spriteBatch.DrawString(AssetManager.Instance.font,
                                   totalScoreString + ScoringManager.Instance.score,
                                   totalScorePositionVector,
                                   fontColor,
                                   0,
                                   zeroOriginVector,
                                   fontScale,
                                   SpriteEffects.None,
                                   0);

            spriteBatch.DrawString(AssetManager.Instance.font,
                                   totalKillString + totalMonstersKilled,
                                   totalKilledPositionVector,
                                   fontColor,
                                   0,
                                   zeroOriginVector,
                                   fontScale,
                                   SpriteEffects.None,
                                   0);

            if(showContinueText) {
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       jumpToContinueString,
                                       continueTextPositionVector,
                                       fontColor,
                                       0,
                                       zeroOriginVector,
                                       fontScale,
                                       SpriteEffects.None,
                                       0);
            }
        }

        void drawMonsterScore(SpriteBatch spriteBatch, Monster monster, int monsterScore, int monsterKillCount) {
            string killCountString = " x " + monsterKillCount;
            string monsterScoreString = " = " + monsterKillCount * monsterScore;

            Vector2 killCountPositionVector = new Vector2(monster.positionVector.X + monsterKillCountXOffset,
                                                          monster.positionVector.Y + (monster.entityHeight / 2) - monsterKillCountYOffset);
            Vector2 scoreTotalPositionVector = new Vector2(monster.positionVector.X + monsterScoreXOffset,
                                                           monster.positionVector.Y + (monster.entityHeight / 2) - monsterScoreYOffset);
            if(monsterKillCount > 0) {
                monster.DrawAtScale(spriteBatch, monster.monsterTexture, monsterTextureScale);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       killCountString,
                                       killCountPositionVector,
                                       fontColor,
                                       0,
                                       zeroOriginVector,
                                       fontScale,
                                       SpriteEffects.None,
                                       0);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       monsterScoreString,
                                       scoreTotalPositionVector,
                                       fontColor,
                                       0,
                                       zeroOriginVector,
                                       fontScale,
                                       SpriteEffects.None,
                                       0);
            }
        }
    }
}
