using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
	public class MonsterManager
	{
		public int blockMonsterCount;
		public int sunMonsterCount;
		public int cannonMonsterCount;

		public int blockMonsterLimit;
		public int sunMonsterLimit;
		public int cannonMonsterLimit;

		public List<Monster> monsters;
		public List<Monster> monstersToRemove;

		static Random rand = new Random();

		public int rightBoundWidth;
		public int leftBoundWidth;
		public float groundLevel;

		public MonsterManager(int rightBoundWidth, int leftBoundWidth, float groundLevel)
		{
			monsters = new List<Monster>();
			monstersToRemove = new List<Monster>();

			this.rightBoundWidth = rightBoundWidth;
			this.leftBoundWidth = leftBoundWidth;
			this.groundLevel = groundLevel;
		}

		int GetRandomXLocation(float characterWidth)
		{
			//character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
			//when generating a random number, it goes up to the second number - 1, which is why we include + 1
			int X = rand.Next(135, AssetManager.levelTexture.Width - rightBoundWidth - (int)characterWidth + 1);

			return X;
		}

		public void HandleSpawnMonsters()
		{
			//spawn new monsters if needed
			if (blockMonsterCount < blockMonsterLimit)
			{
				SpawnBlockMonster();
			}

			if (sunMonsterCount < sunMonsterLimit)
			{
				SpawnSunMonster();
			}

			if (cannonMonsterCount < cannonMonsterLimit)
			{
				SpawnCannonMonster();
			}
		}

		public void UpdateMonsterCount(Monster monster)
		{
			if (monster is BlockMonster)
			{
				blockMonsterCount--;
			}
			else if (monster is SunMonster)
			{
				sunMonsterCount--;
			}
			else if (monster is CannonMonster)
			{
				cannonMonsterCount--;
			}
		}

		public void UpdateMonsters(GameTime gameTime, Level level, Player player)
		{
			//update each monster and remove them if they're dead
			foreach (Monster monster in monsters)
			{
				//these methods go first so that monster can update in reaction to them
				level.CheckCollision(monster);
				player.CheckCollision(monster);

				monster.Update(gameTime);

				if (monster.isDead)
				{
					//TODO: NEEEEED to make sure that garbage collection removes these objects after removal
					//especially if i'm not going to use an object pool
					//level.monsters.Remove(monster);
					monstersToRemove.Add(monster);
					UpdateMonsterCount(monster);
				}
			}

			if (monstersToRemove.Count > 0)
			{
				monsters.RemoveAll(m => monstersToRemove.Contains(m));
				monstersToRemove.Clear();
			}
		}

		public void DrawMonsters(SpriteBatch spriteBatch)
		{
			foreach (Monster monster in monsters)
			{
				if (monster is BlockMonster)
				{
					monster.Draw(spriteBatch, AssetManager.blockMonsterTexture);
				}
				else if (monster is SunMonster)
				{
					monster.Draw(spriteBatch, AssetManager.sunMonsterTexture);
				}
				else if (monster is CannonMonster)
				{
					monster.Draw(spriteBatch, AssetManager.cannonMonsterTexture);
				}
			}
		}

		void SpawnBlockMonster()
		{
			BlockMonster blockMonster = new BlockMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			blockMonster = XmlImporter.TransferBlockMonsterInformation(blockMonster);
			blockMonster.groundLevel = groundLevel;
			blockMonster.InitializeCharacter(GetRandomXLocation(AssetManager.blockMonsterTexture.Width),
											 Screen.FULL_SCREEN_HEIGHT - AssetManager.blockMonsterTexture.Height,
											 AssetManager.blockMonsterTexture.Width / blockMonster.frameCount,
											 AssetManager.blockMonsterTexture.Height);
			blockMonster.InitializeSpawn();

			monsters.Add(blockMonster);

			blockMonsterCount++;
		}

		void SpawnSunMonster()
		{
			SunMonster sunMonster = new SunMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			sunMonster = XmlImporter.TransferSunMonsterInformation(sunMonster);
			sunMonster.groundLevel = groundLevel - SunMonster.floatHeight;
			sunMonster.InitializeCharacter(GetRandomXLocation(AssetManager.sunMonsterTexture.Width),
										   0 - AssetManager.sunMonsterTexture.Height,
										   AssetManager.sunMonsterTexture.Width / sunMonster.frameCount,
										   AssetManager.sunMonsterTexture.Height);
			sunMonster.InitializeSpawn();

			monsters.Add(sunMonster);

			sunMonsterCount++;
		}

		void SpawnCannonMonster()
		{
			CannonMonster cannonMonster = new CannonMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			cannonMonster = XmlImporter.TransferCannonMonsterInformation(cannonMonster);
			cannonMonster.groundLevel = groundLevel - 45;

			//random side of the level is chosen here. if a cannon monster already exists there, it will be handled here
			cannonMonster.ChooseRandomSide(cannonMonsterCount, monsters);

			//TODO: i hate to pass the newly set X pos here to be set again in character init, but this is best solution for now
			cannonMonster.InitializeCharacter(cannonMonster.positionVector.X,
											  Screen.FULL_SCREEN_HEIGHT - AssetManager.cannonMonsterTexture.Height,
											  AssetManager.cannonMonsterTexture.Width / cannonMonster.frameCount,
											  AssetManager.cannonMonsterTexture.Height);
			cannonMonster.InitializeSpawn();

			monsters.Add(cannonMonster);

			cannonMonsterCount++;
		}
	}
}

