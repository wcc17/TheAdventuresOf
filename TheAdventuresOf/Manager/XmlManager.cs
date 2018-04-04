using System;
using System.Xml;
using System.IO;
using Microsoft.Xna.Framework;
using System.Xml.Linq;
using System.Linq;
using System.Collections.Generic;

namespace TheAdventuresOf
{
	public static class XmlManager
	{
		public const string androidFilePath = "Assets/Content/";
		public const string iosFilePath = "Content/";

		public static string filePath;
		public static XDocument gameDocument;
		public static XDocument characterDocument;
		public static XDocument projectileDocument;
        public static XDocument specialLevelDocument;
        public static XDocument playerDocument;

		public static void GetXMLInformation()
		{
#if __ANDROID__
				filePath = androidFilePath;
			//#endif
			//#if __IOS__
#else
            filePath = iosFilePath;
			#endif

			Stream gameDocumentStream = TitleContainer.OpenStream(filePath + "XML/GameInformation.xml");
			Stream characterDocumentStream = TitleContainer.OpenStream(filePath + "XML/CharacterInformation.xml");
			Stream projectileDocumentStream = TitleContainer.OpenStream(filePath + "XML/ProjectileInformation.xml");
			Stream specialLevelDocumentStream = TitleContainer.OpenStream(filePath + "XML/SpecialLevelInformation.xml");
            Stream playerDocumentStream = TitleContainer.OpenStream(filePath + "XML/PlayerInformation.xml");

			gameDocument = XDocument.Load(gameDocumentStream);
			characterDocument = XDocument.Load(characterDocumentStream);
			projectileDocument = XDocument.Load(projectileDocumentStream);
			specialLevelDocument = XDocument.Load(specialLevelDocumentStream);
            playerDocument = XDocument.Load(playerDocumentStream);
		}

		public static void LoadGameInformation()
		{
			XElement gameElement = gameDocument.Element("Game");
            XElement gameControllerElement = gameElement.Element("GameController");
            
			var controllerX = (float)gameControllerElement.Element("ControllerX");
			var controllerY = (float)gameControllerElement.Element("ControllerY");
			var leftButtonX = (float)gameControllerElement.Element("LeftButtonX");
			var leftButtonY = (float)gameControllerElement.Element("LeftButtonY");
			var rightButtonX = (float)gameControllerElement.Element("RightButtonX");
			var rightButtonY = (float)gameControllerElement.Element("RightButtonY");
			var jumpButtonX = (float)gameControllerElement.Element("JumpButtonX");
			var jumpButtonY = (float)gameControllerElement.Element("JumpButtonY");
            var pauseButtonX = (float)gameControllerElement.Element("PauseButtonX");
            var pauseButtonY = (float)gameControllerElement.Element("PauseButtonY");
			GameControllerMobile.controllerPositionVector = new Vector2(controllerX, controllerY);
			GameControllerMobile.leftButtonPositionVector = new Vector2(leftButtonX, leftButtonY);
			GameControllerMobile.rightButtonPositionVector = new Vector2(rightButtonX, rightButtonY);
			GameControllerMobile.jumpButtonPositionVector = new Vector2(jumpButtonX, jumpButtonY);
            GameControllerMobile.pauseButtonPositionVector = new Vector2(pauseButtonX, pauseButtonY);

            loadScoringManagerInformation(gameElement);
            loadCoinManagerInformation(gameElement);
            loadProgressBarManagerInformation(gameElement);
            loadHeartManagerInformation(gameElement);
		}

        static void loadScoringManagerInformation(XElement gameElement)
        {
            XElement scoringElement = gameElement.Element("Scoring");

            ScoringManager.blockMonsterScore = (int)scoringElement.Element("BlockMonster");
            ScoringManager.sunMonsterScore = (int)scoringElement.Element("SunMonster");
            ScoringManager.bileMonsterScore = (int)scoringElement.Element("BileMonster");
            ScoringManager.dashMonsterScore = (int)scoringElement.Element("DashMonster");
            ScoringManager.groundCannonMonsterScore = (int)scoringElement.Element("GroundCannonMonster");
            ScoringManager.flyingCannonMonsterScore = (int)scoringElement.Element("FlyingCannonMonster");
            ScoringManager.spikeMonsterScore = (int)scoringElement.Element("SpikeMonster");
            ScoringManager.undergroundMonsterScore = (int)scoringElement.Element("UndergroundMonster");
            ScoringManager.swoopMonsterScore = (int)scoringElement.Element("SwoopMonster");

            Text.textFloatSpeed = (float)scoringElement.Element("TextFloatSpeed");
            Text.textDisappearSpeed = (float)scoringElement.Element("TextDisappearSpeed");
            Text.textPositionOffset = (float)scoringElement.Element("TextPositionOffset");
        }

