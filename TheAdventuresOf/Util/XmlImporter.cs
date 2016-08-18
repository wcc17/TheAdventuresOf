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
		public static XDocument characterDocument;
		public static XDocument levelDocument;

		public static BlockMonster blockMonster;
		public static SunMonster sunMonster;

		public static void GetXMLInformation()
		{
			Stream characterDocumentStream = TitleContainer.OpenStream("Content/XML/CharacterInformation.xml");
			Stream levelDocumentStream = TitleContainer.OpenStream("Content/XML/LevelInformation.xml");

			characterDocument = XDocument.Load(characterDocumentStream);
			levelDocument = XDocument.Load(levelDocumentStream);

			//keep this around to use the info for new instances of monsters
			blockMonster = new BlockMonster();
			sunMonster = new SunMonster();
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
			blockMonster.moveDelayTime = (float)blockMonsterElement.Element("MoveDelayTime");
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
			sunMonster.moveDelayTime = (float)sunMonsterElement.Element("MoveDelayTime");
			sunMonster.rotationSpeed = (float)sunMonsterElement.Element("RotationSpeed");
			sunMonster.upDownSpeed = (float)sunMonsterElement.Element("UpDownSpeed");
			sunMonster.floatHeight = (float)sunMonsterElement.Element("FloatHeight");
		}


		//TODO: something needs to be done about both of these. i could use a single trasnferMonsterInformation
		//method to transfer stuff for all of the monsters. but the better solution would be that each type of 
		//monster should have these variables as static variables and be set in the LoadMonsterInformation methods
		//not the methods below. weekend work

		//TODO: eventually these should all be static variables in the BlockMonster class. For now,
		//we don't have a BlockMonster class, so I'm just transferring the info manually. Can't use the
		//monster class because these variables will be different in different types of monsters
		public static BlockMonster TransferBlockMonsterInformation(BlockMonster newBlockMonster)
		{
			newBlockMonster.speed = blockMonster.speed;
			newBlockMonster.animationSpeed = blockMonster.animationSpeed;
			newBlockMonster.frameCount = blockMonster.frameCount;
			newBlockMonster.moveDistanceLimit = blockMonster.moveDistanceLimit;
			newBlockMonster.moveDelayTime = blockMonster.moveDelayTime;
			newBlockMonster.rotationSpeed = blockMonster.rotationSpeed;
			newBlockMonster.upDownSpeed = blockMonster.upDownSpeed;

			return newBlockMonster;
		}

		//TODO: eventually these should all be static variables in the SunMonster class. For now,
		//we don't have a SunMonster class, so I'm just transferring the info manually. Can't use the
		//monster class because these variables will be different in different types of monsters
		public static SunMonster TransferSunMonsterInformation(SunMonster newSunMonster)
		{
			newSunMonster.speed = sunMonster.speed;
			newSunMonster.animationSpeed = sunMonster.animationSpeed;
			newSunMonster.frameCount = sunMonster.frameCount;
			newSunMonster.moveDistanceLimit = sunMonster.moveDistanceLimit;
			newSunMonster.moveDelayTime = sunMonster.moveDelayTime;
			newSunMonster.rotationSpeed = sunMonster.rotationSpeed;
			newSunMonster.upDownSpeed = sunMonster.upDownSpeed;
			newSunMonster.floatHeight = sunMonster.floatHeight;

			return newSunMonster;
		}

	}
}

