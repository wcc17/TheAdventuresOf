using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class ScoringManager
    {
        private static ScoringManager instance;

        public static int score;
        public static float textFloatSpeed;
        public static int blockMonsterScore;
        public static int sunMonsterScore;
        public static int bileMonsterScore;
        public static int dashMonsterScore;
        public static int groundCannonMonsterScore;
        public static int flyingCannonMonsterScore;
        public static int spikeMonsterScore;
        public static float totalScoreTextX;
        public static float totalScoreTextY;

        static Vector2 totalScorePositionVector;

        List<ScoreText> activeScoreText;

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

        private ScoringManager() {
            activeScoreText = new List<ScoreText>();
            totalScorePositionVector = new Vector2(totalScoreTextX, totalScoreTextY);
        }

        public void HandleMonsterKill(Monster monster) {

            int pointsEarned = 0;

            if(monster is BlockMonster) {
                pointsEarned = blockMonsterScore;
            }
            if(monster is SunMonster) {
                pointsEarned = sunMonsterScore;
            }
            if(monster is BileMonster) {
                pointsEarned = bileMonsterScore;
            }
            if(monster is DashMonster) {
                pointsEarned = dashMonsterScore;
            }
            if(monster is GroundCannonMonster) {
                pointsEarned = groundCannonMonsterScore;
            }
            if(monster is FlyingCannonMonster) {
                pointsEarned = flyingCannonMonsterScore;
            }
            if(monster is SpikeMonster) {
                pointsEarned = spikeMonsterScore;
            }

            score += pointsEarned;

            //generate a new ScoringText object
            float scoreTextX = monster.positionVector.X + monster.entityBounds.Width / 2;
            ScoreText newScoreText = new ScoreText(scoreTextX, monster.groundLevel, pointsEarned);
            activeScoreText.Add(newScoreText);
        }

        public void Update(GameTime gameTime) {
            foreach (ScoreText scoreText in activeScoreText) {
                scoreText.Update(gameTime);
            }

            activeScoreText.RemoveAll(inactiveScoreText => inactiveScoreText.isActive == false);
        }

        public void Draw(SpriteBatch spriteBatch) {
            spriteBatch.DrawString(AssetManager.Instance.font, score.ToString(), totalScorePositionVector, Color.White);

            foreach (ScoreText scoreText in activeScoreText) {
                scoreText.Draw(spriteBatch);
            }
        }

        public void ClearScores() {
            score = 0;
            activeScoreText.Clear();
        }
    }
}