        static void loadCoinManagerInformation(XElement gameElement)
        {
            XElement coinManagerElement = gameElement.Element("CoinManager");
            XElement coinElement = gameElement.Element("Coin");

            CoinManager.coinYOffset = (float)coinManagerElement.Element("CoinYOffset");
            CoinManager.coinXSpacing = (int)coinManagerElement.Element("CoinXSpacing");
            CoinManager.randomCoinLimitBronze = (int)coinManagerElement.Element("RandomCoinLimitBronze");
            CoinManager.randomCoinLimitSilver = (int)coinManagerElement.Element("RandomCoinLimitSilver");
            CoinManager.randomCoinLimitGold = (int)coinManagerElement.Element("RandomCoinLimitGold");
            CoinManager.coinDropSpeed = (float)coinElement.Element("CoinDropSpeed");
            CoinManager.coinFloatSpeed = (float)coinElement.Element("CoinFloatSpeed");
            CoinManager.coinFloatLimit = (float)coinElement.Element("CoinFloatLimit");
            CoinManager.coinFadeSpeed = (float)coinElement.Element("CoinFadeSpeed");
            CoinManager.coinDisappearTimeLimit = (float)coinElement.Element("CoinDisappearTimeLimit");
            CoinManager.coinFlickerSpeed = (float)coinElement.Element("CoinFlickerSpeed");
            CoinManager.coinFlickerLimit = (float)coinElement.Element("CoinFlickerLimit");
            CoinManager.coinFlickerIncreaseAmount = (float)coinElement.Element("CoinFlickerIncreaseAmount");
        }

        static void loadHeartManagerInformation(XElement gameElement)
        {
            XElement heartManagerElement = gameElement.Element("HeartManager");
            XElement heartElement = gameElement.Element("Heart");

            HeartManager.heartYOffset = (float)heartManagerElement.Element("HeartYOffset");
            HeartManager.heartXSpacing = (int)heartManagerElement.Element("HeartXSpacing");
            HeartManager.heartCountSymbolXOffset = (float)heartManagerElement.Element("HeartCountSymbolXOffset");
            HeartManager.heartCountSymbolY = (float)heartManagerElement.Element("HeartCountSymbolY");
            HeartManager.heartCountY = (float)heartManagerElement.Element("HeartCountY");
            HeartManager.heartHealthValue = (float)heartManagerElement.Element("HeartHealthValue");
            HeartManager.smallHeartHealthValue = (float)heartManagerElement.Element("SmallHeartHealthValue");
            HeartManager.heartChance = (float)heartManagerElement.Element("HeartChance");
            HeartManager.smallHeartChance = (float)heartManagerElement.Element("SmallHeartChance");
            HeartManager.smallHeartLimit = (float)heartManagerElement.Element("SmallHeartLimit");
            HeartManager.heartLimit = (float)heartManagerElement.Element("HeartLimit");

            HeartManager.heartDropSpeed = (float)heartElement.Element("HeartDropSpeed");
            HeartManager.heartFloatSpeed = (float)heartElement.Element("HeartFloatSpeed");
            HeartManager.heartFloatLimit = (float)heartElement.Element("HeartFloatLimit");
            HeartManager.heartFadeSpeed = (float)heartElement.Element("HeartFadeSpeed");
            HeartManager.heartDisappearTimeLimit = (float)heartElement.Element("HeartDisappearTimeLimit");
            HeartManager.heartFlickerSpeed = (float)heartElement.Element("HeartFlickerSpeed");
            HeartManager.heartFlickerLimit = (float)heartElement.Element("HeartFlickerLimit");
            HeartManager.heartFlickerIncreaseAmount = (float)heartElement.Element("HeartFlickerIncreaseAmount");
        }

        static void loadProgressBarManagerInformation(XElement gameElement)
        {
            XElement progressBarElement = gameElement.Element("ProgressBar");
            XElement healthElement = progressBarElement.Element("Health");
            XElement shieldElement = progressBarElement.Element("Shield");

            if(!TheAdventuresOf.lowHealth) {
				HealthShieldManager.Instance.InitializeHealthManager(
					(int)healthElement.Element("MaxValue"),
					(string)healthElement.Element("ValueText"));
            } else {
                HealthShieldManager.Instance.InitializeHealthManager(
                    50,
                    (string)healthElement.Element("ValueText"));
            }

            HealthShieldManager.Instance.InitializeShieldManager(
                (int)shieldElement.Element("MaxValue"),
                (string)shieldElement.Element("ValueText"));
        }

        public static GameManager LoadGameManagerInformation(GameManager gameManager) {
            XElement gameElement = gameDocument.Element("Game");
            XElement gameManagerElement = gameElement.Element("GameManager");
            gameManager.splashTimeLimit = (float)gameManagerElement.Element("SplashTimeLimit");
            return gameManager;
        }

        public static void LoadMainMenuInformation() {
            XElement specialLevelElement = specialLevelDocument.Element("Level");
            XElement mainMenuElement = specialLevelElement.Element("MainMenu");

            MainMenuController.playButtonX = (float)mainMenuElement.Element("PlayButtonX");
            MainMenuController.playButtonY = (float)mainMenuElement.Element("PlayButtonY");
            MainMenuController.chooseLevelButtonX = (float)mainMenuElement.Element("ChooseLevelButtonX");
            MainMenuController.chooseLevelButtonY = (float)mainMenuElement.Element("ChooseLevelButtonY");
        }

        public static void LoadChooseLevelMenuInformation() {
            XElement specialLevelElement = specialLevelDocument.Element("Level");
            XElement chooseLevelMenuElement = specialLevelElement.Element("ChooseLevelMenu");

            ChooseLevelMenuController.buttonOffset = (float)chooseLevelMenuElement.Element("ButtonOffset");
        }

