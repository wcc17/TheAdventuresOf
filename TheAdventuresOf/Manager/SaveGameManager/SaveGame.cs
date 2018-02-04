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

        //must be public or serialization won't pick them up (and it won't warn)
        public bool level1Unlocked;
        public bool level2Unlocked;
        public bool level3Unlocked;
        public bool level4Unlocked;
        public bool level5Unlocked;

        public void SetLevelUnlocked(int levelNumber) {
            switch(levelNumber) {
                case LEVEL_1:
                    level1Unlocked = true;
                    break;
                case LEVEL_2:
                    level2Unlocked = true;
                    break;
                case LEVEL_3:
                    level3Unlocked = true;
                    break;
                case LEVEL_4:
                    level4Unlocked = true;
                    break;
                case LEVEL_5:
                    level5Unlocked = true;
                    break;
            }
        }

        public bool IsLevelUnlocked(int levelNumber) {
            switch (levelNumber)
            {
                case LEVEL_1:
                    return level1Unlocked;
                case LEVEL_2:
                    return level2Unlocked;
                case LEVEL_3:
                    return level3Unlocked;
                case LEVEL_4:
                    return level4Unlocked;
                case LEVEL_5:
                    return level5Unlocked;
            }

            return false;
        }
    }
}
