using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Threading;

namespace TheAdventuresOf
{
    public class MonsterManager
    {
        public const int BLOCK_MONSTER = 0;
        public const int SUN_MONSTER = 1;
        public const int GROUND_CANNON_MONSTER = 2;
        public const int BILE_MONSTER = 3;
        public const int SPIKE_MONSTER = 4;
        public const int DASH_MONSTER = 5;
        public const int FLYING_CANNON_MONSTER = 6;
        public const int UNDERGROUND_MONSTER = 7;
        public const int SWOOP_MONSTER = 8;

        public Level level;

        public int blockMonsterCount;
        public int sunMonsterCount;
        public int groundCannonMonsterCount;
        public int bileMonsterCount;
        public int spikeMonsterCount;
        public int dashMonsterCount;
        public int flyingCannonMonsterCount;
        public int undergroundMonsterCount;
        public int swoopMonsterCount;
        public int monsterCount;

        public static List<Monster> monsters;
        public List<Monster> monstersToRemove;
        List<int> availableMonsters;

        static Random rand = new Random();

        TimeSpan spawnTimer = TimeSpan.FromSeconds(0);
        bool canSpawn = false;

        public MonsterManager(Level level)
        {
            monsters = new List<Monster>();

            //just trying to avoid creating new lists every other frame or whatever
            monstersToRemove = new List<Monster>();
            availableMonsters = new List<int>(); 

            this.level = level;
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

            if (canSpawn)
            {
                availableMonsters.Clear();

                //spawn new monsters if needed
                if (blockMonsterCount < level.tierMonsterLimits[BLOCK_MONSTER][level.currentTier]) {
                    availableMonsters.Add(BLOCK_MONSTER);
                }
                if (sunMonsterCount < level.tierMonsterLimits[SUN_MONSTER][level.currentTier]) {
                    availableMonsters.Add(SUN_MONSTER);
                }
                if (groundCannonMonsterCount < level.tierMonsterLimits[GROUND_CANNON_MONSTER][level.currentTier]) {
                    availableMonsters.Add(GROUND_CANNON_MONSTER);
                }
                if (bileMonsterCount < level.tierMonsterLimits[BILE_MONSTER][level.currentTier]) {
                    availableMonsters.Add(BILE_MONSTER);
                }
                if (spikeMonsterCount < level.tierMonsterLimits[SPIKE_MONSTER][level.currentTier]) {
                    availableMonsters.Add(SPIKE_MONSTER);
                }
                if (dashMonsterCount < level.tierMonsterLimits[DASH_MONSTER][level.currentTier]) {
                    availableMonsters.Add(DASH_MONSTER);
                }
                if (flyingCannonMonsterCount < level.tierMonsterLimits[FLYING_CANNON_MONSTER][level.currentTier]) {
                    availableMonsters.Add(FLYING_CANNON_MONSTER);
                }
                if (undergroundMonsterCount < level.tierMonsterLimits[UNDERGROUND_MONSTER][level.currentTier]) {
                    availableMonsters.Add(UNDERGROUND_MONSTER);
                }
                if (swoopMonsterCount < level.tierMonsterLimits[SWOOP_MONSTER][level.currentTier]) {
                    availableMonsters.Add(SWOOP_MONSTER);
                }

                //if(availableMonsters.Count > 0) {

                //int randomMonsterIndex = rand.Next(0, availableMonsters.Count);
                //int monsterToSpawn = availableMonsters[randomMonsterIndex];
                foreach(int monsterToSpawn in availableMonsters) {
                    
                    switch (monsterToSpawn) {
                        case BLOCK_MONSTER:
                            spawnBlockMonster();
                            break;
                        case SUN_MONSTER:
                            spawnSunMonster();
                            break;
                        case GROUND_CANNON_MONSTER:
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
                        case UNDERGROUND_MONSTER:
                            spawnUndergroundMonster();
                            break;
                        case SWOOP_MONSTER:
                            spawnSwoopMonster();
                            break;
                    }

                    monsterCount++;
                }

                canSpawn = false;
            }
        }