        public static void LoadScoreStatOverlayInformation() {
            XElement specialLevelElement = specialLevelDocument.Element("Level");
            XElement overlayElement = specialLevelElement.Element("Overlay");
            XElement scoreStatOverlayElement = overlayElement.Element("ScoreStat");

            ScoreStatOverlay.totalScoreString = (string)scoreStatOverlayElement.Element("TotalScoreString");
            ScoreStatOverlay.totalKillString = (string)scoreStatOverlayElement.Element("TotalKillString");
            ScoreStatOverlay.jumpToContinueString = (string)scoreStatOverlayElement.Element("JumpToContinueString");
            ScoreStatOverlay.jumpToGoToMenuString = (string)scoreStatOverlayElement.Element("JumpToGoToMenuString");
            ScoreStatOverlay.countPositionXMultiplier = (float)scoreStatOverlayElement.Element("CountPositionXMultiplier"); 
            ScoreStatOverlay.countPositionYMultiplier = (float)scoreStatOverlayElement.Element("CountPositionYMultiplier"); 
            ScoreStatOverlay.totalScorePositionXMultiplier = (float)scoreStatOverlayElement.Element("TotalScorePositionXMultiplier"); 
            ScoreStatOverlay.totalScorePositionYMultiplier = (float)scoreStatOverlayElement.Element("TotalScorePositionYMultiplier"); 
            ScoreStatOverlay.continueDelayTimeLimit = (float)scoreStatOverlayElement.Element("ContinueDelayTimeLimit"); 
            ScoreStatOverlay.fontScale = (float)scoreStatOverlayElement.Element("FontScale"); 
            ScoreStatOverlay.monsterTextureScale = (float)scoreStatOverlayElement.Element("MonsterTextureScale"); 
            ScoreStatOverlay.totalKilledPositionYMultiplier = (float)scoreStatOverlayElement.Element("TotalKilledPositionYMultiplier"); 
            ScoreStatOverlay.continueTextPositionYMultiplier = (float)scoreStatOverlayElement.Element("ContinueTextPositionYMultiplier"); 
            ScoreStatOverlay.monsterKillCountXMultiplier = (float)scoreStatOverlayElement.Element("MonsterKillCountXMultiplier"); 
            ScoreStatOverlay.monsterKillCountYMultiplier = (float)scoreStatOverlayElement.Element("MonsterKillCountYMultiplier"); 
            ScoreStatOverlay.monsterScoreXMultiplier = (float)scoreStatOverlayElement.Element("MonsterScoreXMultiplier"); 
            ScoreStatOverlay.monsterScoreYMultiplier = (float)scoreStatOverlayElement.Element("MonsterScoreYMultiplier"); 
        }

        public static void LoadPreLevelInformation(PreLevel preLevel, int currentLevel)
        {
            XElement specialLevelElement = specialLevelDocument.Element("Level");
            XElement preLevelElement = specialLevelElement.Element("PreLevel");

#if __IOS__ || __ANDROID__
            preLevel.groundLevel = (float)preLevelElement.Element("GroundLevel");
#else
            preLevel.groundLevel = (float)preLevelElement.Element("WindowsGroundLevel");
#endif
            preLevel.playerStartX = (float)preLevelElement.Element("PlayerStartX");
            preLevel.leftBoundWidth = (int)preLevelElement.Element("LeftBoundWidth");
            preLevel.rightBoundWidth = (int)preLevelElement.Element("RightBoundWidth");
            PreLevel.preLevelCharX = (float)preLevelElement.Element("PreLevelCharX");

            List<XElement> preLevelTextElements = new List<XElement>(preLevelElement.Elements("PreLevelCharText"));
            foreach (XElement preLevelTextElement in preLevelTextElements) {
                PreLevel.preLevelCharText = (string)preLevelTextElement.Element("Level" + currentLevel);
            }
        }

        public static void LoadStoreLevelInformation(StoreLevel storeLevel) {
            XElement specialLevelElement = specialLevelDocument.Element("Level");
            XElement storeLevelElement = specialLevelElement.Element("StoreLevel");

#if __IOS__ || __ANDROID__
            storeLevel.groundLevel = (float)storeLevelElement.Element("GroundLevel");
#else
            storeLevel.groundLevel = (float)storeLevelElement.Element("WindowsGroundLevel");
#endif
            storeLevel.playerStartX = (float)storeLevelElement.Element("PlayerStartX");
            storeLevel.leftBoundWidth = (int)storeLevelElement.Element("LeftBoundWidth");
            storeLevel.rightBoundWidth = (int)storeLevelElement.Element("RightBoundWidth");
            StoreLevel.storeLevelCharText = (string)storeLevelElement.Element("StoreLevelCharText");

            loadPropItems(storeLevelElement);
        }

