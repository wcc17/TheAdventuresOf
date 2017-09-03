using Microsoft.Xna.Framework.Graphics;
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

		public float spawnDelayTime; //time before another monster can be spawned
		public float delayCannonSpawnTimerLimit; //time before spawning another groundCannonMonster is considered

		public static MonsterManager monsterManager;

        public Level(Texture2D levelTexture) : base(levelTexture: levelTexture) {
            currentTier = TIER_1;
		}

		public override void InitializeLevel()
		{
            base.InitializeLevel();
			monsterManager = new MonsterManager(this);
		}

		public override void Update(GameTime gameTime, GameController gameController)
		{
            base.Update(gameTime, gameController);

            monsterManager.Update(gameTime);

            if(ScoringManager.score > tierScores[currentTier] && currentTier < (maxTier-1)) {
                currentTier = currentTier + 1;
            }
		}

		public override void Draw(SpriteBatch spriteBatch)
		{
            base.Draw(spriteBatch);
            
            //Draw monsters
            monsterManager.DrawMonsters(spriteBatch);

		}
	}
}

