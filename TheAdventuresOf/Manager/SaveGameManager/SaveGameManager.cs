using System;
using System.IO;
using System.IO.IsolatedStorage;
using System.Xml.Serialization;

namespace TheAdventuresOf
{

    /**
    #if WINDOWS_PHONE
    IsolatedStorageFile dataFile = IsolatedStorageFile.GetUserStoreForApplication();
#else
    IsolatedStorageFile dataFile = IsolatedStorageFile.GetUserStoreForDomain();
#endif
**/

    public class SaveGameManager
    {
        public SaveGame saveGame;

        static SaveGameManager instance;
        static string saveFileName = "game.sav";

        public static SaveGameManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SaveGameManager();
                }
                return instance;
            }
        }

        public void LoadSave()
        {
            IsolatedStorageFile storageFile = IsolatedStorageFile.GetUserStoreForApplication();
            if (!storageFile.FileExists(saveFileName))
            {
                storageFile.Dispose();
                return;
            }

            IsolatedStorageFileStream stream = storageFile.OpenFile(saveFileName, FileMode.Open);
            stream.Position = 0;

            //TODO: instead of bool, create a SaveGame object to save everything in 
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(SaveGame));
            saveGame = (SaveGame)xmlSerializer.Deserialize(stream);

            stream.Close();
            storageFile.Dispose();
        }

        public void OverwriteSave() 
        {
            IsolatedStorageFile storageFile = IsolatedStorageFile.GetUserStoreForApplication();
            if (storageFile.FileExists(saveFileName))
            {
                storageFile.DeleteFile(saveFileName);
            }

            //create file
            IsolatedStorageFileStream stream = storageFile.CreateFile(saveFileName);

            //convert stuff to xml data and put in stream
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(SaveGame));
            xmlSerializer.Serialize(stream, saveGame);

            stream.Close();
            storageFile.Dispose();

            Console.WriteLine("Successfully saved game");
        }

        /**
         * Will unlock a level to play on the chooselevel screen and overwrite the previous save file
         */
        public void SetLevelUnlocked(int levelNumber)
        {
            if(!IsLevelUnlocked(levelNumber)) {
                saveGame.SetLevelUnlocked(levelNumber);
                //TODO: when saving other info (amount of coins or something), should I save somewhere else?
                OverwriteSave();
            }
        }

        public bool IsLevelUnlocked(int levelNumber) {
            return saveGame.IsLevelUnlocked(levelNumber);
        }

        public void ResetSave() {
            saveGame = new SaveGame();
            OverwriteSave();
        }

        private SaveGameManager()
        {
            saveGame = new SaveGame();
        }
    }
}
