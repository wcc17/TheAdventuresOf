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
        static XmlSerializer xmlSerializer;

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

            //create file
            IsolatedStorageFileStream stream = null;
            using (stream = storageFile.OpenFile(saveFileName, FileMode.Open, FileAccess.ReadWrite))
            {
                SaveGame loadedSaveGame = (SaveGame)xmlSerializer.Deserialize(stream);
                initializeLoadedSave(loadedSaveGame);
            }

            storageFile.Close();
            stream.Dispose();  

            Logger.WriteToConsole("Loaded Game");
        }

        public void OverwriteSave() 
        {
            IsolatedStorageFile storageFile = IsolatedStorageFile.GetUserStoreForApplication();
            if (storageFile.FileExists(saveFileName))
            {
                storageFile.DeleteFile(saveFileName);
            }

            saveGame.SetSerializableValues();

            //create file
            IsolatedStorageFileStream stream = null;
            using (stream = storageFile.CreateFile(saveFileName))
            {
                stream.Seek(0, SeekOrigin.Begin);
                xmlSerializer.Serialize(stream, saveGame);
                stream.SetLength(stream.Position);
            }

            storageFile.Close();
            stream.Dispose();

            Logger.WriteToConsole("Saved game");
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

        public void SetLevelHighScore(int levelNumber, int score) {
            if(score > saveGame.GetLevelHighScoreInt(levelNumber)) {
                saveGame.SetLevelHighScore(levelNumber, score);
                OverwriteSave();
            }
        }

        public bool IsLevelUnlocked(int levelNumber) {
            return saveGame.IsLevelUnlocked(levelNumber);
        }

        /**
         * Can return N/A if level locked
         */
        public String GetLevelHighScoreString(int levelNumber) {
            return saveGame.GetLevelHighScoreString(levelNumber);
        }

        public int GetLevelHighScoreInt(int levelNumber)
        {
            return saveGame.GetLevelHighScoreInt(levelNumber);
        }

        public void ResetSave() {
            saveGame = new SaveGame();
            OverwriteSave();
        }

        private SaveGameManager()
        {
            saveGame = new SaveGame();
            xmlSerializer = new XmlSerializer(typeof(SaveGame));
        }

        public void initializeLoadedSave(SaveGame loadedSave)
        {
            saveGame = loadedSave;
            saveGame.Initialize();
        }
    }
}
