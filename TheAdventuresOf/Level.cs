using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;
namespace TheAdventuresOf
{
	public class Level
	{
		static Vector2 levelPositionVector;

		static Rectangle leftSideBounds;
		static Rectangle rightSideBounds;

		public int leftBoundWidth;
		public int rightBoundWidth;
		public float groundLevel;

		public int blockMonsterLimit;
		public int sunMonsterLimit;
		public int cannonMonsterLimit;

		public MonsterManager monsterManager;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.levelTexture.Height);

			monsterManager = new MonsterManager(leftSideBounds, rightSideBounds, groundLevel);
			monsterManager.blockMonsterLimit = this.blockMonsterLimit;
			monsterManager.sunMonsterLimit = this.sunMonsterLimit;
			monsterManager.cannonMonsterLimit = this.cannonMonsterLimit;
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
			monsterManager.HandleSpawnMonsters();
			monsterManager.UpdateMonsters(gameTime, this, player);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.levelTexture, levelPositionVector);
			monsterManager.DrawMonsters(spriteBatch);
		}
	}
}

