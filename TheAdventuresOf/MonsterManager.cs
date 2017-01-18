using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Threading;

namespace TheAdventuresOf
{
	public class MonsterManager
	{
		public Level level;

		public int blockMonsterCount;
		public int sunMonsterCount;
		public int cannonMonsterCount;
		public int bileMonsterCount;

		public List<Monster> monsters;
		public List<Monster> monstersToRemove;

		static Random rand = new Random();

		//TODO: spawnDelayTime needs to be loaded from XML
		float spawnDelayTime = 0.5f;
		TimeSpan spawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawn = false;

		//TODO: delayCannonSpawnTimerLimit needs to be loaded from XML somewhere
		float delayCannonSpawnTimerLimit = 4;
		TimeSpan delayCannonSpawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawnCannonMonster = true;

		public MonsterManager(Level level)
		{
			monsters = new List<Monster>();
			monstersToRemove = new List<Monster>();

			this.level = level;
		}

		int getRandomXLocation(float characterWidth)
		{
			//character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
			//when generating a random number, it goes up to the second number - 1, which is why we include + 1
			int X = rand.Next(level.leftSideBounds.Width, 
					  AssetManager.levelTexture.Width - level.rightSideBounds.Width - (int)characterWidth + 1);

			return X;
		}

		void handleSpawnDelay(GameTime gameTime)
		{
			//TODO: all of these timer methods can probably be one single method or class method
			spawnTimer = spawnTimer.Add(gameTime.ElapsedGameTime);
			if (spawnTimer.Seconds > spawnDelayTime)
			{
				//will allow monsters to spawn, then next frame the timer will start adding up again
				canSpawn = true;
				spawnTimer = TimeSpan.FromSeconds(0);
			}
		}

	
		public void HandleSpawnMonsters(GameTime gameTime)
		{
			handleSpawnDelay(gameTime);

			if (canSpawn)
			{
				//spawn new monsters if needed
				if (blockMonsterCount < level.blockMonsterLimit)
				{
					spawnBlockMonster();
				}

				if (sunMonsterCount < level.sunMonsterLimit)
				{
					spawnSunMonster();
				}

				if (cannonMonsterCount < level.cannonMonsterLimit)
				{
					handleCannonMonsterSpawn();
				}

				if (bileMonsterCount < level.bileMonsterLimit)
				{
					spawnBileMonster();
				}

				canSpawn = false;
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
			else if (monster is BileMonster)
			{
				bileMonsterCount--;
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
				monsters.RemoveAll(m => monstersToRemove.Contains(m)); //removes all monsters in monstersToRemove from monsters list
				monstersToRemove.Clear();
			}

			//update cannon monster spawn timer 
			delayCannonSpawnTimer = delayCannonSpawnTimer.Add(gameTime.ElapsedGameTime);
		}

		public void DrawMonsters(SpriteBatch spriteBatch)
		{
			foreach (Monster monster in monsters)
			{
				if ( !(monster is CannonMonster) )
				{
					monster.Draw(spriteBatch);
				}
			}

			//CannonMonster should always be drawn last so that bullet is always on top of other monsters
			foreach (Monster monster in monsters.FindAll(m => m is CannonMonster))
			{
				monster.Draw(spriteBatch);
			}
		}

		//TODO: all spawn*Monster methods should be moved to a MonsterSpawner class.
		//Then I can make a generic monster.Spawn method or something along those lines and go from there to 
		//these more specific methods (if possible). at the very least, MonsterSpawner or something like that
		void spawnBlockMonster()
		{
			BlockMonster blockMonster = new BlockMonster();

			blockMonster.SetBlockMonsterData(level.blockMonster);
			blockMonster.groundLevel = level.groundLevel;
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

			sunMonster.SetSunMonsterData(level.sunMonster);
			sunMonster.groundLevel = level.groundLevel - SunMonster.floatHeight;
			sunMonster.InitializeCharacter(getRandomXLocation(AssetManager.sunMonsterTexture.Width),
										   0 - AssetManager.sunMonsterTexture.Height,
										   AssetManager.sunMonsterTexture.Width / sunMonster.frameCount,
										   AssetManager.sunMonsterTexture.Height);
			sunMonster.InitializeSpawn();

			monsters.Add(sunMonster);

			sunMonsterCount++;
		}

		void spawnBileMonster()
		{
			BileMonster bileMonster = new BileMonster();

			bileMonster.SetBileMonsterData(level.bileMonster);
			bileMonster.groundLevel = level.groundLevel - BileMonster.floatHeight;
			bileMonster.InitializeCharacter(getRandomXLocation(AssetManager.bileMonsterTexture.Width),
											0 - AssetManager.bileMonsterTexture.Height,
											AssetManager.bileMonsterTexture.Width / bileMonster.frameCount,
											AssetManager.bileMonsterTexture.Height);
			bileMonster.InitializeSpawn();

			monsters.Add(bileMonster);

			bileMonsterCount++;
		}

		void spawnCannonMonster()
		{
			CannonMonster cannonMonster = new CannonMonster();

			cannonMonster.SetCannonMonsterData(level.cannonMonster);
			//TODO: get rid of this hardcoded number
			cannonMonster.groundLevel = level.groundLevel - 45;

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
	}
}

