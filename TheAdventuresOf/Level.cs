using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
namespace TheAdventuresOf
{
	public class Level
	{
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

		public int blockMonsterLimit;
		public int sunMonsterLimit;
		public int groundCannonMonsterLimit;
		public int bileMonsterLimit;
        public int spikeMonsterLimit;
        public int dashMonsterLimit;
        public int flyingCannonMonsterLimit;

		public float spawnDelayTime; //time before another monster can be spawned
		public float delayCannonSpawnTimerLimit; //time before spawning another groundCannonMonster is considered

		public static MonsterManager monsterManager;
        public static PlayerManager playerManager;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
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

			monsterManager.HandleSpawnMonsters(gameTime);
            monsterManager.UpdateMonsters(gameTime, this);
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

