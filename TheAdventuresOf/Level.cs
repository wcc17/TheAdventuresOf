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

			//TODO: would really prefer this to be in MonsterManager rather than here.
			//initialize cannon monster position based on left and right side bounds
			CannonMonster.leftSideX = leftSideBounds.Width + 40;
			CannonMonster.rightSideX = rightSideBounds.X - AssetManager.cannonMonsterTexture.Width - 40;

			monsterManager = new MonsterManager(rightBoundWidth, leftBoundWidth, groundLevel);
			monsterManager.blockMonsterLimit = this.blockMonsterLimit;
			monsterManager.sunMonsterLimit = this.sunMonsterLimit;
			monsterManager.cannonMonsterLimit = this.cannonMonsterLimit;
		}

		public void CheckCollision(Character character)
		{
			if (leftSideBounds.Intersects(character.characterBounds))
			{
				character.HandleLevelBoundCollision(Character.LEFT, leftBoundWidth);
			}

			if (rightSideBounds.Intersects(character.characterBounds))
			{
				character.HandleLevelBoundCollision(Character.RIGHT, AssetManager.levelTexture.Width - rightBoundWidth);
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

