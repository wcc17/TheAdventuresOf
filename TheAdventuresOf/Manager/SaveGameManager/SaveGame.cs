using System;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    [Serializable()]
    public class SaveGame
    {
        SortedDictionary<int, bool> chooseLevelsUnlocked = new SortedDictionary<int, bool>();

        public SaveGame() {
            //unlock first level
            chooseLevelsUnlocked.Add(1, true);
    
            //starting at level 2, lock the rest
            for (int i = 2; i <= GameManager.levelNumberLimit; i++) {
                chooseLevelsUnlocked.Add(i, false);
            }
        }

        public void SetLevelUnlocked(int levelNumber) {
            chooseLevelsUnlocked[levelNumber] = true;
        }

        public bool IsLevelUnlocked(int levelNumber) {
            return chooseLevelsUnlocked[levelNumber];
        }
    }
}
