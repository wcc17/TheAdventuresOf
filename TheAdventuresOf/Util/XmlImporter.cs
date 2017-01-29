using System;
using System.Xml;
using System.IO;
using Microsoft.Xna.Framework;
using System.Xml.Linq;
using System.Linq;

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
			XElement controllerElement = gameElement.Element("Controller");

			var controllerX = (float)controllerElement.Element("ControllerX");
			var controllerY = (float)controllerElement.Element("ControllerY");
			var leftButtonX = (float)controllerElement.Element("LeftButtonX");
			var leftButtonY = (float)controllerElement.Element("LeftButtonY");
			var rightButtonX = (float)controllerElement.Element("RightButtonX");
			var rightButtonY = (float)controllerElement.Element("RightButtonY");
			var upButtonX = (float)controllerElement.Element("UpButtonX");
			var upButtonY = (float)controllerElement.Element("UpButtonY");

			Controller.controllerPositionVector = new Vector2(controllerX, controllerY);
			Controller.leftButtonPositionVector = new Vector2(leftButtonX, leftButtonY);
			Controller.rightButtonPositionVector = new Vector2(rightButtonX, rightButtonY);
			Controller.upButtonPositionVector = new Vector2(upButtonX, upButtonY);
		}

		public static void LoadLevelInformation(Level level)
		{
			XElement levelElement = levelDocument.Element("Level");
			XElement levelOneElement = levelElement.Element("LevelOne");

			level.groundLevel = (float)levelOneElement.Element("GroundLevel");
			level.leftBoundWidth = (int)levelOneElement.Element("LeftBoundWidth");
			level.rightBoundWidth = (int)levelOneElement.Element("RightBoundWidth");

			LoadMonsterInformation(level, levelOneElement);
			LoadProjectileInformation(level);
		}

		public static void LoadMonsterInformation(Level level, XElement levelElement)
		{
			level.blockMonsterLimit = (int)levelElement.Element("BlockMonsterLimit");
			level.sunMonsterLimit = (int)levelElement.Element("SunMonsterLimit");
			level.cannonMonsterLimit = (int)levelElement.Element("CannonMonsterLimit");
			level.bileMonsterLimit = (int)levelElement.Element("BileMonsterLimit");

			level.blockMonster = LoadBlockMonsterInformation();
			level.sunMonster = LoadSunMonsterInformation();
			level.bileMonster = LoadBileMonsterInformation();
			level.cannonMonster = LoadCannonMonsterInformation();
		}

		public static void LoadPlayerInformation(Player player)
		{
			XElement charactersElement = characterDocument.Element("Characters");
			XElement playerElement = charactersElement.Element("Player");

			player.speed= (float)playerElement.Element("Speed");
			player.animationSpeed = (float)playerElement.Element("AnimationSpeed");
			player.jumpSpeed = (float)playerElement.Element("JumpSpeed");
			player.jumpHeight = (float)playerElement.Element("JumpHeight");
			player.leftSwordOffset = (float)playerElement.Element("LeftSwordOffset");
			player.rightSwordOffset = (float)playerElement.Element("RightSwordOffset");
			player.swordYOffset = (float)playerElement.Element("SwordYOffset");
			player.frameCount = (int)playerElement.Element("FrameCount");
			player.maxHealth = (int)playerElement.Element("InitialMaxHealth");
			player.invincibilityTime = (double)playerElement.Element("InvincibilityTime");
			player.knockBackDistanceLimit = (float)playerElement.Element("KnockBackDistanceLimit");
			player.knockBackSpeed = (int)playerElement.Element("KnockBackSpeed");
			player.rotationSpeed = (int)playerElement.Element("RotationSpeed");
		}

		public static BlockMonster LoadBlockMonsterInformation()
		{
			BlockMonster blockMonster = new BlockMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement blockMonsterElement = monstersElement.Element("BlockMonster");

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

			sunMonster.speed = (float)sunMonsterElement.Element("Speed");
			sunMonster.animationSpeed = (float)sunMonsterElement.Element("AnimationSpeed");
			sunMonster.frameCount = (int)sunMonsterElement.Element("FrameCount");
			sunMonster.moveDistanceLimit = (int)sunMonsterElement.Element("MoveDistanceLimit");
			sunMonster.actionDelayTime = (float)sunMonsterElement.Element("ActionDelayTime");
			sunMonster.rotationSpeed = (float)sunMonsterElement.Element("RotationSpeed");
			sunMonster.upDownSpeed = (float)sunMonsterElement.Element("UpDownSpeed");

			//TODO: because this is static they will not need to be set in TransferInfo method. does not need to be reset everytime
			SunMonster.floatHeight = (float)sunMonsterElement.Element("FloatHeight");

			return sunMonster;
		}

		public static BileMonster LoadBileMonsterInformation()
		{
			BileMonster bileMonster = new BileMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement bileMonsterElement = monstersElement.Element("BileMonster");

			bileMonster.speed = (float)bileMonsterElement.Element("Speed");
			bileMonster.animationSpeed = (float)bileMonsterElement.Element("AnimationSpeed");
			bileMonster.frameCount = (int)bileMonsterElement.Element("FrameCount");
			bileMonster.moveDistanceLimit = (int)bileMonsterElement.Element("MoveDistanceLimit");
			bileMonster.actionDelayTime = (float)bileMonsterElement.Element("ActionDelayTime");
			bileMonster.rotationSpeed = (float)bileMonsterElement.Element("RotationSpeed");
			bileMonster.upDownSpeed = (float)bileMonsterElement.Element("UpDownSpeed");

			//TODO: because this is static they will not need to be set in TransferInfo method. does not need to be reset everytime
			BileMonster.floatHeight = (float)bileMonsterElement.Element("FloatHeight");

			return bileMonster;
		}

		public static CannonMonster LoadCannonMonsterInformation()
		{
			CannonMonster cannonMonster = new CannonMonster();

			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement cannonMonsterElement = monstersElement.Element("CannonMonster");

			cannonMonster.frameCount = (int)cannonMonsterElement.Element("FrameCount");
			cannonMonster.rotationSpeed = (float)cannonMonsterElement.Element("RotationSpeed");
			cannonMonster.upDownSpeed = (float)cannonMonsterElement.Element("UpDownSpeed");
			cannonMonster.actionDelayTime = (float)cannonMonsterElement.Element("ActionDelayTime");

			return cannonMonster;
		}

		public static void LoadProjectileInformation(Level level)
		{
			level.bile = LoadBileInformation();
			level.bullet = LoadBulletInformation();
		}

		public static Bile LoadBileInformation()
		{
			XElement projectilesElement = projectileDocument.Element("Projectiles");

			XElement bileElement = projectilesElement.Element("Bile");
			Bile bile = new Bile();
			bile.speed = (float)bileElement.Element("Speed");

			return bile;
		}

		public static Bullet LoadBulletInformation()
		{
			XElement projectilesElement = projectileDocument.Element("Projectiles");

			XElement bulletElement = projectilesElement.Element("Bullet");
			Bullet bullet = new Bullet();
			bullet.speed = (float)bulletElement.Element("Speed");

			return bullet;
		}
	}
}

