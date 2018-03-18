using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework.Audio;

namespace TheAdventuresOf
{
    //weird error where MediaPlayer is recognized as namespace rather than class
    using MediaPlayer = Microsoft.Xna.Framework.Media.MediaPlayer;

    public class SoundManager
    {
		private static SoundManager instance;
        private Dictionary<int, Microsoft.Xna.Framework.Audio.SoundEffect> soundEffectDictionary;

        public const int GAME_OVER = 0;
        public const int BIG_COIN_PICKUP = 1;
        public const int HURT = 2;
        public const int JUMP = 3;
        public const int LITTLE_COIN_PICKUP = 4;
        public const int MONSTER_HURT = 5;
        public const int SELECT = 6;
        public const int SMALL_HEART_PICKUP = 7;

        public static SoundManager Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SoundManager();
                }
                return instance;
            }
        }
        private SoundManager() { }

        public void InitializeDictionary() {
            soundEffectDictionary = new Dictionary<int, SoundEffect>();
            soundEffectDictionary.Add(GAME_OVER, AssetManager.Instance.gameOverSoundEffect);
            soundEffectDictionary.Add(BIG_COIN_PICKUP, AssetManager.Instance.bigCoinPickupSoundEffect);
            soundEffectDictionary.Add(HURT, AssetManager.Instance.hurtSoundEffect);
            soundEffectDictionary.Add(JUMP, AssetManager.Instance.jumpSoundEffect);
            soundEffectDictionary.Add(LITTLE_COIN_PICKUP, AssetManager.Instance.littleCoinPickupSoundEffect);
            soundEffectDictionary.Add(MONSTER_HURT, AssetManager.Instance.monsterHurtSoundEffect);
            soundEffectDictionary.Add(SELECT, AssetManager.Instance.selectSoundEffect);
            soundEffectDictionary.Add(SMALL_HEART_PICKUP, AssetManager.Instance.smallHeartPickupSoundEffect);
        }

        public void PlaySoundEffect(int soundEffectIndex) {
            soundEffectDictionary[soundEffectIndex].Play();
        }
    }
}
