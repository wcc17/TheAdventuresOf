using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Threading;

namespace TheAdventuresOf
{
	public class MonsterManager
	{
        const int BLOCK_MONSTER = 0;
        const int SUN_MONSTER = 1;
        const int GROUND_CANNON_MONSTER = 2;
        const int BILE_MONSTER = 3;
        const int SPIKE_MONSTER = 4;
        const int DASH_MONSTER = 5;
        const int FLYING_CANNON_MONSTER = 6;

		public Level level;

		public int blockMonsterCount;
		public int sunMonsterCount;
		public int groundCannonMonsterCount;
		public int bileMonsterCount;
        public int spikeMonsterCount;
        public int dashMonsterCount;
        public int flyingCannonMonsterCount;
        public int monsterCount;

		public static List<Monster> monsters;
		public List<Monster> monstersToRemove;
        List<int> availableMonsters;

		static Random rand = new Random();

		TimeSpan spawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawn = false;

		TimeSpan delayCannonSpawnTimer = TimeSpan.FromSeconds(0);
		bool canSpawnCannonMonster = true;

		public MonsterManager(Level level)
		{
			monsters = new List<Monster>();

            //just trying to avoid creating new lists every other frame or whatever
            monstersToRemove = new List<Monster>();
            availableMonsters = new List<int>(); 

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

        //TODO: this method alone is reason enough to move spawning info to its own Manager	
		public void HandleSpawnMonsters(GameTime gameTime)
		{
			handleSpawnDelay(gameTime);

            //will be a chance to not spawn a monster this time
            //if (canSpawn && (monsterCount >= level.minimumMonsterCount) && rand.Next(0, 2) == 0)
            //{
            //    canSpawn = false;
            //}

			if (canSpawn)
			{
                availableMonsters.Clear();

				//spawn new monsters if needed
				if (blockMonsterCount < level.blockMonsterLimit)
				{
                    availableMonsters.Add(BLOCK_MONSTER);
				}

				if (sunMonsterCount < level.sunMonsterLimit)
				{
                    availableMonsters.Add(SUN_MONSTER);
				}

                if (groundCannonMonsterCount < level.groundCannonMonsterLimit)
				{
                    availableMonsters.Add(GROUND_CANNON_MONSTER);
				}

				if (bileMonsterCount < level.bileMonsterLimit)
				{
                    availableMonsters.Add(BILE_MONSTER);
				}

                if (spikeMonsterCount < level.spikeMonsterLimit)
                {
                    availableMonsters.Add(SPIKE_MONSTER);
                }

                if (dashMonsterCount < level.dashMonsterLimit)
                {
                    availableMonsters.Add(DASH_MONSTER);
                }

                if (flyingCannonMonsterCount < level.flyingCannonMonsterLimit)
                {
                    availableMonsters.Add(FLYING_CANNON_MONSTER);
                }

                if(availableMonsters.Count > 0) {
                    int randomMonsterIndex = rand.Next(0, availableMonsters.Count);
                    int monsterToSpawn = availableMonsters[randomMonsterIndex];

                    switch (monsterToSpawn)
                    {
                        case BLOCK_MONSTER:
                            spawnBlockMonster();
                            break;
                        case SUN_MONSTER:
                            spawnSunMonster();
                            break;
                        case GROUND_CANNON_MONSTER:
                            //handleGroundCannonMonsterSpawn();
                            spawnGroundCannonMonster();
                            break;
                        case BILE_MONSTER:
                            spawnBileMonster();
                            break;
                        case SPIKE_MONSTER:
                            spawnSpikeMonster();
                            break;
                        case DASH_MONSTER:
                            spawnDashMonster();
                            break;
                        case FLYING_CANNON_MONSTER:
                            spawnFlyingCannonMonster();
                            break;
                    }

                    monsterCount++;
                    canSpawn = false;
                }
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
			else if (monster is GroundCannonMonster)
			{
                groundCannonMonsterCount--;
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
            else if (monster is FlyingCannonMonster)
            {
                flyingCannonMonsterCount--;
            }

            monsterCount++;
		}

		public void UpdateMonsters(GameTime gameTime, Level level)
		{
			//update each monster and remove them if they're dead
			foreach (Monster monster in monsters)
			{
                //these methods go first so that monster can update in reaction to them
				level.CheckCollisionWithBounds(monster);
                level.CheckPlayerCollisionWithMonster(monster);

                if (monster is BaseCannonMonster)
				{
                    level.CheckPlayerCollisionProjectile(((BaseCannonMonster)monster).bullet);
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
				if ( !(monster is GroundCannonMonster) )
				{
					monster.Draw(spriteBatch);
				}
			}

			//GroundCannonMonster should always be drawn last so that bullet is always on top of other monsters
			foreach (Monster monster in monsters.FindAll(m => m is GroundCannonMonster))
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
											 ScreenManager.FULL_SCREEN_HEIGHT - AssetManager.Instance.blockMonsterTexture.Height,
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

		void spawnGroundCannonMonster()
		{
			GroundCannonMonster groundCannonMonster = new GroundCannonMonster();

			groundCannonMonster.SetCannonMonsterData(level.groundCannonMonster);
			groundCannonMonster.groundLevel = level.groundLevel - GroundCannonMonster.groundOffset;
			//random side of the level is chosen here. if a cannon monster already exists there, it will be handled here
            groundCannonMonster.ChooseRandomSide(groundCannonMonsterCount, monsters);
			groundCannonMonster.InitializeCharacter(groundCannonMonster.positionVector.X,
											  ScreenManager.FULL_SCREEN_HEIGHT - AssetManager.Instance.cannonMonsterTexture.Height,
											  AssetManager.Instance.cannonMonsterTexture.Width / groundCannonMonster.frameCount,
											  AssetManager.Instance.cannonMonsterTexture.Height);
			groundCannonMonster.InitializeSpawn();

			monsters.Add(groundCannonMonster);

			groundCannonMonsterCount++;
		}

        void spawnFlyingCannonMonster()
        {
            FlyingCannonMonster flyingCannonMonster = new FlyingCannonMonster();

            flyingCannonMonster.SetFlyingCannonMonsterData(level.flyingCannonMonster);
            flyingCannonMonster.groundLevel = level.groundLevel - FlyingCannonMonster.floatHeight;
            flyingCannonMonster.ChooseRandomSide(flyingCannonMonsterCount, monsters);
            flyingCannonMonster.InitializeCharacter(flyingCannonMonster.positionVector.X,
                                                    0 - AssetManager.Instance.flyingCannonMonsterTexture.Height,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Width / flyingCannonMonster.frameCount,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Height);

            flyingCannonMonster.InitializeSpawn();

            monsters.Add(flyingCannonMonster);

            flyingCannonMonsterCount++;
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
                                            ScreenManager.FULL_SCREEN_HEIGHT - AssetManager.Instance.dashMonsterTexture.Height,
                                            AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount,
                                            AssetManager.Instance.dashMonsterTexture.Height);
            dashMonster.InitializeSpawn();

            monsters.Add(dashMonster);

            dashMonsterCount++;
        }

        //TODO: this should be retooled for all monsters
        //maybe get rid of the delay timer and just add a short delay
        //before a new monster can be delayed
        //ultimately the goal is to prevent new monsters from spawning
        //DIRECTLY after old monsters die.
		//void handleGroundCannonMonsterSpawn()
		//{
		//	//if the timer is past the limit
		//	//randomly choose whether to spawn a new cannon monster or not
		//	if (delayCannonSpawnTimer.Seconds > level.delayCannonSpawnTimerLimit)
		//	{
		//		//Console.WriteLine("Cannon monster timer limit passed");

		//		canSpawnCannonMonster = true;
		//		delayCannonSpawnTimer = TimeSpan.FromSeconds(0);
		//	}

		//	if (canSpawnCannonMonster)
		//	{
		//		//Console.WriteLine("Could spawn monster");

		//		if (rand.Next(0, 2) == 0)
		//		{
		//			//Console.WriteLine("Spawning monster");
		//			spawnCannonMonster();
		//		}
		//		else {
		//			//Console.WriteLine("Decided not to spawn monster");
		//		}

		//		canSpawnCannonMonster = false;
		//	}
		//}
	}
}

