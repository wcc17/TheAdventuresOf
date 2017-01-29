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
		public CannonMonster cannonMonster;
		public BileMonster bileMonster;
		public Bile bile;
		public Bullet bullet;

		public int leftBoundWidth;
		public int rightBoundWidth;
		public float groundLevel;

		public int blockMonsterLimit;
		public int sunMonsterLimit;
		public int cannonMonsterLimit;
		public int bileMonsterLimit;

		public float spawnDelayTime; //time before another monster can be spawned
		public float delayCannonSpawnTimerLimit; //time before spawning another cannonMonster is considered

		public MonsterManager monsterManager;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.Instance.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.Instance.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.Instance.levelTexture.Height);

			monsterManager = new MonsterManager(this);
		}

		public void CheckCollision(Character character)
		{
			if (leftSideBounds.Intersects(character.entityBounds))
			{
				character.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
			}

			if (rightSideBounds.Intersects(character.entityBounds))
			{
				character.HandleLevelBoundCollision(Entity.RIGHT, AssetManager.Instance.levelTexture.Width - rightBoundWidth);
			}
		}

		public void Update(GameTime gameTime, Player player)
		{
			monsterManager.HandleSpawnMonsters(gameTime);
			monsterManager.UpdateMonsters(gameTime, this, player);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.Instance.levelTexture, levelPositionVector);
			monsterManager.DrawMonsters(spriteBatch);
		}
	}
}

