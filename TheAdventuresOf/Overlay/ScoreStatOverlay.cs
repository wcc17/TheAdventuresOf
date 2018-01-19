using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoreStatOverlay
    {
        Vector2 positionVector = new Vector2(0, 0);
        MonsterManager monsterManager;
        Vector2 countPositionVector;

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
            countPositionVector = new Vector2(ScreenManager.FULL_SCREEN_WIDTH * 0.40f, ScreenManager.FULL_SCREEN_HEIGHT * 0.05f);
            initializeMonsters();
        }

        /**
         * Drawing monsters just to show what the scores mean on the end of level overlay
         */
        void initializeMonsters() {
            int yOffset = 90;

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
            blockMonster.positionVector = new Vector2(countPositionVector.X, countPositionVector.Y);
            sunMonster = monsterManager.GenerateSunMonster();
            sunMonster.positionVector = new Vector2(countPositionVector.X, blockMonster.positionVector.Y + yOffset);
            bileMonster = monsterManager.GenerateBileMonster();
            bileMonster.positionVector = new Vector2(countPositionVector.X, sunMonster.positionVector.Y + yOffset);
            dashMonster = monsterManager.GenerateDashMonster();
            dashMonster.positionVector = new Vector2(countPositionVector.X, bileMonster.positionVector.Y + yOffset);
            groundCannonMonster = monsterManager.GenerateGroundCannonMonster();
            groundCannonMonster.positionVector = new Vector2(countPositionVector.X, dashMonster.positionVector.Y + yOffset);
            flyingCannonMonster = monsterManager.GenerateFlyingCannonMonster();
            flyingCannonMonster.positionVector = new Vector2(countPositionVector.X, groundCannonMonster.positionVector.Y + yOffset);
            spikeMonster = monsterManager.GenerateSpikeMonster();
            spikeMonster.positionVector = new Vector2(countPositionVector.X, flyingCannonMonster.positionVector.Y + yOffset);
            undergroundMonster = monsterManager.GenerateUndergroundMonster();
            undergroundMonster.positionVector = new Vector2(countPositionVector.X, spikeMonster.positionVector.Y + yOffset);
            swoopMonster = monsterManager.GenerateSwoopMonster();
            swoopMonster.positionVector = new Vector2(countPositionVector.X, undergroundMonster.positionVector.Y + yOffset);
        }

        /**
         * TODO:
         * despawn all monsters on screen
         * stop allowing player to use controller
         * show stats and "level cleared" message
         * show picture of monsters that the player got > 0 kills of
         */

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
        }

        void drawMonsterScore(SpriteBatch spriteBatch, Monster monster, int monsterScore, int monsterKillCount, int monsterIndex) {
            if(monsterKillCount > 0) {
                monster.Draw(spriteBatch);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       " x " + monsterKillCount,
                                       new Vector2(monster.positionVector.X
                                                   + 150, monster.positionVector.Y + 20),
                                       Color.White);
                spriteBatch.DrawString(AssetManager.Instance.font,
                                       " = " + monsterKillCount * monsterScore,
                                       new Vector2(monster.positionVector.X
                                                   + 235, monster.positionVector.Y + 20),
                                       Color.White);
            }
        }
    }
}
