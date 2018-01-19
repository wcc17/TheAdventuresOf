using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoringManager
    {
        private static ScoringManager instance;

        public int score;
        public static int blockMonsterScore;
        public static int sunMonsterScore;
        public static int bileMonsterScore;
        public static int dashMonsterScore;
        public static int groundCannonMonsterScore;
        public static int flyingCannonMonsterScore;
        public static int spikeMonsterScore;
        public static int undergroundMonsterScore;
        public static int swoopMonsterScore;

        public int blockMonstersKilled;
        public int sunMonstersKilled;
        public int bileMonstersKilled;
        public int dashMonstersKilled;
        public int groundCannonMonstersKilled;
        public int flyingCannonMonstersKilled;
        public int spikeMonstersKilled;
        public int undergroundMonstersKilled;
        public int swoopMonstersKilled;

        public static ScoringManager Instance {
            get
            {
                if (instance == null)
                {
                    instance = new ScoringManager();
                }
                return instance;
            }
        }

        private ScoringManager() { }

        public void HandleMonsterKill(Monster monster) {

            int pointsEarned = 0;

            if(monster is BlockMonster) {
                pointsEarned = blockMonsterScore;
                blockMonstersKilled++;
            } else if(monster is SunMonster) {
                pointsEarned = sunMonsterScore;
            } else if(monster is BileMonster) {
                pointsEarned = bileMonsterScore;
                bileMonstersKilled++;
            } else if(monster is DashMonster) {
                pointsEarned = dashMonsterScore;
                dashMonstersKilled++;
            } else if(monster is GroundCannonMonster) {
                pointsEarned = groundCannonMonsterScore;
                groundCannonMonstersKilled++;
            } else if(monster is FlyingCannonMonster) {
                pointsEarned = flyingCannonMonsterScore;
                flyingCannonMonstersKilled++;
            } else if(monster is SpikeMonster) {
                pointsEarned = spikeMonsterScore;
                spikeMonstersKilled++;
            } else if(monster is UndergroundMonster) {
                pointsEarned = undergroundMonsterScore;
                undergroundMonstersKilled++;
            } else if(monster is SwoopMonster) {
                pointsEarned = swoopMonsterScore;
                swoopMonstersKilled++;
            }

            score += pointsEarned;

            //generate a new ScoringText object
            float scoreTextX = monster.positionVector.X + monster.entityBounds.Width / 2;
            ScoreText newScoreText = new ScoreText(scoreTextX, monster.groundLevel, pointsEarned.ToString(), 0);

            TextManager.Instance.AddText(newScoreText);
        }

        public void ClearScores() {
            score = 0;
        }

    }
}
