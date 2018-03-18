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
        public const float EXPLOSION_MONSTER_SPAWN_DELAY_TIME_LIMIT = 0.2f;

        public Level level;

        public int blockMonsterCount;
        public int sunMonsterCount;
        public int bileMonsterCount;
        public int spikeMonsterCount;
        public int dashMonsterCount;
        public int undergroundMonsterCount;
        public int swoopMonsterCount;
        public int monsterCount;
        public int groundCannonMonsterCount;
        public int flyingCannonMonsterCount;
        public int baseCannonMonsterCount;

        public static List<Monster> monsters;
        public List<Monster> monstersToRemove;
        List<int> availableMonsters;
        Dictionary<int, Timer> monsterSpawnDelayTimers;
        Dictionary<int, bool> canSpawnMonster;

        static Random rand = new Random();

        TimeSpan spawnTimer = TimeSpan.FromSeconds(0);
        bool canSpawn = false;
        public bool monstersDespawned = false;
        Dictionary<int, List<int>> tierMonsterLimitsBackup; //to keep track of tier monster limits during explosions

        public MonsterManager(Level level)
        {
            monsters = new List<Monster>();

            //just trying to avoid creating new lists every other frame or whatever
            monstersToRemove = new List<Monster>();
            availableMonsters = new List<int>(); 

            this.level = level;

            setDefaultMonsterSpawnDelayTimers();

            //start each monster being able to spawn so player isn't waiting at the begining of the game
            canSpawnMonster = new Dictionary<int, bool>();
            canSpawnMonster.Add(BLOCK_MONSTER, true);
            canSpawnMonster.Add(SUN_MONSTER, true);
            canSpawnMonster.Add(GROUND_CANNON_MONSTER, true);
            canSpawnMonster.Add(BILE_MONSTER, true);
            canSpawnMonster.Add(SPIKE_MONSTER, true);
            canSpawnMonster.Add(DASH_MONSTER, true);
            canSpawnMonster.Add(FLYING_CANNON_MONSTER, true);
            canSpawnMonster.Add(UNDERGROUND_MONSTER, true);
            canSpawnMonster.Add(SWOOP_MONSTER, true);
        }

        //void handleMasterSpawnDelay(GameTime gameTime)
        //{
        //    spawnTimer = spawnTimer.Add(gameTime.ElapsedGameTime);
        //    if (spawnTimer.Seconds > level.masterSpawnDelayTime)
        //    {
        //        //will allow monsters to spawn, then next frame the timer will start adding up again
        //        canSpawn = true;
        //        spawnTimer = TimeSpan.FromSeconds(0);
        //    }
        //}

        void handleMonsterAvailability(GameTime gameTime) {
            availableMonsters.Clear();

            //Logger.Instance.AddOrUpdateValue("BlockTimer", monsterSpawnDelayTimers[BLOCK_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("SunTimer", monsterSpawnDelayTimers[SUN_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("GroundTimer", monsterSpawnDelayTimers[GROUND_CANNON_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("BileTimer", monsterSpawnDelayTimers[BILE_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("SpikeTimer", monsterSpawnDelayTimers[SPIKE_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("DashTimer", monsterSpawnDelayTimers[DASH_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("FlyingTimer", monsterSpawnDelayTimers[FLYING_CANNON_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("UndergroundTimer", monsterSpawnDelayTimers[UNDERGROUND_MONSTER].delayTime.ToString());
            //Logger.Instance.AddOrUpdateValue("SwoopTimer", monsterSpawnDelayTimers[SWOOP_MONSTER].delayTime.ToString());

            foreach(KeyValuePair<int, Timer> pair in monsterSpawnDelayTimers) {
                //don't check monsters that have a spawnDelay of 0
                if(pair.Value.delayTimeLimit > 0) {
                    if (pair.Value.IsTimeUp(gameTime.ElapsedGameTime))
                    {
                        canSpawnMonster[pair.Key] = true;
                        //don't reset when time is up. only reset when the monster dies
                    }
                }
            }

            /**
             * NOTE: how the individual monsterSpawnDelayTimers work
             * if theres no monsters on the field, one will spawn because canSpawnMonster is already true
             * if one monster spawns, the canSpawnMonster will be set to false and the timer will reset
             * if monster is still alive, timer will go off and new monster will spawn
             * now no monsters can spawn as long as both are alive
             * if one dies, another will be able to spawn immediately if we can have two or more of that monster on the field anyway
             * if only one of that monster type should be on the field, then we reset his timer on death so that another can't spawn so quickly
             * */
        }

        public void HandleSpawnMonsters(GameTime gameTime)
        {
            //handleMasterSpawnDelay(gameTime);
            handleMonsterAvailability(gameTime);

            if (!monstersDespawned) {
                spawnMonsters();
            }
        }

        void spawnMonsters() {
            
            if ((blockMonsterCount < level.tierMonsterLimits[BLOCK_MONSTER][level.currentTier]) && canSpawnMonster[BLOCK_MONSTER])
            {
                availableMonsters.Add(BLOCK_MONSTER);
            }
            if ((sunMonsterCount < level.tierMonsterLimits[SUN_MONSTER][level.currentTier]) && canSpawnMonster[SUN_MONSTER])
            {
                availableMonsters.Add(SUN_MONSTER);
            }
            if ((groundCannonMonsterCount < level.tierMonsterLimits[GROUND_CANNON_MONSTER][level.currentTier]) && canSpawnMonster[GROUND_CANNON_MONSTER])
            {
                availableMonsters.Add(GROUND_CANNON_MONSTER);
            }
            if ((bileMonsterCount < level.tierMonsterLimits[BILE_MONSTER][level.currentTier]) && canSpawnMonster[BILE_MONSTER])
            {
                availableMonsters.Add(BILE_MONSTER);
            }
            if ((spikeMonsterCount < level.tierMonsterLimits[SPIKE_MONSTER][level.currentTier]) && canSpawnMonster[SPIKE_MONSTER])
            {
                availableMonsters.Add(SPIKE_MONSTER);
            }
            if ((dashMonsterCount < level.tierMonsterLimits[DASH_MONSTER][level.currentTier]) && canSpawnMonster[DASH_MONSTER])
            {
                availableMonsters.Add(DASH_MONSTER);
            }
            if ((flyingCannonMonsterCount < level.tierMonsterLimits[FLYING_CANNON_MONSTER][level.currentTier]) && canSpawnMonster[FLYING_CANNON_MONSTER])
            {
                availableMonsters.Add(FLYING_CANNON_MONSTER);
            }
            if ((undergroundMonsterCount < level.tierMonsterLimits[UNDERGROUND_MONSTER][level.currentTier]) && canSpawnMonster[UNDERGROUND_MONSTER])
            {
                availableMonsters.Add(UNDERGROUND_MONSTER);
            }
            if ((swoopMonsterCount < level.tierMonsterLimits[SWOOP_MONSTER][level.currentTier]) && canSpawnMonster[SWOOP_MONSTER])
            {
                availableMonsters.Add(SWOOP_MONSTER);
            }

            //if(availableMonsters.Count > 0) {
            //int randomMonsterIndex = rand.Next(0, availableMonsters.Count);
            //int monsterToSpawn = availableMonsters[randomMonsterIndex];
            foreach (int monsterToSpawn in availableMonsters)
            {

                switch (monsterToSpawn)
                {
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

                //don't reset monsters that have a 0 spawnDelayTime. they can always spawn (at least in the context of spawnDelayTime)
                //TODO: come here
                if (monsterSpawnDelayTimers[monsterToSpawn].delayTimeLimit > 0)
                {
                    canSpawnMonster[monsterToSpawn] = false;
                    monsterSpawnDelayTimers[monsterToSpawn].Reset();
                }
            }
        }

        public void Update(GameTime gameTime, bool isMonsterExplosion, int explosionMonster) {

            //don't start spawning or updating monsters until player is done spawning
            if(!PlayerManager.Instance.IsPlayerSpawning()) {

                if (!PlayerManager.Instance.IsPlayerDead())
                {
                    HandleSpawnMonsters(gameTime);
                }

                UpdateMonsters(gameTime, isMonsterExplosion, explosionMonster);
            }

            //Logger.Instance.AddOrUpdateValue("Tier", (level.currentTier+1).ToString());
            //Logger.Instance.AddOrUpdateValue("TierLimit", (level.tierScores[level.currentTier].ToString()));
            //Logger.Instance.AddOrUpdateValue("Block Limit: ", level.tierMonsterLimits[BLOCK_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("Sun Limit: ", level.tierMonsterLimits[SUN_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("GCannon Limit: ", level.tierMonsterLimits[GROUND_CANNON_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("FCannon Limit: ", level.tierMonsterLimits[FLYING_CANNON_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("Bile Limit: ", level.tierMonsterLimits[BILE_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("Spike Limit: ", level.tierMonsterLimits[SPIKE_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("Dash Limit: ", level.tierMonsterLimits[DASH_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("UGround Limit: ", level.tierMonsterLimits[UNDERGROUND_MONSTER][level.currentTier].ToString());
            //Logger.Instance.AddOrUpdateValue("Swoop Limit: ", level.tierMonsterLimits[SWOOP_MONSTER][level.currentTier].ToString());
            Logger.Instance.AddOrUpdateValue("Block Spawn Delay: ", monsterSpawnDelayTimers[BLOCK_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("Sun Spawn Delay: ", monsterSpawnDelayTimers[SUN_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("GCannon Spawn Delay: ", monsterSpawnDelayTimers[GROUND_CANNON_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("FCannon Spawn Delay: ", monsterSpawnDelayTimers[FLYING_CANNON_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("Bile Spawn Delay: ", monsterSpawnDelayTimers[BILE_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("Spike Spawn Delay: ", monsterSpawnDelayTimers[SPIKE_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("Dash Spawn Delay: ", monsterSpawnDelayTimers[DASH_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("UGround Spawn Delay: ", monsterSpawnDelayTimers[UNDERGROUND_MONSTER].delayTimeLimit.ToString());
            Logger.Instance.AddOrUpdateValue("Swoop Spawn Delay: ", monsterSpawnDelayTimers[SWOOP_MONSTER].delayTimeLimit.ToString());
        }

        //Updates whether a monster spawn timer should reset on death or not
        public void UpdateMonsterAvailability(Monster monster) {

            int monsterType = -1;
            if (monster is BlockMonster) {
                monsterType = BLOCK_MONSTER;
            }
            else if (monster is SunMonster) {
                monsterType = SUN_MONSTER;
            }
            else if (monster is GroundCannonMonster) {
                monsterType = GROUND_CANNON_MONSTER;
            }
            else if (monster is BileMonster) {
                monsterType = BILE_MONSTER;
            }
            else if (monster is SpikeMonster) {
                monsterType = SPIKE_MONSTER;
            }
            else if (monster is DashMonster) {
                monsterType = DASH_MONSTER;
            }
            else if (monster is FlyingCannonMonster) {
                monsterType = FLYING_CANNON_MONSTER;
            }
            else if (monster is UndergroundMonster) {
                monsterType = UNDERGROUND_MONSTER;
            }
            else if (monster is SwoopMonster) {
                monsterType = SWOOP_MONSTER;
            }

            if (monsterType != -1
               && (monsterSpawnDelayTimers[monsterType].delayTimeLimit > 0) //don't bother checking monsters with no spawn delay
               && (level.tierMonsterLimits[monsterType][level.currentTier] == 1)) {
                //ONLY limit monster from spawning (by resetting the clock here) if only one type of this monster can be on the field at a time
                //so if one just died, we want to wait the full amount for another to spawn
                //if one just died and we can be putting two on the field, then we don't want to reset here because we want that second on the field
                monsterSpawnDelayTimers[monsterType].Reset();
                canSpawnMonster[monsterType] = false;
            }
        }

        public void UpdateMonsterCount(Monster monster) {
            //TODO: all if statements or else if? can I do a switch by any chance?
            if (monster is BlockMonster) {
                blockMonsterCount--;
            } else if (monster is SunMonster) {
                sunMonsterCount--;
            } else if (monster is GroundCannonMonster) {
                groundCannonMonsterCount--;
                baseCannonMonsterCount--;
            } else if (monster is BileMonster) {
                bileMonsterCount--;
            } else if (monster is SpikeMonster) {
                spikeMonsterCount--;
            } else if (monster is DashMonster) {
                dashMonsterCount--;
            } else if (monster is FlyingCannonMonster) {
                flyingCannonMonsterCount--;
                baseCannonMonsterCount--;
            } else if (monster is UndergroundMonster) {
                undergroundMonsterCount--;
            } else if(monster is SwoopMonster) {
                swoopMonsterCount--;
            }

            monsterCount--;
        }

        public void UpdateMonsters(GameTime gameTime, bool isExplosion, int explosionMonster)
        {
            //update each monster and remove them if they're dead
            foreach (Monster monster in monsters)
            {
                //these methods go first so that monster can update in reaction to them
                level.CheckCollisionWithBounds(monster);

                //only check player related collisions if player is alive
                if(!PlayerManager.Instance.IsPlayerDying() && !PlayerManager.Instance.IsPlayerDead()) {
                    level.CheckPlayerCollisionWithMonster(monster);

                    if (monster is BaseCannonMonster)
                    {
                        level.CheckPlayerCollisionProjectile(((BaseCannonMonster)monster).bullet);
                    }
                    if (monster is BileMonster)
                    {
                        foreach (Bile bile in ((BileMonster)monster).activeBileObjects)
                        {
                            level.CheckPlayerCollisionProjectile(bile);
                        }
                    }
                }

                monster.Update(gameTime);

                if (monster.isDead) {
                    //TODO: good place to look at in the event of performance issues
                    monstersToRemove.Add(monster);
                    UpdateMonsterAvailability(monster);
                    UpdateMonsterCount(monster);
                    handleScoreOnMonsterDeath(monster, isExplosion, explosionMonster);
                }
            }

            if (monstersToRemove.Count > 0)
            {
                monsters.RemoveAll(m => monstersToRemove.Contains(m)); //removes all monsters in monstersToRemove from monsters list
                monstersToRemove.Clear();
            }
        }

        public int GetRandomExplosionMonster() {
            List<int> monstersThatCanSpawn = new List<int>();
            if(level.tierMonsterLimits[BLOCK_MONSTER][level.currentTier] > 0) 
            {
                monstersThatCanSpawn.Add(BLOCK_MONSTER);
            }
            if (level.tierMonsterLimits[SUN_MONSTER][level.currentTier] > 0)
            {
                monstersThatCanSpawn.Add(SUN_MONSTER);
            }
            if (level.tierMonsterLimits[BILE_MONSTER][level.currentTier] > 0)
            {
                monstersThatCanSpawn.Add(BILE_MONSTER);
            }
            if (level.tierMonsterLimits[DASH_MONSTER][level.currentTier] > 0)
            {
                monstersThatCanSpawn.Add(DASH_MONSTER);
            }

            int monsterIndex = new Random().Next(0, monstersThatCanSpawn.Count);
            return monstersThatCanSpawn[monsterIndex];
        }

        void handleScoreOnMonsterDeath(Monster monster, bool isExplosion, int explosionMonster) {
            if(isExplosion) {
				if(monster.monsterIndex == explosionMonster) {
                    level.explosionKills++;
				}
            } else {
                level.currentTierKills++;
                level.totalKills++;
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

        public void DespawnMonsters() {
            monstersDespawned = true;

            foreach(Monster monster in monsters) {
                monster.isDying = true;

                if(monster is SpikeMonster) {
                    ((SpikeMonster)monster).delayAction = false;
                    ((SpikeMonster)monster).isAttacking = true;
                    ((SpikeMonster)monster).didDamagePlayer = true; //will force no score to be recorded for the despawned spike monster
                    ((SpikeMonster)monster).isSpawning = false;
                }

                if(monster is BaseCannonMonster) {
                    ((BaseCannonMonster)monster).bullet.hasCollidedWithPlayer = true;
                }
            }
        }

        public void ResetMonsters() {
            monstersToRemove.Clear();
            monsters.Clear();
        }

        public bool monstersEmpty() {
            return (monsters.Count < 1);
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
                                                          (int)(ScreenManager.VIRTUAL_SCREEN_WIDTH - level.rightBoundWidth));

            if (spawnType == Monster.SPAWN_TOP) {
                monster.positionVector.Y = 0 - monster.entityHeight;
            } else {
                monster.positionVector.Y = ScreenManager.VIRTUAL_SCREEN_HEIGHT + monster.entityHeight;
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
                monster.positionVector.X = ScreenManager.VIRTUAL_SCREEN_WIDTH + monster.entityWidth;
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
                rightSideXLimit = (int)(ScreenManager.VIRTUAL_SCREEN_WIDTH / 2) 
                                 - monster.entityWidth;
            } else {
                leftSideXLimit = (int)(ScreenManager.VIRTUAL_SCREEN_WIDTH / 2);
                rightSideXLimit = (int)ScreenManager.VIRTUAL_SCREEN_WIDTH
                                        - level.rightBoundWidth
                                        - monster.entityWidth;
            }

            return getRandomXLocation(monster.entityWidth, leftSideXLimit, rightSideXLimit);
        }

        /**
         * Restores default values for spawn timers for all monsters
         */
        void setDefaultMonsterSpawnDelayTimers() {
            monsterSpawnDelayTimers = new Dictionary<int, Timer>();
            monsterSpawnDelayTimers.Add(BLOCK_MONSTER, new Timer(level.spawnDelayTimes[BLOCK_MONSTER]));
            monsterSpawnDelayTimers.Add(SUN_MONSTER, new Timer(level.spawnDelayTimes[SUN_MONSTER]));
            monsterSpawnDelayTimers.Add(GROUND_CANNON_MONSTER, new Timer(level.spawnDelayTimes[GROUND_CANNON_MONSTER]));
            monsterSpawnDelayTimers.Add(BILE_MONSTER, new Timer(level.spawnDelayTimes[BILE_MONSTER]));
            monsterSpawnDelayTimers.Add(SPIKE_MONSTER, new Timer(level.spawnDelayTimes[SPIKE_MONSTER]));
            monsterSpawnDelayTimers.Add(DASH_MONSTER, new Timer(level.spawnDelayTimes[DASH_MONSTER]));
            monsterSpawnDelayTimers.Add(FLYING_CANNON_MONSTER, new Timer(level.spawnDelayTimes[FLYING_CANNON_MONSTER]));
            monsterSpawnDelayTimers.Add(UNDERGROUND_MONSTER, new Timer(level.spawnDelayTimes[UNDERGROUND_MONSTER]));
            monsterSpawnDelayTimers.Add(SWOOP_MONSTER, new Timer(level.spawnDelayTimes[SWOOP_MONSTER]));
        }

        public void InitializeExplosion(int explosionMonster)
        {
            monsterSpawnDelayTimers[explosionMonster].delayTimeLimit = EXPLOSION_MONSTER_SPAWN_DELAY_TIME_LIMIT;

            backupTierMonsterLimits(); 
            
            //for each monster, set the current tier scores to 0
            for (int i = 0; i < level.tierMonsterLimits.Count; i++) {
                level.tierMonsterLimits[i][level.currentTier] = 0;
            }

            level.tierMonsterLimits[explosionMonster][level.currentTier] = Level.EXPLOSION_KILL_LIMIT;
        }

        public void ResetExplosion() {
            setDefaultMonsterSpawnDelayTimers();
            restoreTierMonsterLimits();
        }

        void backupTierMonsterLimits() {
            tierMonsterLimitsBackup = new Dictionary<int, List<int>>();

            for (int i = 0; i < level.tierMonsterLimits.Values.Count; i++) {
                tierMonsterLimitsBackup[i] = new List<int>(level.tierMonsterLimits[i]);
            }
        }

        void restoreTierMonsterLimits() {
            for (int i = 0; i < level.tierMonsterLimits.Values.Count; i++) {
                level.tierMonsterLimits[i] = new List<int>(tierMonsterLimitsBackup[i]);
            }
        }

        public BlockMonster GenerateBlockMonster() {
            BlockMonster blockMonster = new BlockMonster();
            blockMonster.monsterIndex = BLOCK_MONSTER;
            blockMonster.SetBlockMonsterData(level.blockMonster);
            blockMonster.groundLevel = level.groundLevel;
            blockMonster.InitializeEntity(AssetManager.Instance.blockMonsterTexture.Width / blockMonster.frameCount,
                                          AssetManager.Instance.blockMonsterTexture.Height);
            blockMonster = (BlockMonster)handleSpawnType(blockMonster, Monster.SPAWN_BOTTOM);
            blockMonster.InitializeSpawn();

            return blockMonster;
        }

        public SunMonster GenerateSunMonster() {
            SunMonster sunMonster = new SunMonster();
            sunMonster.monsterIndex = SUN_MONSTER;
            sunMonster.SetSunMonsterData(level.sunMonster);
            sunMonster.groundLevel = level.groundLevel - SunMonster.floatHeight;
            sunMonster.InitializeEntity(AssetManager.Instance.sunMonsterTexture.Width / sunMonster.frameCount,
                                        AssetManager.Instance.sunMonsterTexture.Height);
            sunMonster = (SunMonster)determineSpawnTypeRandom(sunMonster);
            sunMonster.InitializeSpawn();

            return sunMonster;
        }

        public BileMonster GenerateBileMonster() {
            BileMonster bileMonster = new BileMonster();
            bileMonster.monsterIndex = BILE_MONSTER;
            bileMonster.SetBileMonsterData(level.bileMonster);
            bileMonster.groundLevel = level.groundLevel - BileMonster.floatHeight;
            bileMonster.InitializeEntity(AssetManager.Instance.bileMonsterTexture.Width / bileMonster.frameCount,
                                         AssetManager.Instance.bileMonsterTexture.Height);
            bileMonster = (BileMonster)determineSpawnTypeRandom(bileMonster);
            bileMonster.InitializeSpawn();

            return bileMonster;
        }

        public GroundCannonMonster GenerateGroundCannonMonster() {
            GroundCannonMonster groundCannonMonster = new GroundCannonMonster();
            groundCannonMonster.monsterIndex = GROUND_CANNON_MONSTER;
            groundCannonMonster.SetCannonMonsterData(level.groundCannonMonster);
            groundCannonMonster.groundLevel = level.groundLevel - GroundCannonMonster.groundOffset;
            //random side of the level is chosen here. if a cannon monster already exists there, it will be handled here
            groundCannonMonster.ChooseRandomSide(baseCannonMonsterCount, groundCannonMonsterCount, monsters);
            groundCannonMonster.InitializeEntity(groundCannonMonster.positionVector.X,
                                              ScreenManager.VIRTUAL_SCREEN_HEIGHT + AssetManager.Instance.cannonMonsterTexture.Height,
                                              AssetManager.Instance.cannonMonsterTexture.Width / groundCannonMonster.frameCount,
                                              AssetManager.Instance.cannonMonsterTexture.Height);

            groundCannonMonster.spawnType = Monster.SPAWN_BOTTOM; //is default, but want to be explicit here
            groundCannonMonster.InitializeSpawn();

            return groundCannonMonster;
        }

        public FlyingCannonMonster GenerateFlyingCannonMonster() {
            FlyingCannonMonster flyingCannonMonster = new FlyingCannonMonster();
            flyingCannonMonster.monsterIndex = FLYING_CANNON_MONSTER;
            flyingCannonMonster.SetFlyingCannonMonsterData(level.flyingCannonMonster);
            flyingCannonMonster.groundLevel = level.groundLevel - FlyingCannonMonster.floatHeight;
            flyingCannonMonster.ChooseRandomSide(baseCannonMonsterCount, flyingCannonMonsterCount, monsters);
            flyingCannonMonster.InitializeEntity(flyingCannonMonster.positionVector.X,
                                                    0 - AssetManager.Instance.flyingCannonMonsterTexture.Height,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Width / flyingCannonMonster.frameCount,
                                                    AssetManager.Instance.flyingCannonMonsterTexture.Height);

            flyingCannonMonster.spawnType = Monster.SPAWN_TOP;
            flyingCannonMonster.InitializeSpawn();
            return flyingCannonMonster;
        }

        public SpikeMonster GenerateSpikeMonster() {
            SpikeMonster spikeMonster = new SpikeMonster();
            spikeMonster.monsterIndex = SPIKE_MONSTER;
            spikeMonster.SetSpikeMonsterData(level.spikeMonster);
            spikeMonster.groundLevel = level.groundLevel - SpikeMonster.floatHeight;
            spikeMonster.InitializeEntity(AssetManager.Instance.spikeMonsterTexture.Width / spikeMonster.frameCount,
                                          AssetManager.Instance.spikeMonsterTexture.Height);
            spikeMonster = (SpikeMonster)determineSpawnTypeRandom(spikeMonster);
            spikeMonster.InitializeSpawn();

            return spikeMonster;
        }

        public DashMonster GenerateDashMonster() {
            DashMonster dashMonster = new DashMonster();
            dashMonster.monsterIndex = DASH_MONSTER;
            dashMonster.SetDashMonsterData(level.dashMonster);
            dashMonster.groundLevel = level.groundLevel + DashMonster.groundOffset;
            dashMonster.InitializeEntity(AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount,
                                         AssetManager.Instance.dashMonsterTexture.Height);
            dashMonster = (DashMonster)handleSpawnType(dashMonster, Monster.SPAWN_BOTTOM);
            dashMonster.InitializeSpawn();

            return dashMonster;
        }

        public UndergroundMonster GenerateUndergroundMonster() {
            UndergroundMonster undergroundMonster = new UndergroundMonster();
            undergroundMonster.monsterIndex = UNDERGROUND_MONSTER;
            undergroundMonster.SetUndergroundMonsterData(level.undergroundMonster);
            undergroundMonster.groundLevel = level.groundLevel;
            undergroundMonster.InitializeEntity(PlayerManager.Instance.GetPlayerPosition().X,
                                                   ScreenManager.VIRTUAL_SCREEN_HEIGHT + AssetManager.Instance.undergroundMonsterTexture.Height,
                                                   AssetManager.Instance.undergroundMonsterTexture.Width,
                                                   AssetManager.Instance.undergroundMonsterTexture.Height);

            //even though theres no true "spawn", just need to get him ready
            undergroundMonster.InitializeSpawn();

            return undergroundMonster;
        }

        public SwoopMonster GenerateSwoopMonster() {
            SwoopMonster swoopMonster = new SwoopMonster();
            swoopMonster.monsterIndex = SWOOP_MONSTER;
            swoopMonster.SetSwoopMonsterData(level.swoopMonster);
            swoopMonster.groundLevel = level.groundLevel - SwoopMonster.floatHeight;
            swoopMonster.InitializeEntity(AssetManager.Instance.swoopMonsterTexture.Width / swoopMonster.frameCount,
                                          AssetManager.Instance.swoopMonsterTexture.Height);
            swoopMonster = (SwoopMonster)determineSpawnTypeRandom(swoopMonster);
            swoopMonster.InitializeSpawn();

            return swoopMonster;
        }

        void spawnBlockMonster()
        {
            monsters.Add(GenerateBlockMonster());
            blockMonsterCount++;
        }

        void spawnSunMonster()
        {
            monsters.Add(GenerateSunMonster());
            sunMonsterCount++;
        }

        void spawnBileMonster()
        {
            monsters.Add(GenerateBileMonster());
            bileMonsterCount++;
        }

        void spawnGroundCannonMonster()
        {
            monsters.Add(GenerateGroundCannonMonster());
            groundCannonMonsterCount++;
            baseCannonMonsterCount++;
        }

        void spawnFlyingCannonMonster()
        {
            monsters.Add(GenerateFlyingCannonMonster());
            flyingCannonMonsterCount++;
            baseCannonMonsterCount++;
        }

        void spawnSpikeMonster() 
        {
            monsters.Add(GenerateSpikeMonster());
            spikeMonsterCount++;
        }

        void spawnDashMonster()
        {
            monsters.Add(GenerateDashMonster());
            dashMonsterCount++;
        }

        void spawnUndergroundMonster() {
            monsters.Add(GenerateUndergroundMonster());
            undergroundMonsterCount++;
        }

        void spawnSwoopMonster() {
            monsters.Add(GenerateSwoopMonster());
            swoopMonsterCount++;
        }

        int getMonsterTypeFromString(string explosionMonster)
        {
            switch (explosionMonster)
            {
                case "BlockMonster":
                    return BLOCK_MONSTER;
                case "SunMonster":
                    return SUN_MONSTER;
                case "BileMonster":
                    return BILE_MONSTER;
                case "GroundCannonMonster":
                    return GROUND_CANNON_MONSTER;
                case "FlyingCannonMonster":
                    return FLYING_CANNON_MONSTER;
                case "SpikeMonster":
                    return SPIKE_MONSTER;
                case "DashMonster":
                    return DASH_MONSTER;
                case "UndergroundMonster":
                    return UNDERGROUND_MONSTER;
                case "SwoopMonster":
                    return SWOOP_MONSTER;
                default:
                    Console.WriteLine("INCORRECT MONSTER PASSED FOR EXPLOSION");
                    Console.WriteLine("INCORRECT MONSTER PASSED FOR EXPLOSION");
                    Console.WriteLine("INCORRECT MONSTER PASSED FOR EXPLOSION");
                    return -1;
            }
        }
    }
}

