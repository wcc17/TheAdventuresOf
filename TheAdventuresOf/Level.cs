using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace TheAdventuresOf
{
	public class Level
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

		public Vector2 levelPositionVector;

		public Rectangle leftSideBounds;
		public Rectangle rightSideBounds;

		public BlockMonster blockMonster;
		public SunMonster sunMonster;
		public GroundCannonMonster groundCannonMonster;
		public BileMonster bileMonster;
        public SpikeMonster spikeMonster;
        public DashMonster dashMonster;
        public FlyingCannonMonster flyingCannonMonster;

		public int leftBoundWidth;
		public int rightBoundWidth;
		public float groundLevel;

		public float spawnDelayTime; //time before another monster can be spawned
		public float delayCannonSpawnTimerLimit; //time before spawning another groundCannonMonster is considered

		public static MonsterManager monsterManager;
        public static PlayerManager playerManager;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);

            currentTier = TIER_1;
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.Instance.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.Instance.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.Instance.levelTexture.Height);

            playerManager = new PlayerManager(this);
			monsterManager = new MonsterManager(this);
		}

		public void Update(GameTime gameTime, GameController gameController)
		{
            playerManager.Update(gameTime, gameController);

            monsterManager.Update(gameTime, this);

            if(ScoringManager.score > tierScores[currentTier] && currentTier < (maxTier-1)) {
                currentTier = currentTier + 1;
            }
		}

		public void Draw(SpriteBatch spriteBatch)
		{
            //Draw level
			spriteBatch.Draw(AssetManager.Instance.levelTexture, levelPositionVector);
			
            //Draw monsters
            monsterManager.DrawMonsters(spriteBatch);

            //Draw player
            playerManager.Draw(spriteBatch);
		}

        public void CheckCollisionWithBounds(Entity entity)
        {
            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }

            if (rightSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.RIGHT, AssetManager.Instance.levelTexture.Width - rightBoundWidth);
            }
        }

        public void CheckPlayerCollisionProjectile(Projectile proj)
        {
            PlayerManager.player.CheckCollisionProjectile(proj);
        }

        public void CheckPlayerCollisionWithMonster(Monster monster)
        {
            PlayerManager.player.CheckCollisionMonster(monster);
        }
	}
}