        private static void loadPropItems(XElement storeLevelElement)
        {
            XElement itemsElement = storeLevelElement.Element("Items");
            List<XElement> itemElements = new List<XElement>(itemsElement.Elements("Item"));
            SortedDictionary<int, PropItem> storeLevelPropItems = new SortedDictionary<int, PropItem>();
            int index = 0;
            foreach (XElement itemElement in itemElements)
            {
                PropItem propItem = new PropItem();
                propItem.name = (string)itemElement.Element("Name");

                //cost may be null. catch the exception the xml loading will throw and continue with the null value
                int? cost;
                try
                {
                    cost = (int)itemElement.Element("Cost");

                }
                catch(ArgumentNullException e)
                {
                    cost = null;
                }

                if (cost == null)
                {
                    XElement tieredCostsElement = itemElement.Element("TieredCosts");
                    List<XElement> tieredCostElements = new List<XElement>(tieredCostsElement.Elements("TieredCost"));
                    SortedDictionary<int, int> itemCosts = new SortedDictionary<int, int>();
                    foreach (XElement tieredCostElement in tieredCostElements)
                    {
                        int costIndex = (int)tieredCostElement.Element("Index");
                        int tieredCost = (int)tieredCostElement.Element("Cost");
                        itemCosts.Add(costIndex, tieredCost);
                    }

                    propItem.itemCosts = itemCosts;
                }
                else
                {
                    propItem.cost = cost;
                }

                storeLevelPropItems.Add(index++, propItem);
            }

            StoreLevel.storeLevelPropItems = storeLevelPropItems;
        }

