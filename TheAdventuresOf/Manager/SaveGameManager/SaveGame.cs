using System;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    [Serializable()]
    public class SaveGame
    {
        //explicitly saying to not serialize in case these have to be public one day
        [NonSerialized] const int LEVEL_1 = 1;
        [NonSerialized] const int LEVEL_2 = 2;
        [NonSerialized] const int LEVEL_3 = 3;
        [NonSerialized] const int LEVEL_4 = 4;
        [NonSerialized] const int LEVEL_5 = 5;

        [NonSerialized] const bool LOCKED = false;
        [NonSerialized] const bool UNLOCKED = true;

        [NonSerialized] Dictionary<int, bool> levelUnlockStatus = new Dictionary<int, bool>();
        [NonSerialized] Dictionary<int, int> levelHighScores = new Dictionary<int, int>();

        //must be public or serialization won't pick them up (and it won't warn)
        public bool level1Unlocked;
        public bool level2Unlocked;
        public bool level3Unlocked;
        public bool level4Unlocked;
        public bool level5Unlocked;

        public int level1HighScore;
        public int level2HighScore;
        public int level3HighScore;
        public int level4HighScore;
        public int level5HighScore;

        public SaveGame() {
            Console.WriteLine("SaveGame Constructor called");
            levelUnlockStatus.Add(LEVEL_1, UNLOCKED);
            levelUnlockStatus.Add(LEVEL_2, LOCKED);
            levelUnlockStatus.Add(LEVEL_3, LOCKED);
            levelUnlockStatus.Add(LEVEL_4, LOCKED);
            levelUnlockStatus.Add(LEVEL_5, LOCKED);

            levelHighScores.Add(LEVEL_1, 0);
            levelHighScores.Add(LEVEL_2, 0);
            levelHighScores.Add(LEVEL_3, 0);
            levelHighScores.Add(LEVEL_4, 0);
            levelHighScores.Add(LEVEL_5, 0);

            //lazy way of doing it, letting the above code run and then overwriting the results here oh well
            handleDebug();
        }

        public void Initialize() {
            Console.WriteLine("SaveGame Initialize called");
            levelUnlockStatus[LEVEL_1] = level1Unlocked;
            levelUnlockStatus[LEVEL_2] = level2Unlocked;
            levelUnlockStatus[LEVEL_3] = level3Unlocked;
            levelUnlockStatus[LEVEL_4] = level4Unlocked;
            levelUnlockStatus[LEVEL_5] = level5Unlocked;

            levelHighScores[LEVEL_1] = level1HighScore;
            levelHighScores[LEVEL_2] = level2HighScore;
            levelHighScores[LEVEL_3] = level3HighScore;
            levelHighScores[LEVEL_4] = level4HighScore;
            levelHighScores[LEVEL_5] = level5HighScore;

            //lazy way of doing it, letting the above code run and then overwriting the results here oh well
            handleDebug();
        }

        void handleDebug() {
            if (TheAdventuresOf.unlockAllLevels)
            {
                levelUnlockStatus[LEVEL_1] = UNLOCKED;
                levelUnlockStatus[LEVEL_2] = UNLOCKED;
                levelUnlockStatus[LEVEL_3] = UNLOCKED;
                levelUnlockStatus[LEVEL_4] = UNLOCKED;
                levelUnlockStatus[LEVEL_5] = UNLOCKED;
            }
        }

        public void SetLevelUnlocked(int levelNumber) {
            levelUnlockStatus[levelNumber] = UNLOCKED;
        }

        public bool IsLevelUnlocked(int levelNumber) {
            if(levelUnlockStatus.ContainsKey(levelNumber)) {
				return levelUnlockStatus[levelNumber];
            } else {
                levelUnlockStatus.Add(levelNumber, LOCKED);
                return LOCKED;
            }
        }

        public void SetLevelHighScore(int levelNumber, int score) {
            levelHighScores[levelNumber] = score;
        }

        public String GetLevelHighScoreString(int levelNumber) {
            if(IsLevelUnlocked(levelNumber)) {
                return GetLevelHighScoreInt(levelNumber).ToString();
            }

            return "N/A";
        }

        public int GetLevelHighScoreInt(int levelNumber)
        {
            if(levelHighScores.ContainsKey(levelNumber)) {
				return levelHighScores[levelNumber];
            } else {
                levelHighScores.Add(levelNumber, 0);
                return 0;
            }
        }

        public void SetSerializableValues() {
            level1Unlocked = levelUnlockStatus[LEVEL_1];
            level2Unlocked = levelUnlockStatus[LEVEL_2];
            level3Unlocked = levelUnlockStatus[LEVEL_3];
            level4Unlocked = levelUnlockStatus[LEVEL_4];
            level5Unlocked = levelUnlockStatus[LEVEL_5];

            level1HighScore = levelHighScores[LEVEL_1];
            level2HighScore = levelHighScores[LEVEL_2];
            level3HighScore = levelHighScores[LEVEL_3];
            level4HighScore = levelHighScores[LEVEL_4];
            level5HighScore = levelHighScores[LEVEL_5];
        }
    }
}
