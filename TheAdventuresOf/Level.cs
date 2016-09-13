using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
namespace TheAdventuresOf
{
	public class Level
	{
		public Vector2 levelPositionVector;

		public Rectangle leftSideBounds;
		public Rectangle rightSideBounds;

		//these are set in XmlImporter. these hold default values that are loaded from xml so the values aren't hardcoded
		public BlockMonster blockMonster;
		public SunMonster sunMonster;
		public CannonMonster cannonMonster;
		public BileMonster bileMonster;

		public int leftBoundWidth;
		public int rightBoundWidth;
		public float groundLevel;

		public int blockMonsterLimit;
		public int sunMonsterLimit;
		public int cannonMonsterLimit;
		public int bileMonsterLimit;

		public MonsterManager monsterManager;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.levelTexture.Height);

			//initialize cannon monster position based on left and right side bounds
			CannonMonster.leftSideX = leftSideBounds.Width + 40;
			CannonMonster.rightSideX = rightSideBounds.X - AssetManager.cannonMonsterTexture.Width - 40;

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
				character.HandleLevelBoundCollision(Entity.RIGHT, AssetManager.levelTexture.Width - rightBoundWidth);
			}
		}

		public void Update(GameTime gameTime, Player player)
		{
			monsterManager.HandleSpawnMonsters(gameTime);
			monsterManager.UpdateMonsters(gameTime, this, player);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.levelTexture, levelPositionVector);
			monsterManager.DrawMonsters(spriteBatch);
		}
	}
}

