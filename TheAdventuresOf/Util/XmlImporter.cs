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

		public static Monster blockMonster;

		public static void GetXMLInformation()
		{
			Stream characterDocumentStream = TitleContainer.OpenStream("Content/XML/CharacterInformation.xml");
			Stream levelDocumentStream = TitleContainer.OpenStream("Content/XML/LevelInformation.xml");

			characterDocument = XDocument.Load(characterDocumentStream);
			levelDocument = XDocument.Load(levelDocumentStream);

			//keep this around to use the info for new instances of monsters
			blockMonster = new Monster();
		}

		public static void LoadLevelInformation(Level level)
		{
			XElement levelElement = levelDocument.Element("Level");
			XElement levelOneElement = levelElement.Element("LevelOne");

			level.groundLevel = (float)levelOneElement.Element("GroundLevel");
			level.leftBoundWidth = (int)levelOneElement.Element("LeftBoundWidth");
			level.rightBoundWidth = (int)levelOneElement.Element("RightBoundWidth");
			level.monsterLimit = (int)levelOneElement.Element("MonsterLimit");
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

		//TODO: eventually these should all be static variables in the BlockMonster class. For now,
		//we don't have a BlockMonster class, so I'm just transferring the info manually. Can't use the
		//monster class because these variables will be different in different types of monsters
		public static Monster TransferBlockMonsterInformation(Monster newBlockMonster)
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

	}
}

