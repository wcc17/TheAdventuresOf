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
		public static XDocument gameDocument;
		public static XDocument characterDocument;
		public static XDocument levelDocument;

		public static BlockMonster blockMonster;
		public static SunMonster sunMonster;
		public static CannonMonster cannonMonster;
		public static BileMonster bileMonster;

		public static void GetXMLInformation()
		{
			Stream gameDocumentStream = TitleContainer.OpenStream("Content/XML/GameInformation.xml");
			Stream characterDocumentStream = TitleContainer.OpenStream("Content/XML/CharacterInformation.xml");
			Stream levelDocumentStream = TitleContainer.OpenStream("Content/XML/LevelInformation.xml");

			gameDocument = XDocument.Load(gameDocumentStream);
			characterDocument = XDocument.Load(characterDocumentStream);
			levelDocument = XDocument.Load(levelDocumentStream);

			//keep this around to use the info for new instances of monsters
			blockMonster = new BlockMonster();
			sunMonster = new SunMonster();
			cannonMonster = new CannonMonster();
			bileMonster = new BileMonster();
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

			level.blockMonsterLimit = (int)levelOneElement.Element("BlockMonsterLimit");
			level.sunMonsterLimit = (int)levelOneElement.Element("SunMonsterLimit");
			level.cannonMonsterLimit = (int)levelOneElement.Element("CannonMonsterLimit");
			level.bileMonsterLimit = (int)levelOneElement.Element("BileMonsterLimit");
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

		public static void LoadBlockMonsterInformation()
		{
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
		}

		public static void LoadSunMonsterInformation()
		{
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
		}

		public static void LoadBileMonsterInformation()
		{
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
		}

		public static void LoadCannonMonsterInformation()
		{
			XElement charactersElement = characterDocument.Element("Characters");
			XElement monstersElement = charactersElement.Element("Monsters");
			XElement cannonMonsterElement = monstersElement.Element("CannonMonster");

			cannonMonster.frameCount = (int)cannonMonsterElement.Element("FrameCount");
			cannonMonster.rotationSpeed = (float)cannonMonsterElement.Element("RotationSpeed");
			cannonMonster.upDownSpeed = (float)cannonMonsterElement.Element("UpDownSpeed");
			cannonMonster.actionDelayTime = (float)cannonMonsterElement.Element("ActionDelayTime");
		}


		//TODO: something needs to be done about these. im not a fan. i could use a single trasnferMonsterInformation
		//method to transfer stuff for all of the monsters. but the better solution would be that each type of 
		//monster should have these variables as static variables and be set in the LoadMonsterInformation methods
		//not the methods below. weekend work
		public static void TransferBlockMonsterInformation(BlockMonster newBlockMonster)
		{
			newBlockMonster.speed = blockMonster.speed;
			newBlockMonster.animationSpeed = blockMonster.animationSpeed;
			newBlockMonster.frameCount = blockMonster.frameCount;
			newBlockMonster.moveDistanceLimit = blockMonster.moveDistanceLimit;
			newBlockMonster.actionDelayTime = blockMonster.actionDelayTime;
			newBlockMonster.rotationSpeed = blockMonster.rotationSpeed;
			newBlockMonster.upDownSpeed = blockMonster.upDownSpeed;
		}

		public static void TransferSunMonsterInformation(SunMonster newSunMonster)
		{
			newSunMonster.speed = sunMonster.speed;
			newSunMonster.animationSpeed = sunMonster.animationSpeed;
			newSunMonster.frameCount = sunMonster.frameCount;
			newSunMonster.moveDistanceLimit = sunMonster.moveDistanceLimit;
			newSunMonster.actionDelayTime = sunMonster.actionDelayTime;
			newSunMonster.rotationSpeed = sunMonster.rotationSpeed;
			newSunMonster.upDownSpeed = sunMonster.upDownSpeed;
		}

		public static void TransferBileMonsterInformation(BileMonster newBileMonster)
		{
			newBileMonster.speed = bileMonster.speed;
			newBileMonster.animationSpeed = bileMonster.animationSpeed;
			newBileMonster.frameCount = bileMonster.frameCount;
			newBileMonster.moveDistanceLimit = bileMonster.moveDistanceLimit;
			newBileMonster.actionDelayTime = bileMonster.actionDelayTime;
			newBileMonster.rotationSpeed = bileMonster.rotationSpeed;
			newBileMonster.upDownSpeed = bileMonster.upDownSpeed;
		}

		public static void TransferCannonMonsterInformation(CannonMonster newCannonMonster)
		{
			newCannonMonster.frameCount = cannonMonster.frameCount;
			newCannonMonster.rotationSpeed = cannonMonster.rotationSpeed;
			newCannonMonster.upDownSpeed = cannonMonster.upDownSpeed;
			newCannonMonster.actionDelayTime = cannonMonster.actionDelayTime;
		}


	}
}

