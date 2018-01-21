using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoreStatOverlay
    {
		MonsterManager monsterManager;
        Vector2 positionVector = new Vector2(0, 0);
        Vector2 countPositionVector;
        Vector2 totalScorePositionVector;
        Vector2 totalKilledPositionVector;
        Vector2 continueTextPositionVector;
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
            this.monsterManager = monsterManager;
            countPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH * 0.30f, ScreenManager.FULL_SCREEN_HEIGHT * 0.03f);
            totalScorePositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH * 0.60f, ScreenManager.FULL_SCREEN_HEIGHT * 0.25f);
            totalKilledPositionVector = new Vector2(totalScorePositionVector.X, totalScorePositionVector.Y + 50);
			continueTextPositionVector = new Vector2(totalScorePositionVector.X,
			                                         totalScorePositionVector.Y + 200);
            continueDelayTimer = new Timer(3.0f); //TODO: XML
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
            int yOffset = 0;

            //TEST
            ScoringManager.Instance.blockMonstersKilled = 27;
            ScoringManager.Instance.sunMonstersKilled = 100;
            ScoringManager.Instance.bileMonstersKilled = 46;
            ScoringManager.Instance.dashMonstersKilled = 12;
            ScoringManager.Instance.groundCannonMonstersKilled = 155;
            ScoringManager.Instance.flyingCannonMonstersKilled = 13;
            ScoringManager.Instance.spikeMonstersKilled = 66;
            ScoringManager.Instance.undergroundMonstersKilled = 123;
            ScoringManager.Instance.swoopMonstersKilled = 1;

            blockMonster = monsterManager.GenerateBlockMonster();
            blockMonster.rotation = 0;
            blockMonster.positionVector = new Vector2(countPositionVector.X, countPositionVector.Y);

            sunMonster = monsterManager.GenerateSunMonster();
            sunMonster.rotation = 0;
            sunMonster.positionVector = new Vector2(countPositionVector.X, blockMonster.positionVector.Y + blockMonster.entityHeight + yOffset);

            bileMonster = monsterManager.GenerateBileMonster();
            bileMonster.rotation = 0;
            bileMonster.positionVector = new Vector2(countPositionVector.X, sunMonster.positionVector.Y + sunMonster.entityHeight + yOffset);

            dashMonster = monsterManager.GenerateDashMonster();
            dashMonster.rotation = 0;
            dashMonster.positionVector = new Vector2(countPositionVector.X, bileMonster.positionVector.Y + bileMonster.entityHeight + yOffset);

            groundCannonMonster = monsterManager.GenerateGroundCannonMonster();
            groundCannonMonster.rotation = 0;
            groundCannonMonster.positionVector = new Vector2(countPositionVector.X, dashMonster.positionVector.Y + dashMonster.entityHeight + yOffset);

            flyingCannonMonster = monsterManager.GenerateFlyingCannonMonster();
            flyingCannonMonster.rotation = 0;
            flyingCannonMonster.positionVector = new Vector2(countPositionVector.X, groundCannonMonster.positionVector.Y + groundCannonMonster.entityHeight + yOffset);

            spikeMonster = monsterManager.GenerateSpikeMonster();
            spikeMonster.rotation = 0;
            spikeMonster.positionVector = new Vector2(countPositionVector.X, flyingCannonMonster.positionVector.Y + flyingCannonMonster.entityHeight + yOffset);

            undergroundMonster = monsterManager.GenerateUndergroundMonster();
            undergroundMonster.rotation = 0;
            undergroundMonster.positionVector = new Vector2(countPositionVector.X, spikeMonster.positionVector.Y + spikeMonster.entityHeight + yOffset);

            swoopMonster = monsterManager.GenerateSwoopMonster();
            swoopMonster.rotation = 0;
            swoopMonster.positionVector = new Vector2(countPositionVector.X, undergroundMonster.positionVector.Y + undergroundMonster.entityHeight + yOffset);
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

            int monsterIndex = 0;

            drawMonsterScore(spriteBatch, blockMonster, 
                             ScoringManager.blockMonsterScore, 
                             ScoringManager.Instance.blockMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, sunMonster,
                             ScoringManager.sunMonsterScore,
                             ScoringManager.Instance.sunMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, bileMonster,
                             ScoringManager.bileMonsterScore,
                             ScoringManager.Instance.bileMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, sunMonster,
                             ScoringManager.sunMonsterScore,
                             ScoringManager.Instance.sunMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, dashMonster,
                             ScoringManager.dashMonsterScore,
                             ScoringManager.Instance.dashMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, groundCannonMonster,
                             ScoringManager.groundCannonMonsterScore,
                             ScoringManager.Instance.groundCannonMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, flyingCannonMonster,
                             ScoringManager.flyingCannonMonsterScore,
                             ScoringManager.Instance.flyingCannonMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, spikeMonster,
                             ScoringManager.spikeMonsterScore,
                             ScoringManager.Instance.spikeMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, undergroundMonster,
                             ScoringManager.undergroundMonsterScore,
                             ScoringManager.Instance.undergroundMonstersKilled, monsterIndex++);
            drawMonsterScore(spriteBatch, swoopMonster,
                             ScoringManager.swoopMonsterScore,
                             ScoringManager.Instance.swoopMonstersKilled, monsterIndex++);

            spriteBatch.DrawString(AssetManager.Instance.font,
                                   "Total Score: " + ScoringManager.Instance.score,
                                   totalScorePositionVector,
                                   Color.White,
                                   0,
                                   new Vector2(0, 0),
                                   0.90f,
                                   SpriteEffects.None,
                                   0);

            spriteBatch.DrawString(AssetManager.Instance.font,
                                   "Total Kills: " + totalMonstersKilled,
                                   totalKilledPositionVector,
                                   Color.White,
                                   0,
                                   new Vector2(0, 0),
                                   0.90f,
                                   SpriteEffects.None,
                                   0);

            if(showContinueText) {
                spriteBatch.DrawString(AssetManager.Instance.font,
                                   "Jump to continue!",
                                   continueTextPositionVector,
                                   Color.White,
                                   0,
                                   new Vector2(0, 0),
                                   0.90f,
                                   SpriteEffects.None,
                                   0);
            }
        }

        void drawMonsterScore(SpriteBatch spriteBatch, Monster monster, int monsterScore, int monsterKillCount, int monsterIndex) {
            if(monsterKillCount > 0) {
                monster.DrawAtScale(spriteBatch, monster.monsterTexture, 0.75f);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       " x " + monsterKillCount,
                                       new Vector2(monster.positionVector.X
                                                   + 110, monster.positionVector.Y + monster.entityHeight / 2 - 20),
                                       Color.White,
                                       0,
                                       new Vector2(0, 0),
                                       0.90f,
                                       SpriteEffects.None,
                                       0);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       " = " + monsterKillCount * monsterScore,
                                       new Vector2(monster.positionVector.X
                                                   + 240, monster.positionVector.Y + monster.entityHeight / 2 - 20),
                                       Color.White,
                                       0,
                                       new Vector2(0, 0),
                                       0.90f,
                                       SpriteEffects.None,
                                       0);

                /**
                 * spriteBatch.DrawString(AssetManager.Instance.font,
                                   text, positionVector + new Vector2(1 * textFontScale, -1 * textFontScale),
                                   color * alpha, 0, new Vector2(0,0), 
                                   textFontScale, SpriteEffects.None, 0);
                                   **/
            }
        }
    }
}