		public static void LoadLevelInformation(Level level, int levelNumber, bool isEndless) {
            string levelFilePath = filePath + "XML/Level/Level" + levelNumber + "Information.xml";
            if(isEndless) {
                levelFilePath = filePath + "XML/Level/EndlessLevelInformation.xml";
            }

            Stream levelXDocumentStream = TitleContainer.OpenStream(levelFilePath);

            XDocument levelXDocument = XDocument.Load(levelXDocumentStream);
			XElement levelXElement = levelXDocument.Element("Level");

#if __IOS__ || __ANDROID__
            level.groundLevel = (float)levelXElement.Element("GroundLevel");
#else
            level.groundLevel = (float)levelXElement.Element("WindowsGroundLevel");
#endif
            level.playerStartX = (float)levelXElement.Element("PlayerStartX");
			level.leftBoundWidth = (int)levelXElement.Element("LeftBoundWidth");
			level.rightBoundWidth = (int)levelXElement.Element("RightBoundWidth");

            if(TheAdventuresOf.quickVictory) {
                for (int i = 0; i < 10; i++) {
					level.tierKills.Add(i, 1);
                }
            } else {
                int i = 0;
                XElement tierKillsElement = levelXElement.Element("TierKills");
                foreach (XElement element in tierKillsElement.Elements()) {
                    level.tierKills.Add(i++, (int)element);
                }
            }

            //get max tiers depending on how many tiers are in the <TierScores> element in LevelInformation.xml
            level.maxTier = level.tierKills.Count;
            level.endlessTier = level.maxTier - 1; //where endless tiers will start counting up

            //MonsterCountTiers
            XElement monsterCountTiersElement = levelXElement.Element("MonsterCountTiers");
            List<XElement> tierElements = new List<XElement>(monsterCountTiersElement.Elements());
            level.tierMonsterLimits = new Dictionary<int, List<int>>();
            level.tierMonsterLimits.Add(MonsterManager.BLOCK_MONSTER, LoadTierMonsterLimits("BlockMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.SUN_MONSTER, LoadTierMonsterLimits("SunMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.GROUND_CANNON_MONSTER, LoadTierMonsterLimits("GroundCannonMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.FLYING_CANNON_MONSTER, LoadTierMonsterLimits("FlyingCannonMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.BILE_MONSTER, LoadTierMonsterLimits("BileMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.SPIKE_MONSTER, LoadTierMonsterLimits("SpikeMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.DASH_MONSTER, LoadTierMonsterLimits("DashMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.UNDERGROUND_MONSTER, LoadTierMonsterLimits("UndergroundMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.SWOOP_MONSTER, LoadTierMonsterLimits("SwoopMonsterLimit", tierElements));
            level.masterSpawnDelayTime = (float)levelXElement.Element("MasterSpawnDelayTime");

            //load individual spawn delay times for each monster
            XElement spawnDelayTimeElement = levelXElement.Element("SpawnDelayTime");
            level.spawnDelayTimes = new Dictionary<int, float>();
            level.spawnDelayTimes.Add(MonsterManager.BLOCK_MONSTER, (float)spawnDelayTimeElement.Element("BlockMonster"));
            level.spawnDelayTimes.Add(MonsterManager.SUN_MONSTER, (float)spawnDelayTimeElement.Element("SunMonster"));
            level.spawnDelayTimes.Add(MonsterManager.GROUND_CANNON_MONSTER, (float)spawnDelayTimeElement.Element("GroundCannonMonster"));
            level.spawnDelayTimes.Add(MonsterManager.FLYING_CANNON_MONSTER, (float)spawnDelayTimeElement.Element("FlyingCannonMonster"));
            level.spawnDelayTimes.Add(MonsterManager.BILE_MONSTER, (float)spawnDelayTimeElement.Element("BileMonster"));
            level.spawnDelayTimes.Add(MonsterManager.SPIKE_MONSTER, (float)spawnDelayTimeElement.Element("SpikeMonster"));
            level.spawnDelayTimes.Add(MonsterManager.DASH_MONSTER, (float)spawnDelayTimeElement.Element("DashMonster"));
            level.spawnDelayTimes.Add(MonsterManager.UNDERGROUND_MONSTER, (float)spawnDelayTimeElement.Element("UndergroundMonster"));
            level.spawnDelayTimes.Add(MonsterManager.SWOOP_MONSTER, (float)spawnDelayTimeElement.Element("SwoopMonster"));

            LoadMonsterInformation(level, levelNumber);
		}

        //load a monster limit for each tier, for a given monsterLimit string
        public static List<int> LoadTierMonsterLimits(String monsterLimitElementString, List<XElement> tierElements) {
            List<int> monsterLimits = new List<int>();

            foreach(XElement tierElement in tierElements) {
                monsterLimits.Add((int)tierElement.Element(monsterLimitElementString));
            }

            return monsterLimits;
        }

        public static void LoadMonsterInformation(Level level, int currentLevelNumber) {
			level.blockMonster = LoadBlockMonsterInformation();
			level.sunMonster = LoadSunMonsterInformation();
            level.bileMonster = LoadBileMonsterInformation(level.groundLevel, currentLevelNumber);
            level.spikeMonster = LoadSpikeMonsterInformation();
            level.dashMonster = LoadDashMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
            level.undergroundMonster = LoadUndergroundMonsterInformation();
            level.swoopMonster = LoadSwoopMonsterInformation();

            LoadBaseCannonMonsterInformation();
            level.groundCannonMonster = LoadCannonMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
            level.flyingCannonMonster = LoadFlyingCannonMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
		}

        //TODO: i could dispose player texture right before loading the new one?
		public static Player LoadPlayerInformation()
		{
            Player player = new Player();

			XElement playerElement = playerDocument.Element("Player");
			XElement playerInformationElement = playerElement.Element("PlayerInformation");

			player.entityTag = (string)playerInformationElement.Element("EntityTag");
			player.speed = (float)playerInformationElement.Element("Speed");
			player.animationSpeed = (float)playerInformationElement.Element("AnimationSpeed");
			player.frameCount = (int)playerInformationElement.Element("FrameCount");
			player.invincibilityTimeLimit = (double)playerInformationElement.Element("InvincibilityTime");
			player.knockBackDistanceLimit = (float)playerInformationElement.Element("KnockBackDistanceLimit");
			player.knockBackSpeed = (int)playerInformationElement.Element("KnockBackSpeed");
			player.rotationSpeed = (int)playerInformationElement.Element("RotationSpeed");
            player.initialJumpVelocity = (float)playerInformationElement.Element("InitialJumpVelocity");
            player.jumpGravity = (float)playerInformationElement.Element("JumpGravity");
            player.collisionOffset = (int)playerInformationElement.Element("CollisionOffset");

#if __IOS__ || __ANDROID__
            player.spawnStartY = (float)playerInformationElement.Element("SpawnStartYMobile");
#else
            player.spawnStartY = (float)playerInformationElement.Element("SpawnStartYWindows");
#endif
            player.spawnStartX = (float)playerInformationElement.Element("SpawnStartX");
            player.spawnXLimit = (float)playerInformationElement.Element("SpawnXLimit");
            player.spawnRotationSpeed = (float)playerInformationElement.Element("SpawnRotationSpeed");
            player.spawnFlipLimitDegrees = (float)playerInformationElement.Element("SpawnFlipLimitDegrees");

            return player;
		}

        public static List<Accessory> LoadPlayerAccessories(int levelNumber) {
            XElement playerElement = playerDocument.Element("Player");
            XElement playerLevelElement = playerElement.Element("PlayerLevelInformation");

            XElement levelElement = playerLevelElement.Element("Level" + levelNumber);

            List<Accessory> accessories = new List<Accessory>();
            foreach(XElement accessoryElement in levelElement.Elements("Accessory")) {
                String accessoryName = (string)accessoryElement.Element("Name");

                Accessory accessory = new Accessory(accessoryName);
                accessory.baseXOffset = (int)accessoryElement.Element("BaseXOffset");
                accessory.xOffset = (float)accessoryElement.Element("XOffset");
                accessory.yOffset = (float)accessoryElement.Element("YOffset");
                accessory.doesDamage = (bool)accessoryElement.Element("DoesDamage");
                accessory.takesDamage = (bool)accessoryElement.Element("TakesDamage");
                accessory.drawBeforePlayer = (bool)accessoryElement.Element("DrawBeforePlayer");

                string originPosition = (string)accessoryElement.Element("OriginPosition");
                accessory.originPosition = (Accessory.OriginPosition) Enum.Parse(typeof(Accessory.OriginPosition), originPosition);

                accessories.Add(accessory);
            }

            return accessories;
        }

		public static BlockMonster LoadBlockMonsterInformation()
		{
			BlockMonster blockMonster = new BlockMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement blockMonsterElement = monstersElement.Element("BlockMonster");

			blockMonster.entityTag = (string)blockMonsterElement.Element("EntityTag");
			blockMonster.speed = (float)blockMonsterElement.Element("Speed");
            blockMonster.spawnSpeed = (float)blockMonsterElement.Element("SpawnSpeed");
            blockMonster.deathSpeed = (float)blockMonsterElement.Element("DeathSpeed");
            blockMonster.animationSpeed = (float)blockMonsterElement.Element("AnimationSpeed");
            blockMonster.frameCount = (int)blockMonsterElement.Element("FrameCount");
            blockMonster.moveDistanceLimit = (int)blockMonsterElement.Element("MoveDistanceLimit");
            blockMonster.actionDelayTime = (float)blockMonsterElement.Element("ActionDelayTime");
            blockMonster.rotationSpeed = (float)blockMonsterElement.Element("RotationSpeed");
            blockMonster.damage = (int)blockMonsterElement.Element("Damage");
            blockMonster.fadeSpeed = (float)blockMonsterElement.Element("FadeSpeed");

			return blockMonster;
		}

		public static SunMonster LoadSunMonsterInformation()
		{
			SunMonster sunMonster = new SunMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement sunMonsterElement = monstersElement.Element("SunMonster");

			sunMonster.entityTag = (string)sunMonsterElement.Element("EntityTag");
			sunMonster.speed = (float)sunMonsterElement.Element("Speed");
            sunMonster.spawnSpeed = (float)sunMonsterElement.Element("SpawnSpeed");
            sunMonster.deathSpeed = (float)sunMonsterElement.Element("DeathSpeed");
            sunMonster.animationSpeed = (float)sunMonsterElement.Element("AnimationSpeed");
            sunMonster.frameCount = (int)sunMonsterElement.Element("FrameCount");
            sunMonster.moveDistanceLimit = (int)sunMonsterElement.Element("MoveDistanceLimit");
            sunMonster.actionDelayTime = (float)sunMonsterElement.Element("ActionDelayTime");
            sunMonster.rotationSpeed = (float)sunMonsterElement.Element("RotationSpeed");
            sunMonster.damage = (int)sunMonsterElement.Element("Damage");
            sunMonster.fadeSpeed = (float)sunMonsterElement.Element("FadeSpeed");

			SunMonster.floatHeight = (float)sunMonsterElement.Element("FloatHeight");

			return sunMonster;
		}

		public static BileMonster LoadBileMonsterInformation(float groundLevel, int currentLevelNumber)
		{
			BileMonster bileMonster = new BileMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement bileMonsterElement = monstersElement.Element("BileMonster");

			bileMonster.entityTag = (string)bileMonsterElement.Element("EntityTag");
			bileMonster.speed = (float)bileMonsterElement.Element("Speed");
            bileMonster.spawnSpeed = (float)bileMonsterElement.Element("SpawnSpeed");
            bileMonster.deathSpeed = (float)bileMonsterElement.Element("DeathSpeed");
            bileMonster.animationSpeed = (float)bileMonsterElement.Element("AnimationSpeed");
            bileMonster.frameCount = (int)bileMonsterElement.Element("FrameCount");
            bileMonster.moveDistanceLimit = (int)bileMonsterElement.Element("MoveDistanceLimit");
            bileMonster.actionDelayTime = (float)bileMonsterElement.Element("ActionDelayTime");
            bileMonster.rotationSpeed = (float)bileMonsterElement.Element("RotationSpeed");
            bileMonster.damage = (int)bileMonsterElement.Element("Damage");
            bileMonster.fadeSpeed = (float)bileMonsterElement.Element("FadeSpeed");

			BileMonster.bileObjectLimit = (float)bileMonsterElement.Element("BileObjectLimit");
            BileMonster.floatHeight = (float)bileMonsterElement.Element("FloatHeight");
            BileMonster.buildupDelayTimeLimit = (float)bileMonsterElement.Element("BuildUpDelayTimeLimit");
            BileMonster.buildUpTimeLimit = (float)bileMonsterElement.Element("BuildUpTimeLimit");
            BileMonster.throwTimeLimit = (float)bileMonsterElement.Element("ThrowTimeLimit");

			//load projectile info here
			XElement projectilesElement = projectileDocument.Element("Projectiles");
			XElement bileElement = projectilesElement.Element("Bile");
			BileMonster.bileEntityTag = (string)bileElement.Element("EntityTag");
			BileMonster.bileSpeed = (float)bileElement.Element("Speed");
            BileMonster.bileFadeSpeed = (float)bileElement.Element("FadeSpeed");
            BileMonster.bileDamage = (int)bileElement.Element("Damage");
            Bile.timeToLive = (float)bileElement.Element("TimeToLive");
            Bile.distance = (float)bileElement.Element("Distance");

            //load level specific ground offset for bile projectile
            XElement groundOffsetElement = bileElement.Element("GroundOffset");
            Bile.groundOffset = (float)groundOffsetElement.Element("Level" + currentLevelNumber);

            BileMonster.bileGroundLevel = groundLevel;

			return bileMonster;
		}

        //ONLY static variables set here that apply to both groundCannonMonster and FlyingCannonMonster
        public static void LoadBaseCannonMonsterInformation() {
            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement baseCannonMonsterElement = monstersElement.Element("BaseCannonMonster");

            BaseCannonMonster.recoilDistance = (float)baseCannonMonsterElement.Element("RecoilDistance");
            BaseCannonMonster.recoilSpeed = (float)baseCannonMonsterElement.Element("RecoilSpeed");
            BaseCannonMonster.shootCountLimit = (int)baseCannonMonsterElement.Element("ShootCountLimit");

            //load projectile info here
            XElement projectilesElement = projectileDocument.Element("Projectiles");
            XElement bulletElement = projectilesElement.Element("Bullet");
            BaseCannonMonster.bulletEntityTag = (string)bulletElement.Element("EntityTag");
            BaseCannonMonster.bulletSpeed = (float)bulletElement.Element("Speed");
            BaseCannonMonster.initialBulletRotationSpeed = (float)bulletElement.Element("RotationSpeed");
            BaseCannonMonster.initialBulletFadeSpeed = (float)bulletElement.Element("FadeSpeed");
            BaseCannonMonster.bulletDamage = (int)bulletElement.Element("Damage");
        }

		public static GroundCannonMonster LoadCannonMonsterInformation(int rightBoundWidth, int leftBoundWidth)
		{
			GroundCannonMonster groundCannonMonster = new GroundCannonMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement cannonMonsterElement = monstersElement.Element("GroundCannonMonster");

			groundCannonMonster.entityTag = (string)cannonMonsterElement.Element("EntityTag");
			groundCannonMonster.frameCount = (int)cannonMonsterElement.Element("FrameCount");
			groundCannonMonster.rotationSpeed = (float)cannonMonsterElement.Element("RotationSpeed");
            groundCannonMonster.spawnSpeed = (float)cannonMonsterElement.Element("SpawnSpeed");
            groundCannonMonster.deathSpeed = (float)cannonMonsterElement.Element("DeathSpeed");
			groundCannonMonster.actionDelayTime = (float)cannonMonsterElement.Element("ActionDelayTime");
            groundCannonMonster.boundOffset = (float)cannonMonsterElement.Element("BoundOffset");
            groundCannonMonster.bulletYOffset = (float)cannonMonsterElement.Element("BulletYOffset");
            groundCannonMonster.damage = (int)cannonMonsterElement.Element("Damage");
            groundCannonMonster.fadeSpeed = (float)cannonMonsterElement.Element("FadeSpeed");

            GroundCannonMonster.groundOffset = (float)cannonMonsterElement.Element("GroundOffset");

			return groundCannonMonster;
		}

        public static FlyingCannonMonster LoadFlyingCannonMonsterInformation(int rightBoundWidth, int leftBoundWidth)
        {
            FlyingCannonMonster flyingCannonMonster = new FlyingCannonMonster();

            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement flyingCannonMonsterElement = monstersElement.Element("FlyingCannonMonster");

            flyingCannonMonster.entityTag = (string)flyingCannonMonsterElement.Element("EntityTag");
            flyingCannonMonster.frameCount = (int)flyingCannonMonsterElement.Element("FrameCount");
            flyingCannonMonster.rotationSpeed = (float)flyingCannonMonsterElement.Element("RotationSpeed");
            flyingCannonMonster.spawnSpeed = (float)flyingCannonMonsterElement.Element("SpawnSpeed");
            flyingCannonMonster.deathSpeed = (float)flyingCannonMonsterElement.Element("DeathSpeed");
            flyingCannonMonster.actionDelayTime = (float)flyingCannonMonsterElement.Element("ActionDelayTime");
            flyingCannonMonster.animationSpeed = (float)flyingCannonMonsterElement.Element("AnimationSpeed");
            flyingCannonMonster.bulletYOffset = (float)flyingCannonMonsterElement.Element("BulletYOffset");
            flyingCannonMonster.boundOffset = (float)flyingCannonMonsterElement.Element("BoundOffset");
            flyingCannonMonster.bounceHeight = (float)flyingCannonMonsterElement.Element("BounceHeight");
            flyingCannonMonster.bounceSpeed = (float)flyingCannonMonsterElement.Element("BounceSpeed");
            flyingCannonMonster.damage = (int)flyingCannonMonsterElement.Element("Damage");
            flyingCannonMonster.fadeSpeed = (float)flyingCannonMonsterElement.Element("FadeSpeed");

            FlyingCannonMonster.floatHeight = (float)flyingCannonMonsterElement.Element("FloatHeight");

            return flyingCannonMonster;
        }

        public static SpikeMonster LoadSpikeMonsterInformation() 
        {
            SpikeMonster spikeMonster = new SpikeMonster();

            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement spikeMonsterElement = monstersElement.Element("SpikeMonster");

            spikeMonster.entityTag = (string)spikeMonsterElement.Element("EntityTag");
            spikeMonster.speed = (float)spikeMonsterElement.Element("Speed");
            spikeMonster.frameCount = (int)spikeMonsterElement.Element("FrameCount");
            spikeMonster.moveDistanceLimit = (int)spikeMonsterElement.Element("MoveDistanceLimit");
            spikeMonster.rotationSpeed = (float)spikeMonsterElement.Element("RotationSpeed");
            spikeMonster.spawnSpeed = (float)spikeMonsterElement.Element("SpawnSpeed");
            spikeMonster.deathSpeed = (float)spikeMonsterElement.Element("DeathSpeed");
            spikeMonster.actionDelayTime = (float)spikeMonsterElement.Element("ActionDelayTime");
            spikeMonster.attackSpeed = (float)spikeMonsterElement.Element("AttackSpeed");
            spikeMonster.damage = (int)spikeMonsterElement.Element("Damage");
            spikeMonster.fadeSpeed = (float)spikeMonsterElement.Element("FadeSpeed");

            SpikeMonster.floatHeight = (float)spikeMonsterElement.Element("FloatHeight");
            SpikeMonster.attackDelayTime = (float)spikeMonsterElement.Element("AttackDelayTime");

            return spikeMonster;
        }

        public static DashMonster LoadDashMonsterInformation(int rightBoundWidth, int leftBoundWidth)
        {
            DashMonster dashMonster = new DashMonster();

            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement dashMonsterElement = monstersElement.Element("DashMonster");

            dashMonster.entityTag = (string)dashMonsterElement.Element("EntityTag");
            dashMonster.speed = (float)dashMonsterElement.Element("Speed");
            dashMonster.spawnSpeed = (float)dashMonsterElement.Element("SpawnSpeed");
            dashMonster.deathSpeed = (float)dashMonsterElement.Element("DeathSpeed");
            dashMonster.frameCount = (int)dashMonsterElement.Element("FrameCount");
            dashMonster.actionDelayTime = (float)dashMonsterElement.Element("ActionDelayTime");
            dashMonster.rotationSpeed = (float)dashMonsterElement.Element("RotationSpeed");
            dashMonster.animationSpeed = (float)dashMonsterElement.Element("AnimationSpeed");
            dashMonster.damage = (int)dashMonsterElement.Element("Damage");
            dashMonster.invincibilityTimeLimit = (float)dashMonsterElement.Element("InvincibilityTimeLimit");
            dashMonster.fadeSpeed = (float)dashMonsterElement.Element("FadeSpeed");

            DashMonster.groundOffset = (float)dashMonsterElement.Element("GroundOffset");
            DashMonster.boundOffset = (float)dashMonsterElement.Element("BoundOffset");

            return dashMonster;
        }

        public static UndergroundMonster LoadUndergroundMonsterInformation()
        {
            UndergroundMonster undergroundMonster = new UndergroundMonster();

            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement undergroundMonsterElement = monstersElement.Element("UndergroundMonster");

            undergroundMonster.entityTag = (string)undergroundMonsterElement.Element("EntityTag");
            undergroundMonster.animationSpeed = (float)undergroundMonsterElement.Element("AnimationSpeed");
            undergroundMonster.frameCount = (int)undergroundMonsterElement.Element("FrameCount");
            undergroundMonster.moveDistanceLimit = (int)undergroundMonsterElement.Element("MoveDistanceLimit");
            undergroundMonster.actionDelayTime = (float)undergroundMonsterElement.Element("ActionDelayTime");
            undergroundMonster.rotationSpeed = (float)undergroundMonsterElement.Element("RotationSpeed");
            undergroundMonster.spawnSpeed = (float)undergroundMonsterElement.Element("SpawnSpeed");
            undergroundMonster.deathSpeed = (float)undergroundMonsterElement.Element("DeathSpeed");
            undergroundMonster.damage = (int)undergroundMonsterElement.Element("Damage");
            undergroundMonster.fadeSpeed = (float)undergroundMonsterElement.Element("FadeSpeed");

            UndergroundMonster.initialVelocity = (float)undergroundMonsterElement.Element("InitialVelocity");
            UndergroundMonster.gravity = (float)undergroundMonsterElement.Element("Gravity");
            UndergroundMonster.velocityWeakenValue = (float)undergroundMonsterElement.Element("VelocityWeakenValue");
            UndergroundMonster.rotationVelocityLimit = (float)undergroundMonsterElement.Element("RotationVelocityLimit");

            return undergroundMonster;
        }

        public static SwoopMonster LoadSwoopMonsterInformation()
        {
            SwoopMonster swoopMonster = new SwoopMonster();

            XElement charactersElement = characterDocument.Element("Characters");
            XElement monstersElement = charactersElement.Element("Monsters");
            XElement swoopMonsterElement = monstersElement.Element("SwoopMonster");

            swoopMonster.entityTag = (string)swoopMonsterElement.Element("EntityTag");
            swoopMonster.speed = (float)swoopMonsterElement.Element("Speed");
            swoopMonster.spawnSpeed = (float)swoopMonsterElement.Element("SpawnSpeed");
            swoopMonster.deathSpeed = (float)swoopMonsterElement.Element("DeathSpeed");
            swoopMonster.animationSpeed = (float)swoopMonsterElement.Element("AnimationSpeed");
            swoopMonster.frameCount = (int)swoopMonsterElement.Element("FrameCount");
            swoopMonster.moveDistanceLimit = (int)swoopMonsterElement.Element("MoveDistanceLimit");
            swoopMonster.actionDelayTime = (float)swoopMonsterElement.Element("ActionDelayTime");
            swoopMonster.rotationSpeed = (float)swoopMonsterElement.Element("RotationSpeed");
            swoopMonster.damage = (int)swoopMonsterElement.Element("Damage");
            swoopMonster.invincibilityTimeLimit = (float)swoopMonsterElement.Element("InvincibilityTimeLimit");
            swoopMonster.fadeSpeed = (float)swoopMonsterElement.Element("FadeSpeed");

            SwoopMonster.floatHeight = (float)swoopMonsterElement.Element("FloatHeight");
            SwoopMonster.swoopDelayLimit = (float)swoopMonsterElement.Element("SwoopDelayLimit");
            SwoopMonster.swoopArcScale = (float)swoopMonsterElement.Element("SwoopArcScale");
            SwoopMonster.swoopArcWidth = (float)swoopMonsterElement.Element("SwoopArcWidth");
            SwoopMonster.swoopArcSpeed = (float)swoopMonsterElement.Element("SwoopArcSpeed");
            SwoopMonster.playerTrailDistance = (float)swoopMonsterElement.Element("PlayerTrailDistance");
            SwoopMonster.trailXOffset = (float)swoopMonsterElement.Element("TrailXOffset");

            return swoopMonster;
        }
	}
}

