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

		public int rightBoundWidth;
		public int leftBoundWidth;
		public float groundLevel;

		static Random rand = new Random();

		//TODO: delayCannonSpawnTimerLimit needs to be loaded from XML somewhere
		public int delayCannonSpawnTimerLimit = 4;
		TimeSpan delayCannonSpawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawnCannonMonster = true;

		public MonsterManager(Rectangle leftSideLevelBounds, Rectangle rightSideLevelBounds, float groundLevel)
		{
			monsters = new List<Monster>();
			monstersToRemove = new List<Monster>();

			this.rightBoundWidth = rightSideLevelBounds.Width;
			this.leftBoundWidth = leftSideLevelBounds.Width;
			this.groundLevel = groundLevel;

			//initialize cannon monster position based on left and right side bounds
			CannonMonster.leftSideX = leftSideLevelBounds.Width + 40;
			CannonMonster.rightSideX = rightSideLevelBounds.X - AssetManager.cannonMonsterTexture.Width - 40;
		}

		int getRandomXLocation(float characterWidth)
		{
			//character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
			//when generating a random number, it goes up to the second number - 1, which is why we include + 1
			//TODO: where does the 135 come from?
			int X = rand.Next(135, AssetManager.levelTexture.Width - rightBoundWidth - (int)characterWidth + 1);

			return X;
		}

		public void HandleSpawnMonsters()
		{
			//spawn new monsters if needed
			if (blockMonsterCount < blockMonsterLimit)
			{
				spawnBlockMonster();
			}

			if (sunMonsterCount < sunMonsterLimit)
			{
				spawnSunMonster();
			}

			if (cannonMonsterCount < cannonMonsterLimit)
			{
				handleCannonMonsterSpawn();
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
				player.CheckCollisionMonster(monster);

				if (monster is CannonMonster)
				{
					player.CheckCollisionBullet(((CannonMonster)monster).bullet);
				}

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

			//update cannon monster spawn timer 
			delayCannonSpawnTimer = delayCannonSpawnTimer.Add(gameTime.ElapsedGameTime);
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

		void spawnBlockMonster()
		{
			BlockMonster blockMonster = new BlockMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			XmlImporter.TransferBlockMonsterInformation(blockMonster);
			blockMonster.groundLevel = groundLevel;
			blockMonster.InitializeCharacter(getRandomXLocation(AssetManager.blockMonsterTexture.Width),
											 Screen.FULL_SCREEN_HEIGHT - AssetManager.blockMonsterTexture.Height,
											 AssetManager.blockMonsterTexture.Width / blockMonster.frameCount,
											 AssetManager.blockMonsterTexture.Height);
			blockMonster.InitializeSpawn();

			monsters.Add(blockMonster);

			blockMonsterCount++;
		}

		void spawnSunMonster()
		{
			SunMonster sunMonster = new SunMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			XmlImporter.TransferSunMonsterInformation(sunMonster);
			sunMonster.groundLevel = groundLevel - SunMonster.floatHeight;
			sunMonster.InitializeCharacter(getRandomXLocation(AssetManager.sunMonsterTexture.Width),
										   0 - AssetManager.sunMonsterTexture.Height,
										   AssetManager.sunMonsterTexture.Width / sunMonster.frameCount,
										   AssetManager.sunMonsterTexture.Height);
			sunMonster.InitializeSpawn();

			monsters.Add(sunMonster);

			sunMonsterCount++;
		}

		void handleCannonMonsterSpawn()
		{
			//if the timer is past the limit
			//randomly choose whether to spawn a new cannon monster or not
			if (delayCannonSpawnTimer.Seconds > delayCannonSpawnTimerLimit)
			{
				Console.WriteLine("Cannon monster timer limit passed");

				canSpawnCannonMonster = true;
				delayCannonSpawnTimer = TimeSpan.FromSeconds(0);
			}

			if (canSpawnCannonMonster)
			{
				Console.WriteLine("Could spawn monster");

				if (rand.Next(0, 2) == 0)
				{
					Console.WriteLine("Spawning monster");
					spawnCannonMonster();
				}
				else {
					Console.WriteLine("Decided not to spawn monster");
				}

				canSpawnCannonMonster = false;
			}
		}
		void spawnCannonMonster()
		{
			CannonMonster cannonMonster = new CannonMonster();

			//TODO: this needs to be replaced. see TODO comment on method declaration
			XmlImporter.TransferCannonMonsterInformation(cannonMonster);
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

