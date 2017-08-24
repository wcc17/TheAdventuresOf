using System;
using System.Xml;
using System.IO;
using Microsoft.Xna.Framework;
using System.Xml.Linq;
using System.Linq;
using System.Collections.Generic;

namespace TheAdventuresOf
{
	public static class XmlImporter
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
			#endif
			#if __IOS__
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
			XElement controllerElement = gameElement.Element("GameController");

			var controllerX = (float)controllerElement.Element("ControllerX");
			var controllerY = (float)controllerElement.Element("ControllerY");
			var leftButtonX = (float)controllerElement.Element("LeftButtonX");
			var leftButtonY = (float)controllerElement.Element("LeftButtonY");
			var rightButtonX = (float)controllerElement.Element("RightButtonX");
			var rightButtonY = (float)controllerElement.Element("RightButtonY");
			var upButtonX = (float)controllerElement.Element("UpButtonX");
			var upButtonY = (float)controllerElement.Element("UpButtonY");

			GameController.controllerPositionVector = new Vector2(controllerX, controllerY);
			GameController.leftButtonPositionVector = new Vector2(leftButtonX, leftButtonY);
			GameController.rightButtonPositionVector = new Vector2(rightButtonX, rightButtonY);
			GameController.upButtonPositionVector = new Vector2(upButtonX, upButtonY);

            XElement scoringElement = gameElement.Element("Scoring");
            ScoreText.textFloatSpeed = (float)scoringElement.Element("TextFloatSpeed");
            ScoreText.textDisappearSpeed = (float)scoringElement.Element("TextDisappearSpeed");
            ScoreText.textFontScale = (float)scoringElement.Element("TextFontScale");
            ScoreText.textPositionOffset = (float)scoringElement.Element("TextPositionOffset");
            ScoringManager.blockMonsterScore = (int)scoringElement.Element("BlockMonster");
            ScoringManager.sunMonsterScore = (int)scoringElement.Element("SunMonster");
            ScoringManager.bileMonsterScore = (int)scoringElement.Element("BileMonster");
            ScoringManager.dashMonsterScore = (int)scoringElement.Element("DashMonster");
            ScoringManager.groundCannonMonsterScore = (int)scoringElement.Element("GroundCannonMonster");
            ScoringManager.flyingCannonMonsterScore = (int)scoringElement.Element("FlyingCannonMonster");
            ScoringManager.spikeMonsterScore = (int)scoringElement.Element("SpikeMonster");
            ScoringManager.totalScoreTextX = (float)scoringElement.Element("TotalScoreTextX");
            ScoringManager.totalScoreTextY = (float)scoringElement.Element("TotalScoreTextY");
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
            
            level.spawnDelayTime = (float)levelElement.Element("SpawnDelayTime");
            //TODO: get rid of this here and elsewhere
            level.delayCannonSpawnTimerLimit = (float)levelElement.Element("DelayCannonSpawnTimeLimit");

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
            level.bileMonster = LoadBileMonsterInformation();
            level.spikeMonster = LoadSpikeMonsterInformation();
            level.dashMonster = LoadDashMonsterInformation(level.rightBoundWidth, level.leftBoundWidth);

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
			player.maxHealth = (int)playerElement.Element("InitialMaxHealth");
			player.invincibilityTime = (double)playerElement.Element("InvincibilityTime");
			player.knockBackDistanceLimit = (float)playerElement.Element("KnockBackDistanceLimit");
			player.knockBackSpeed = (int)playerElement.Element("KnockBackSpeed");
			player.rotationSpeed = (int)playerElement.Element("RotationSpeed");
            player.initialJumpVelocity = (float)playerElement.Element("InitialJumpVelocity");
            player.jumpGravity = (float)playerElement.Element("JumpGravity");

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
			blockMonster.animationSpeed = (float)blockMonsterElement.Element("AnimationSpeed");
			blockMonster.frameCount = (int)blockMonsterElement.Element("FrameCount");
			blockMonster.moveDistanceLimit = (int)blockMonsterElement.Element("MoveDistanceLimit");
			blockMonster.actionDelayTime = (float)blockMonsterElement.Element("ActionDelayTime");
			blockMonster.rotationSpeed = (float)blockMonsterElement.Element("RotationSpeed");
			blockMonster.upDownSpeed = (float)blockMonsterElement.Element("UpDownSpeed");

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
			sunMonster.animationSpeed = (float)sunMonsterElement.Element("AnimationSpeed");
			sunMonster.frameCount = (int)sunMonsterElement.Element("FrameCount");
			sunMonster.moveDistanceLimit = (int)sunMonsterElement.Element("MoveDistanceLimit");
			sunMonster.actionDelayTime = (float)sunMonsterElement.Element("ActionDelayTime");
			sunMonster.rotationSpeed = (float)sunMonsterElement.Element("RotationSpeed");
			sunMonster.upDownSpeed = (float)sunMonsterElement.Element("UpDownSpeed");

