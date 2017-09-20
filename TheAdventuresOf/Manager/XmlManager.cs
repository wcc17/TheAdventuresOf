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
		public static XDocument levelDocument;

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
			Stream levelDocumentStream = TitleContainer.OpenStream(filePath + "XML/LevelInformation.xml");

			gameDocument = XDocument.Load(gameDocumentStream);
			characterDocument = XDocument.Load(characterDocumentStream);
			projectileDocument = XDocument.Load(projectileDocumentStream);
			levelDocument = XDocument.Load(levelDocumentStream);
		}

		public static void LoadGameInformation()
		{
			XElement gameElement = gameDocument.Element("Game");
            XElement gameControllerElement = gameElement.Element("GameController");
            XElement coinElement = gameElement.Element("Coin");
            XElement coinManagerElement = gameElement.Element("CoinManager");

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

            XElement scoringElement = gameElement.Element("Scoring");

            Text.textFloatSpeed = (float)scoringElement.Element("TextFloatSpeed");
            Text.textDisappearSpeed = (float)scoringElement.Element("TextDisappearSpeed");
            Text.textFontScale = (float)scoringElement.Element("TextFontScale");
            Text.textPositionOffset = (float)scoringElement.Element("TextPositionOffset");
            ScoringManager.blockMonsterScore = (int)scoringElement.Element("BlockMonster");
            ScoringManager.sunMonsterScore = (int)scoringElement.Element("SunMonster");
            ScoringManager.bileMonsterScore = (int)scoringElement.Element("BileMonster");
            ScoringManager.dashMonsterScore = (int)scoringElement.Element("DashMonster");
            ScoringManager.groundCannonMonsterScore = (int)scoringElement.Element("GroundCannonMonster");
            ScoringManager.flyingCannonMonsterScore = (int)scoringElement.Element("FlyingCannonMonster");
            ScoringManager.spikeMonsterScore = (int)scoringElement.Element("SpikeMonster");
            ScoringManager.undergroundMonsterScore = (int)scoringElement.Element("UndergroundMonster");

            CoinManager.coinYOffset = (float)coinManagerElement.Element("CoinYOffset");
            CoinManager.coinXSpacing = (int)coinManagerElement.Element("CoinXSpacing");
            CoinManager.randomCoinLimitBronze = (int)coinManagerElement.Element("RandomCoinLimitBronze");
            CoinManager.randomCoinLimitSilver = (int)coinManagerElement.Element("RandomCoinLimitSilver");
            CoinManager.randomCoinLimitGold = (int)coinManagerElement.Element("RandomCoinLimitGold");
            CoinManager.coinCountSymbolXOffset = (float)coinManagerElement.Element("CoinCountSymbolXOffset");
            CoinManager.coinCountSymbolY = (float)coinManagerElement.Element("CoinCountSymbolY");
            CoinManager.coinCountY = (float)coinManagerElement.Element("CoinCountY");
            Coin.coinDropSpeed = (float)coinElement.Element("CoinDropSpeed");
            Coin.coinFloatSpeed = (float)coinElement.Element("CoinFloatSpeed");
            Coin.coinFloatLimit = (float)coinElement.Element("CoinFloatLimit");
            Coin.coinFadeSpeed = (float)coinElement.Element("CoinFadeSpeed");
		}

        public static GameManager LoadGameManagerInformation(GameManager gameManager) {
            XElement gameElement = gameDocument.Element("Game");
            XElement gameManagerElement = gameElement.Element("GameManager");

            gameManager.splashTimeLimit = (float)gameManagerElement.Element("SplashTimeLimit");
            gameManager.pausedTextVectorXOffset = (float)gameManagerElement.Element("PausedTextVectorXOffset");
            gameManager.totalScoreTextX = (float)gameManagerElement.Element("TotalScoreTextX");
            gameManager.totalScoreTextY = (float)gameManagerElement.Element("TotalScoreTextY");

            return gameManager;
        }

        public static void LoadMainMenuInformation() {
            XElement levelElement = levelDocument.Element("Level");
            XElement mainMenuElement = levelElement.Element("MainMenu");

            var playButtonX = (float)mainMenuElement.Element("PlayButtonX");
            var playButtonY = (float)mainMenuElement.Element("PlayButtonY");
            MenuController.playButtonPositionVector = new Vector2(playButtonX, playButtonY);
        }

        public static void LoadPreLevelInformation(PreLevel preLevel) {
            XElement levelElement = levelDocument.Element("Level");
            XElement preLevelElement = levelElement.Element("PreLevel");

            preLevel.groundLevel = (float)preLevelElement.Element("GroundLevel");
            preLevel.playerStartX = (float)preLevelElement.Element("PlayerStartX");
            preLevel.leftBoundWidth = (int)preLevelElement.Element("LeftBoundWidth");
            preLevel.rightBoundWidth = (int)preLevelElement.Element("RightBoundWidth");
            PreLevel.preLevelCharX = (float)preLevelElement.Element("PreLevelCharX");
            PreLevel.preLevelCharText = (string)preLevelElement.Element("PreLevelCharText");
            PreLevel.textX = (float)preLevelElement.Element("TextX");
            PreLevel.textY = (float)preLevelElement.Element("TextY");
            PreLevel.textThreshold = (float)preLevelElement.Element("TextThreshold");
        }

        public static void LoadStoreLevelInformation(StoreLevel storeLevel) {
            XElement levelElement = levelDocument.Element("Level");
            XElement storeLevelElement = levelElement.Element("StoreLevel");

            storeLevel.groundLevel = (float)storeLevelElement.Element("GroundLevel");
            storeLevel.playerStartX = (float)storeLevelElement.Element("PlayerStartX");
            storeLevel.leftBoundWidth = (int)storeLevelElement.Element("LeftBoundWidth");
            storeLevel.rightBoundWidth = (int)storeLevelElement.Element("RightBoundWidth");
            StoreLevel.storeLevelCharX = (float)storeLevelElement.Element("StoreLevelCharX");
            StoreLevel.storeLevelCharY = (float)storeLevelElement.Element("StoreLevelCharY");
            StoreLevel.storeLevelCharTextX = (float)storeLevelElement.Element("StoreLevelCharTextX");
            StoreLevel.storeLevelCharTextY = (float)storeLevelElement.Element("StoreLevelCharTextY");
            StoreLevel.storeLevelCharText = (string)storeLevelElement.Element("StoreLevelCharText");

            XElement levelTextElement = storeLevelElement.Element("LevelText");
            List<Text> texts = new List<Text>();
            foreach (XElement textElement in levelTextElement.Elements("Text")) {
                string textString = (string)textElement.Element("Value");
                int index = (int)textElement.Element("Index");
                float startX = (float)textElement.Element("StartX");
                float endX = (float)textElement.Element("EndX");
                float textX = (float)textElement.Element("TextX");
                float textY = (float)textElement.Element("TextY");

                Text text = new Text(textX, textY, textString, index, startX, endX);
                texts.Add(text);
            }

            StoreLevel.texts = texts;
        }

		public static void LoadLevelInformation(Level level) {
			XElement levelElement = levelDocument.Element("Level");
			XElement levelOneElement = levelElement.Element("LevelOne");

            List<XElement> tierElements = new List<XElement>();
            tierElements.Add(levelOneElement.Element("Tier1"));
            tierElements.Add(levelOneElement.Element("Tier2"));
            tierElements.Add(levelOneElement.Element("Tier3"));
            tierElements.Add(levelOneElement.Element("Tier4"));
            tierElements.Add(levelOneElement.Element("Tier5"));

			level.groundLevel = (float)levelOneElement.Element("GroundLevel");
            level.playerStartX = (float)levelOneElement.Element("PlayerStartX");
			level.leftBoundWidth = (int)levelOneElement.Element("LeftBoundWidth");
			level.rightBoundWidth = (int)levelOneElement.Element("RightBoundWidth");

            level.tierScores = new Dictionary<int, int>();
            level.tierScores.Add(Level.TIER_1, (int)levelOneElement.Element("Tier1Score"));
            level.tierScores.Add(Level.TIER_2, (int)levelOneElement.Element("Tier2Score"));
            level.tierScores.Add(Level.TIER_3, (int)levelOneElement.Element("Tier3Score"));
            level.tierScores.Add(Level.TIER_4, (int)levelOneElement.Element("Tier4Score"));
            level.tierScores.Add(Level.TIER_5, (int)levelOneElement.Element("Tier5Score"));

            level.tierMonsterLimits = new Dictionary<int, List<int>>();
            level.tierMonsterLimits.Add(MonsterManager.BLOCK_MONSTER, LoadTierMonsterLimits("BlockMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.SUN_MONSTER, LoadTierMonsterLimits("SunMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.GROUND_CANNON_MONSTER, LoadTierMonsterLimits("GroundCannonMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.FLYING_CANNON_MONSTER, LoadTierMonsterLimits("FlyingCannonMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.BILE_MONSTER, LoadTierMonsterLimits("BileMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.SPIKE_MONSTER, LoadTierMonsterLimits("SpikeMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.DASH_MONSTER, LoadTierMonsterLimits("DashMonsterLimit", tierElements));
            level.tierMonsterLimits.Add(MonsterManager.UNDERGROUND_MONSTER, LoadTierMonsterLimits("UndergroundMonsterLimit", tierElements));
            level.maxTier = (int)levelOneElement.Element("MaxTier");
            
            level.spawnDelayTime = (float)levelElement.Element("SpawnDelayTime");


            //TODO: get rid of this here and elsewhere. not sure if i need this
            level.delayCannonSpawnTimerLimit = (float)levelElement.Element("DelayCannonSpawnTimeLimit");

            CoinManager.Instance.UpdateGroundLevel(level.groundLevel + CoinManager.coinYOffset);

			LoadMonsterInformation(level);
		}

        //load a monster limit for each tier, for a given monsterLimit string
        public static List<int> LoadTierMonsterLimits(String monsterLimitElementString, List<XElement> tierElements) {
            List<int> monsterLimits = new List<int>();

            foreach(XElement tierElement in tierElements) {
                monsterLimits.Add((int)tierElement.Element(monsterLimitElementString));
            }

            return monsterLimits;
        }

        public static void LoadMonsterInformation(Level level) {
			level.blockMonster = LoadBlockMonsterInformation();
			level.sunMonster = LoadSunMonsterInformation();
            level.bileMonster = LoadBileMonsterInformation(level.groundLevel);
            level.spikeMonster = LoadSpikeMonsterInformation();
            level.dashMonster = LoadDashMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
            level.undergroundMonster = LoadUndergroundMonsterInformation();

            LoadBaseCannonMonsterInformation();
            level.groundCannonMonster = LoadCannonMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
            level.flyingCannonMonster = LoadFlyingCannonMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);
		}

		public static Player LoadPlayerInformation()
		{
            Player player = new Player();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement playerElement = charactersElement.Element("Player");

			player.entityTag = (string)playerElement.Element("EntityTag");
			player.speed = (float)playerElement.Element("Speed");
			player.animationSpeed = (float)playerElement.Element("AnimationSpeed");
			player.leftSwordOffset = (float)playerElement.Element("LeftSwordOffset");
			player.rightSwordOffset = (float)playerElement.Element("RightSwordOffset");
			player.swordYOffset = (float)playerElement.Element("SwordYOffset");
			player.frameCount = (int)playerElement.Element("FrameCount");
			player.invincibilityTime = (double)playerElement.Element("InvincibilityTime");
			player.knockBackDistanceLimit = (float)playerElement.Element("KnockBackDistanceLimit");
			player.knockBackSpeed = (int)playerElement.Element("KnockBackSpeed");
			player.rotationSpeed = (int)playerElement.Element("RotationSpeed");
            player.initialJumpVelocity = (float)playerElement.Element("InitialJumpVelocity");
            player.jumpGravity = (float)playerElement.Element("JumpGravity");
            player.collisionOffset = (int)playerElement.Element("CollisionOffset");
            player.maxHealth = (int)playerElement.Element("InitialMaxHealth");
            player.healthBarXOffset = (float)playerElement.Element("HealthBarXOffset");
            player.healthBarY = (float)playerElement.Element("HealthBarY");
            player.healthTextPositionXOffset = (float)playerElement.Element("HealthTextPositionXOffset");
            player.healthTextPositionYOffset = (float)playerElement.Element("HealthTextPositionYOffset");

            return player;
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

			SunMonster.floatHeight = (float)sunMonsterElement.Element("FloatHeight");

			return sunMonster;
		}

		public static BileMonster LoadBileMonsterInformation(float groundLevel)
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
            Bile.groundOffset = (float)bileElement.Element("GroundOffset");

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

            GroundCannonMonster.groundOffset = (float)cannonMonsterElement.Element("GroundOffset");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlManager is used
            //TODO: ensure that level graphc assets are loaded before xml importing happens on a new level
            float rightSideBound = AssetManager.Instance.levelTexture.Width - rightBoundWidth;
            groundCannonMonster.leftSideX = leftBoundWidth + groundCannonMonster.boundOffset;
            groundCannonMonster.rightSideX = rightSideBound - AssetManager.Instance.cannonMonsterTexture.Width - groundCannonMonster.boundOffset;

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

            FlyingCannonMonster.floatHeight = (float)flyingCannonMonsterElement.Element("FloatHeight");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlManager is used
            //TODO: ensure that level graphc assets are loaded before xml importing happens on a new level
            float rightSideBound = AssetManager.Instance.levelTexture.Width - rightBoundWidth;
            flyingCannonMonster.leftSideX = leftBoundWidth + flyingCannonMonster.boundOffset;
            flyingCannonMonster.rightSideX = rightSideBound 
                - (AssetManager.Instance.flyingCannonMonsterTexture.Width / flyingCannonMonster.frameCount) 
                - flyingCannonMonster.boundOffset;

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

            DashMonster.groundOffset = (float)dashMonsterElement.Element("GroundOffset");
            DashMonster.boundOffset = (float)dashMonsterElement.Element("BoundOffset");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlManager is used
            //TODO: ensure that level graphc assets are loaded before xml importing happens on a new level
            float rightSideBound = AssetManager.Instance.levelTexture.Width - rightBoundWidth;
            DashMonster.leftSideX = leftBoundWidth + DashMonster.boundOffset;
            DashMonster.rightSideX = rightSideBound - (AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount) - DashMonster.boundOffset;

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

            UndergroundMonster.fadeSpeed = (float)undergroundMonsterElement.Element("FadeSpeed");
            UndergroundMonster.initialVelocity = (float)undergroundMonsterElement.Element("InitialVelocity");
            UndergroundMonster.gravity = (float)undergroundMonsterElement.Element("Gravity");
            UndergroundMonster.velocityWeakenValue = (float)undergroundMonsterElement.Element("VelocityWeakenValue");
            UndergroundMonster.rotationVelocityLimit = (float)undergroundMonsterElement.Element("RotationVelocityLimit");

            return undergroundMonster;
        }
	}
}

