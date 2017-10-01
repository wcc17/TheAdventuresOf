﻿using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class Level : BaseLevel
    {
        public int maxTier;
        public int currentTier;
        public static int TIER_1 = 0;
        public static int TIER_2 = 1;
        public static int TIER_3 = 2;
        public static int TIER_4 = 3;
        public static int TIER_5 = 4;

        public Dictionary<int, int> tierScores;
        public Dictionary<int, List<int>> tierMonsterLimits;

		public BlockMonster blockMonster;
		public SunMonster sunMonster;
		public GroundCannonMonster groundCannonMonster;
		public BileMonster bileMonster;
        public SpikeMonster spikeMonster;
        public DashMonster dashMonster;
        public FlyingCannonMonster flyingCannonMonster;
        public UndergroundMonster undergroundMonster;
        public SwoopMonster swoopMonster;

		public float spawnDelayTime; //time before another monster can be spawned

		public static MonsterManager monsterManager;

        public Level(Texture2D levelTexture) : base(levelTexture: levelTexture) {
            currentTier = TIER_1;
            CoinManager.Instance.RemoveAllCoins();
		}

		public override void InitializeLevel()
		{
            base.InitializeLevel();
			monsterManager = new MonsterManager(this);

            loadMonsterLevelInformation();
		}

		public override void Update(GameTime gameTime, GameController gameController)
		{
            base.Update(gameTime, gameController);
            monsterManager.Update(gameTime);

            if(ScoringManager.Instance.score > tierScores[currentTier] && currentTier < (maxTier-1)) {
                currentTier = currentTier + 1;
            }

            if(currentTier == (maxTier-1) && ScoringManager.Instance.score > tierScores[currentTier]) {
                ScoringManager.Instance.ClearScores();
                nextLevel = true;
            }
		}

        //not using base.Draw so that player can be drawn after monster
		public override void Draw(SpriteBatch spriteBatch)
		{
            //Draw level
            spriteBatch.Draw(levelTexture, levelPositionVector);

            //Draw monsters
            monsterManager.DrawMonsters(spriteBatch);

            //Draw player
            PlayerManager.Instance.Draw(spriteBatch);
            
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
	}
}