			SunMonster.floatHeight = (float)sunMonsterElement.Element("FloatHeight");

			return sunMonster;
		}

		public static BileMonster LoadBileMonsterInformation()
		{
			BileMonster bileMonster = new BileMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement bileMonsterElement = monstersElement.Element("BileMonster");

			bileMonster.entityTag = (string)bileMonsterElement.Element("EntityTag");
			bileMonster.speed = (float)bileMonsterElement.Element("Speed");
			bileMonster.animationSpeed = (float)bileMonsterElement.Element("AnimationSpeed");
			bileMonster.frameCount = (int)bileMonsterElement.Element("FrameCount");
			bileMonster.moveDistanceLimit = (int)bileMonsterElement.Element("MoveDistanceLimit");
			bileMonster.actionDelayTime = (float)bileMonsterElement.Element("ActionDelayTime");
			bileMonster.rotationSpeed = (float)bileMonsterElement.Element("RotationSpeed");
			bileMonster.upDownSpeed = (float)bileMonsterElement.Element("UpDownSpeed");

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
			Bile.groundLevel = (float)bileElement.Element("GroundLevel");
            Bile.timeToLive = (float)bileElement.Element("TimeToLive");
            Bile.distance = (float)bileElement.Element("Distance");

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
			groundCannonMonster.upDownSpeed = (float)cannonMonsterElement.Element("UpDownSpeed");
			groundCannonMonster.actionDelayTime = (float)cannonMonsterElement.Element("ActionDelayTime");
            groundCannonMonster.boundOffset = (float)cannonMonsterElement.Element("BoundOffset");
            groundCannonMonster.bulletStartYPos = (float)cannonMonsterElement.Element("BulletStartYPos");

            GroundCannonMonster.groundOffset = (float)cannonMonsterElement.Element("GroundOffset");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlImporter is used
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
            flyingCannonMonster.upDownSpeed = (float)flyingCannonMonsterElement.Element("UpDownSpeed");
            flyingCannonMonster.actionDelayTime = (float)flyingCannonMonsterElement.Element("ActionDelayTime");
            flyingCannonMonster.animationSpeed = (float)flyingCannonMonsterElement.Element("AnimationSpeed");
            flyingCannonMonster.bulletStartYPos = (float)flyingCannonMonsterElement.Element("BulletStartYPos");
            flyingCannonMonster.boundOffset = (float)flyingCannonMonsterElement.Element("BoundOffset");
            flyingCannonMonster.bounceHeight = (float)flyingCannonMonsterElement.Element("BounceHeight");
            flyingCannonMonster.bounceSpeed = (float)flyingCannonMonsterElement.Element("BounceSpeed");

            FlyingCannonMonster.floatHeight = (float)flyingCannonMonsterElement.Element("FloatHeight");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlImporter is used
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
            spikeMonster.upDownSpeed = (float)spikeMonsterElement.Element("UpDownSpeed");
            spikeMonster.actionDelayTime = (float)spikeMonsterElement.Element("ActionDelayTime");
            spikeMonster.attackSpeed = (float)spikeMonsterElement.Element("AttackSpeed");

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
            dashMonster.frameCount = (int)dashMonsterElement.Element("FrameCount");
            dashMonster.actionDelayTime = (float)dashMonsterElement.Element("ActionDelayTime");
            dashMonster.rotationSpeed = (float)dashMonsterElement.Element("RotationSpeed");
            dashMonster.upDownSpeed = (float)dashMonsterElement.Element("UpDownSpeed");
            dashMonster.animationSpeed = (float)dashMonsterElement.Element("AnimationSpeed");

            DashMonster.groundOffset = (float)dashMonsterElement.Element("GroundOffset");
            DashMonster.boundOffset = (float)dashMonsterElement.Element("BoundOffset");

            //needing to use AssetManager.level here might not work later on with multiple levels. 
            //Will need to be sure that the new level is always loaded before XmlImporter is used
            //TODO: ensure that level graphc assets are loaded before xml importing happens on a new level
            float rightSideBound = AssetManager.Instance.levelTexture.Width - rightBoundWidth;
            DashMonster.leftSideX = leftBoundWidth + DashMonster.boundOffset;
            DashMonster.rightSideX = rightSideBound - (AssetManager.Instance.dashMonsterTexture.Width / dashMonster.frameCount) - DashMonster.boundOffset;

            return dashMonster;
        }
	}
}