        public void Update(GameTime gameTime) {
            HandleSpawnMonsters(gameTime);
            UpdateMonsters(gameTime);

            Logger.Instance.AddOrUpdateValue("Tier", (level.currentTier+1).ToString());
            Logger.Instance.AddOrUpdateValue("TierLimit", (level.tierScores[level.currentTier].ToString()));
            Logger.Instance.AddOrUpdateValue("Block Limit: ", level.tierMonsterLimits[BLOCK_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Sun Limit: ", level.tierMonsterLimits[SUN_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("GCannon Limit: ", level.tierMonsterLimits[GROUND_CANNON_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("FCannon Limit: ", level.tierMonsterLimits[FLYING_CANNON_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Bile Limit: ", level.tierMonsterLimits[BILE_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Spike Limit: ", level.tierMonsterLimits[SPIKE_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Dash Limit: ", level.tierMonsterLimits[DASH_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("UGround Limit: ", level.tierMonsterLimits[UNDERGROUND_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Swoop Limit: ", level.tierMonsterLimits[SWOOP_MONSTER][level.currentTier].ToString());
        }

        public void UpdateMonsterCount(Monster monster) {
            //TODO: all if statements or else if? can I do a switch by any chance?
            if (monster is BlockMonster) {
                blockMonsterCount--;
            } else if (monster is SunMonster) {
                sunMonsterCount--;
            } else if (monster is GroundCannonMonster) {
                groundCannonMonsterCount--;
            } else if (monster is BileMonster) {
                bileMonsterCount--;
            } else if (monster is SpikeMonster) {
                spikeMonsterCount--;
            } else if (monster is DashMonster) {
                dashMonsterCount--;
            } else if (monster is FlyingCannonMonster) {
                flyingCannonMonsterCount--;
            } else if (monster is UndergroundMonster) {
                undergroundMonsterCount--;   
            } else if(monster is SwoopMonster) {
                swoopMonsterCount--;
            }

            monsterCount--;
        }

        public void UpdateMonsters(GameTime gameTime)
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
                    //TODO: good place to look at in the event of performance issues
                    monstersToRemove.Add(monster);
                    UpdateMonsterCount(monster);
                }
            }

            if (monstersToRemove.Count > 0)
            {
                monsters.RemoveAll(m => monstersToRemove.Contains(m)); //removes all monsters in monstersToRemove from monsters list
                monstersToRemove.Clear();
            }
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

            //TODO: there needs to be a better way to do this. Theres no reason to 
            //TODO: loop through all of the monsters again just to get the GroundCannonMonster
            //TODO: also am not doing it for the FlyingCannonMonster
            //GroundCannonMonster should always be drawn last so that bullet is always on top of other monsters
            foreach (Monster monster in monsters.FindAll(m => m is GroundCannonMonster))
            {
                monster.Draw(spriteBatch);
            }
        }

        //TODO: all spawn*Monster methods should be moved to a MonsterSpawner class.
        Monster determineSpawnTypeRandom(Monster monster)
        {
            //25% left
            //25% right
            //50% top
            int randNo = rand.Next(0, 4);
            int spawnType = Monster.SPAWN_TOP;
            switch(randNo) {
                case 0:
                    spawnType = Monster.SPAWN_LEFT;
                    break;
                case 1:
                    spawnType = Monster.SPAWN_RIGHT;
                    break;
                case 2:
                case 3:
                    spawnType = Monster.SPAWN_TOP;
                    break;
            }

            return handleSpawnType(monster, spawnType);
        }

        /**
         * Call the appropriate spawning method (top/bottom or left/right)
         */
        Monster handleSpawnType(Monster monster, int spawnType) {

            if(spawnType == Monster.SPAWN_TOP || spawnType == Monster.SPAWN_BOTTOM) {
                handleTopBottomSpawn(monster, spawnType);                
            } else {
                handleSideSpawn(monster, spawnType);   
            }

            monster.spawnType = spawnType;
            monster.UpdateEntityBounds(); //so that the new position sticks
            return monster;
        }

        /**
         * When monster is spawning from the top or the bottom of the screen
         */
        void handleTopBottomSpawn(Monster monster, int spawnType) {
            monster.positionVector.X = getRandomXLocation(monster.entityWidth, 
                                                          level.leftBoundWidth, 
                                                          (int)(ScreenManager.FULL_SCREEN_WIDTH - level.rightBoundWidth));

            if (spawnType == Monster.SPAWN_TOP) {
                monster.positionVector.Y = 0 - monster.entityHeight;
            } else {
                monster.positionVector.Y = ScreenManager.FULL_SCREEN_HEIGHT + monster.entityHeight;
            }
        }

        /**
         * When monster is spawning from the left or right side of the screen
         */
        void handleSideSpawn(Monster monster, int spawnType) {
            monster.moveLeft = false;
            monster.moveRight = false;
            monster.positionVector.Y = monster.groundLevel;
            monster.spawnXLimit = determineSpawnXLimit(monster, spawnType);

            if (spawnType == Monster.SPAWN_LEFT) {
                monster.moveRight = true;
                monster.positionVector.X = 0 - monster.entityWidth;
            } else {
                monster.moveLeft = true;
                monster.positionVector.X = ScreenManager.FULL_SCREEN_WIDTH + monster.entityWidth;
            }
        }

        /**
         * Responsible for giving a monster a random X location to end up at
         * after its done spawning. Will check other monsters X positions at the 
         * time of spawning to try to ensure that the new monster won't end up
         * at the same spot
         */
        int getRandomXLocation(int characterWidth, int leftSideXLimit, int rightSideXLimit) {

            //character width is necessary to make sure we don't spawn a monster (x is the top left corner) on top of a boundary
            //when generating a random number, it goes up to the second number - 1, which is why we include + 1
            return rand.Next(leftSideXLimit, rightSideXLimit - (characterWidth + 1));
        }

        int determineSpawnXLimit(Monster monster, int spawnType) {
            if(monster is SpikeMonster) {
                return (int)PlayerManager.Instance.GetPlayerPosition().X;
            }

            //only let monsters go to the half of the screen they spawn on
            int leftSideXLimit;
            int rightSideXLimit;
            if(spawnType == Monster.SPAWN_LEFT) {
                leftSideXLimit = level.leftBoundWidth + 1;
                rightSideXLimit = (int)(ScreenManager.FULL_SCREEN_WIDTH / 2) 
                                 - monster.entityWidth;
            } else {
                leftSideXLimit = (int)(ScreenManager.FULL_SCREEN_WIDTH / 2);
                rightSideXLimit = (int)ScreenManager.FULL_SCREEN_WIDTH
                                        - level.rightBoundWidth
                                        - monster.entityWidth;
            }

            return getRandomXLocation(monster.entityWidth, leftSideXLimit, rightSideXLimit);
        }

        void spawnBlockMonster()
        {
            BlockMonster blockMonster = new BlockMonster();

            blockMonster.SetBlockMonsterData(level.blockMonster);
            blockMonster.groundLevel = level.groundLevel;
            blockMonster.InitializeEntity(AssetManager.Instance.blockMonsterTexture.Width / blockMonster.frameCount,
                                          AssetManager.Instance.blockMonsterTexture.Height);
            blockMonster = (BlockMonster) handleSpawnType(blockMonster, Monster.SPAWN_BOTTOM);
            blockMonster.InitializeSpawn();

            monsters.Add(blockMonster);

            blockMonsterCount++;
        }

        void spawnSunMonster()
        {
            SunMonster sunMonster = new SunMonster();

            sunMonster.SetSunMonsterData(level.sunMonster);
            sunMonster.groundLevel = level.groundLevel - SunMonster.floatHeight;
            sunMonster.InitializeEntity(AssetManager.Instance.sunMonsterTexture.Width / sunMonster.frameCount,
                                        AssetManager.Instance.sunMonsterTexture.Height);
            sunMonster = (SunMonster)determineSpawnTypeRandom(sunMonster);
            sunMonster.InitializeSpawn();

            monsters.Add(sunMonster);

            sunMonsterCount++;
        }

        void spawnBileMonster()
        {
            BileMonster bileMonster = new BileMonster();

            bileMonster.SetBileMonsterData(level.bileMonster);
            bileMonster.groundLevel = level.groundLevel - BileMonster.floatHeight;
            bileMonster.InitializeEntity(AssetManager.Instance.bileMonsterTexture.Width / bileMonster.frameCount,
                                         AssetManager.Instance.bileMonsterTexture.Height);
            bileMonster = (BileMonster)determineSpawnTypeRandom(bileMonster);
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
            groundCannonMonster.InitializeEntity(groundCannonMonster.positionVector.X,
                                              ScreenManager.FULL_SCREEN_HEIGHT + AssetManager.Instance.cannonMonsterTexture.Height,
                                              AssetManager.Instance.cannonMonsterTexture.Width / groundCannonMonster.frameCount,
                                              AssetManager.Instance.cannonMonsterTexture.Height);

            groundCannonMonster.spawnType = Monster.SPAWN_BOTTOM; //is default, but want to be explicit here
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
            flyingCannonMonster.InitializeEntity(flyingCannonMonster.positionVector.X,
                                                    0 - AssetManager.Instance.flyingCannonMonsterTexture.Height,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Width / flyingCannonMonster.frameCount,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Height);

            flyingCannonMonster.spawnType = Monster.SPAWN_TOP;
            flyingCannonMonster.InitializeSpawn();

            monsters.Add(flyingCannonMonster);

            flyingCannonMonsterCount++;
        }

        void spawnSpikeMonster() 
        {
            SpikeMonster spikeMonster = new SpikeMonster();

            spikeMonster.SetSpikeMonsterData(level.spikeMonster);
            spikeMonster.groundLevel = level.groundLevel - SpikeMonster.floatHeight;
            spikeMonster.InitializeEntity(AssetManager.Instance.spikeMonsterTexture.Width / spikeMonster.frameCount,
                                          AssetManager.Instance.spikeMonsterTexture.Height);
            spikeMonster = (SpikeMonster)determineSpawnTypeRandom(spikeMonster);
            spikeMonster.InitializeSpawn();

            monsters.Add(spikeMonster);

            spikeMonsterCount++;
        }

        void spawnDashMonster()
        {
            DashMonster dashMonster = new DashMonster();

            dashMonster.SetDashMonsterData(level.dashMonster);
            dashMonster.groundLevel = level.groundLevel + DashMonster.groundOffset;
            dashMonster.InitializeEntity(AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount,
                                         AssetManager.Instance.dashMonsterTexture.Height);
            dashMonster = (DashMonster)handleSpawnType(dashMonster, Monster.SPAWN_BOTTOM);
            dashMonster.InitializeSpawn();

            monsters.Add(dashMonster);

            dashMonsterCount++;
        }

        void spawnUndergroundMonster() {
            UndergroundMonster undergroundMonster = new UndergroundMonster();

            undergroundMonster.SetUndergroundMonsterData(level.undergroundMonster);
            undergroundMonster.groundLevel = level.groundLevel;
            undergroundMonster.InitializeEntity(PlayerManager.Instance.GetPlayerPosition().X,
                                                   ScreenManager.FULL_SCREEN_HEIGHT + AssetManager.Instance.undergroundMonsterTexture.Height,
                                                   AssetManager.Instance.undergroundMonsterTexture.Width,
                                                   AssetManager.Instance.undergroundMonsterTexture.Height);

            //even though theres no true "spawn", just need to get him ready
            undergroundMonster.InitializeSpawn();

            monsters.Add(undergroundMonster);

            undergroundMonsterCount++;
        }

        void spawnSwoopMonster() {
            SwoopMonster swoopMonster = new SwoopMonster();

            swoopMonster.SetSwoopMonsterData(level.swoopMonster);
            swoopMonster.groundLevel = level.groundLevel - SwoopMonster.floatHeight;
            swoopMonster.InitializeEntity(AssetManager.Instance.swoopMonsterTexture.Width / swoopMonster.frameCount,
                                          AssetManager.Instance.swoopMonsterTexture.Height);
            swoopMonster = (SwoopMonster)determineSpawnTypeRandom(swoopMonster);
            swoopMonster.InitializeSpawn();

            monsters.Add(swoopMonster);

            swoopMonsterCount++;
        }

   //     void getLeastUsedZone(int leftSideXLimit, int rightSideXLimit) {
			////the area we have to work with
			//int spawnAreaWidth = rightSideXLimit - leftSideXLimit;

			////how many "zones" we should check to see if monsters are there
			//int numberOfZones = 6; //TODO: Magic number
			//if (spawnAreaWidth > (ScreenManager.FULL_SCREEN_WIDTH / 2))
			//{
			//	numberOfZones /= 2;
			//}

			//int zoneWidth = spawnAreaWidth / numberOfZones;
			//int[] zoneMonsterCounts = new int[numberOfZones];
			//foreach (Monster monster in monsters)
			//{
			//	if (!monster.isSpawning && !monster.isDead && !monster.isDying)
			//	{
			//		int monsterZone = (int)monster.positionVector.X / zoneWidth;

			//		//check to ensure the monster is within the zones we currently care about
			//		if (monsterZone < numberOfZones)
			//		{
			//			zoneMonsterCounts[monsterZone]++;
			//		}
			//	}
			//}

			////get the zone with the least amount of monsters in it
			//int leastMonsterZone = int.MaxValue;
			//int highestMonsterZone = int.MinValue;
			//for (int i = 0; i < zoneMonsterCounts.Length; i++)
			//{
			//	if (zoneMonsterCounts[i] < leastMonsterZone)
			//	{
			//		leastMonsterZone = i;
			//	}

			//	if (zoneMonsterCounts[i] > highestMonsterZone)
			//	{
			//		highestMonsterZone = i;
			//	}
			//}

			////if the highest monster zone is 0, then so is the lowest, so we don't need new limits
			//if (zoneMonsterCounts[highestMonsterZone] != 0)
			//{
			//	//figure out leftSideX and rightSideX of the chosen zone
			//	leftSideXLimit = (leastMonsterZone * zoneWidth);
			//	rightSideXLimit = (leastMonsterZone * zoneWidth) + zoneWidth;
			//	Console.WriteLine("break here tho");
			//}

			//Console.WriteLine("------------------------");
			//Console.WriteLine("least: " + leastMonsterZone);
			//Console.WriteLine("most: " + highestMonsterZone);
			//Console.WriteLine("leftSideLimit: " + leftSideXLimit);
			//Console.WriteLine("rightSideLimit: " + rightSideXLimit);
			//Console.WriteLine("------------------------");
        //}
    }
}

