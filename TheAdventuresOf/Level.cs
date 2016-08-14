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
		public int monsterLimit;

		static Random rand = new Random();

		public List<Monster> monsters;
		public List<Monster> monstersToRemove;

		public Level()
		{
			levelPositionVector = new Vector2(0, 0);
			monsters = new List<Monster>();
			monstersToRemove = new List<Monster>();
		}

		public void InitializeLevel()
		{
			leftSideBounds = new Rectangle(0, 0, leftBoundWidth, AssetManager.levelTexture.Height);
			rightSideBounds = new Rectangle(AssetManager.levelTexture.Width - rightBoundWidth, 0, rightBoundWidth, AssetManager.levelTexture.Height);
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

		public int GetRandomXLocation(float characterWidth)
		{
			//character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
			//when generating a random number, it goes up to the second number - 1, which is why we include + 1
			int X = rand.Next(135, AssetManager.levelTexture.Width - rightBoundWidth - (int)characterWidth + 1);

			return X;
		}

		public void Update(GameTime gameTime, Player player)
		{
			//spawn new monsters if needed
			if (monsters.Count < monsterLimit)
			{
				Monster blockMonster = new Monster();

				//TODO: this needs to be replaced. see TODO comment on method declaration
				blockMonster = XmlImporter.TransferBlockMonsterInformation(blockMonster);
				blockMonster.groundLevel = groundLevel;
				blockMonster.InitializeCharacter(GetRandomXLocation(AssetManager.blockMonsterTexture.Width),
				                                 Screen.FULL_SCREEN_HEIGHT - AssetManager.blockMonsterTexture.Height,
												 AssetManager.blockMonsterTexture.Width / blockMonster.frameCount,
												 AssetManager.blockMonsterTexture.Height);
				blockMonster.InitializeSpawn();

				monsters.Add(blockMonster);
			}

			//update each monster and remove them if they're dead
			foreach (Monster monster in monsters)
			{
				//these methods go first so that monster can update in reaction to them
				CheckCollision(monster);
				player.CheckCollision(monster);

				monster.Update(gameTime);

				if (monster.isDead)
				{
					//TODO: NEEEEED to make sure that garbage collection removes these objects after removal
					//especially if i'm not going to use an object pool
					//level.monsters.Remove(monster);
					monstersToRemove.Add(monster);
				}
			}
			if (monstersToRemove.Count > 0)
			{
				monsters.RemoveAll(m => monstersToRemove.Contains(m));
				monstersToRemove.Clear();
			}
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Draw(AssetManager.levelTexture, levelPositionVector);
		}
	}
}

