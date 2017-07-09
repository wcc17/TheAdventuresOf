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
        public int spikeMonsterCount;
        public int dashMonsterCount;

		public static List<Monster> monsters;
		public List<Monster> monstersToRemove;

		static Random rand = new Random();

		TimeSpan spawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawn = false;

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
					  AssetManager.Instance.levelTexture.Width - level.rightSideBounds.Width - (int)characterWidth + 1);

			return X;
		}

		void handleSpawnDelay(GameTime gameTime)
		{
			spawnTimer = spawnTimer.Add(gameTime.ElapsedGameTime);
			if (spawnTimer.Seconds > level.spawnDelayTime)
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

                if (spikeMonsterCount < level.spikeMonsterLimit)
                {
                    spawnSpikeMonster();
                }

                if (dashMonsterCount < level.dashMonsterLimit)
                {
                    spawnDashMonster();
                }

				canSpawn = false;
			}
		}

        //TODO: could use map here for the counts? doesn't really matter that much
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
            else if (monster is SpikeMonster)
            {
                spikeMonsterCount--;
            }
            else if (monster is DashMonster)
            {
                dashMonsterCount--;
            }
		}

		public void UpdateMonsters(GameTime gameTime, Level level)
		{
			//update each monster and remove them if they're dead
			foreach (Monster monster in monsters)
			{
                //these methods go first so that monster can update in reaction to them
				level.CheckCollisionWithBounds(monster);
                level.CheckPlayerCollisionWithMonster(monster);

				if (monster is CannonMonster)
				{
                    level.CheckPlayerCollisionProjectile(((CannonMonster)monster).bullet);
				}
                if (monster is BileMonster) 
                {
                    foreach (Bile bile in ((BileMonster) monster).activeBileObjects) 
                    {
                        level.CheckPlayerCollisionProjectile(bile);    
                    }
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
			blockMonster.InitializeCharacter(getRandomXLocation(AssetManager.Instance.blockMonsterTexture.Width),
											 Screen.FULL_SCREEN_HEIGHT - AssetManager.Instance.blockMonsterTexture.Height,
											 AssetManager.Instance.blockMonsterTexture.Width / blockMonster.frameCount,
											 AssetManager.Instance.blockMonsterTexture.Height);
			blockMonster.InitializeSpawn();

			monsters.Add(blockMonster);

			blockMonsterCount++;
		}

		void spawnSunMonster()
		{
			SunMonster sunMonster = new SunMonster();

			sunMonster.SetSunMonsterData(level.sunMonster);
			sunMonster.groundLevel = level.groundLevel - SunMonster.floatHeight;
			sunMonster.InitializeCharacter(getRandomXLocation(AssetManager.Instance.sunMonsterTexture.Width),
										   0 - AssetManager.Instance.sunMonsterTexture.Height,
										   AssetManager.Instance.sunMonsterTexture.Width / sunMonster.frameCount,
										   AssetManager.Instance.sunMonsterTexture.Height);
			sunMonster.InitializeSpawn();

			monsters.Add(sunMonster);

			sunMonsterCount++;
		}

		void spawnBileMonster()
		{
			BileMonster bileMonster = new BileMonster();

			bileMonster.SetBileMonsterData(level.bileMonster);
			bileMonster.groundLevel = level.groundLevel - BileMonster.floatHeight;
			bileMonster.InitializeCharacter(getRandomXLocation(AssetManager.Instance.bileMonsterTexture.Width),
											0 - AssetManager.Instance.bileMonsterTexture.Height,
											AssetManager.Instance.bileMonsterTexture.Width / bileMonster.frameCount,
											AssetManager.Instance.bileMonsterTexture.Height);
			bileMonster.InitializeSpawn();

			monsters.Add(bileMonster);

			bileMonsterCount++;
		}

		void spawnCannonMonster()
		{
			CannonMonster cannonMonster = new CannonMonster();

			cannonMonster.SetCannonMonsterData(level.cannonMonster);
			cannonMonster.groundLevel = level.groundLevel - CannonMonster.groundOffset;
			//random side of the level is chosen here. if a cannon monster already exists there, it will be handled here
			cannonMonster.ChooseRandomSide(cannonMonsterCount, monsters);
			cannonMonster.InitializeCharacter(cannonMonster.positionVector.X,
											  Screen.FULL_SCREEN_HEIGHT - AssetManager.Instance.cannonMonsterTexture.Height,
											  AssetManager.Instance.cannonMonsterTexture.Width / cannonMonster.frameCount,
											  AssetManager.Instance.cannonMonsterTexture.Height);
			cannonMonster.InitializeSpawn();

			monsters.Add(cannonMonster);

			cannonMonsterCount++;
		}

        void spawnSpikeMonster() 
        {
            SpikeMonster spikeMonster = new SpikeMonster();

            spikeMonster.SetSpikeMonsterData(level.spikeMonster);
            spikeMonster.groundLevel = level.groundLevel - SpikeMonster.floatHeight;
            spikeMonster.InitializeCharacter(getRandomXLocation(AssetManager.Instance.spikeMonsterTexture.Width),
                                             0 - AssetManager.Instance.spikeMonsterTexture.Height,
                                             AssetManager.Instance.spikeMonsterTexture.Width / spikeMonster.frameCount,
                                             AssetManager.Instance.spikeMonsterTexture.Height);
            spikeMonster.InitializeSpawn();

            monsters.Add(spikeMonster);

            spikeMonsterCount++;
        }

        void spawnDashMonster()
        {
            DashMonster dashMonster = new DashMonster();

            dashMonster.SetDashMonsterData(level.dashMonster);
            dashMonster.groundLevel = level.groundLevel + DashMonster.groundOffset;
            //TODO: do we want him to spawn in a random spot or at either side of the level?
            dashMonster.InitializeCharacter(getRandomXLocation(AssetManager.Instance.dashMonsterTexture.Width),
                                            Screen.FULL_SCREEN_HEIGHT - AssetManager.Instance.dashMonsterTexture.Height,
                                            AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount,
                                            AssetManager.Instance.dashMonsterTexture.Height);
            dashMonster.InitializeSpawn();

            monsters.Add(dashMonster);

            dashMonsterCount++;
        }

		void handleCannonMonsterSpawn()
		{
			//if the timer is past the limit
			//randomly choose whether to spawn a new cannon monster or not
			if (delayCannonSpawnTimer.Seconds > level.delayCannonSpawnTimerLimit)
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

