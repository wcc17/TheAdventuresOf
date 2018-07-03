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
        private Dictionary<int, SoundEffect> soundEffectDictionary;

        public const int GAME_OVER = 0;
        public const int BIG_COIN_PICKUP = 1;
        public const int HURT = 2;
        public const int JUMP = 3;
        public const int LITTLE_COIN_PICKUP = 4;
        public const int MONSTER_HURT = 5;
        public const int SMALL_HEART_PICKUP = 7;
        public const int BIG_HEART_PICKUP = 8;
        public const int EXPLOSION = 9;
        public const int VICTORY = 10;
        public const int PURCHASE = 11;
        public const int PURCHASE_DENIED = 12;
        public const int VICTORY_TRUMPET = 13;
        public const int SPIKE_MONSTER = 14;
        public const int SWOOP_MONSTER = 15;
        public const int BILE_MONSTER = 16;
        public const int CANNON_MONSTER = 17;

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
            soundEffectDictionary.Add(SMALL_HEART_PICKUP, AssetManager.Instance.smallHeartPickupSoundEffect);
            soundEffectDictionary.Add(BIG_HEART_PICKUP, AssetManager.Instance.bigHeartPickupSoundEffect);
            soundEffectDictionary.Add(EXPLOSION, AssetManager.Instance.explosionSoundEffect);
            soundEffectDictionary.Add(VICTORY, AssetManager.Instance.victorySoundEffect);
            soundEffectDictionary.Add(PURCHASE, AssetManager.Instance.purchaseSoundEffect);
            soundEffectDictionary.Add(PURCHASE_DENIED, AssetManager.Instance.purchaseDeniedSoundEffect);
            soundEffectDictionary.Add(VICTORY_TRUMPET, AssetManager.Instance.victoryTrumpetSoundEffect);
            soundEffectDictionary.Add(SPIKE_MONSTER, AssetManager.Instance.spikeMonsterSoundEffect);
            soundEffectDictionary.Add(SWOOP_MONSTER, AssetManager.Instance.swoopMonsterSoundEffect);
            soundEffectDictionary.Add(BILE_MONSTER, AssetManager.Instance.bileMonsterSoundEffect);
            soundEffectDictionary.Add(CANNON_MONSTER, AssetManager.Instance.cannonMonsterSoundEffect);

            SoundEffect.MasterVolume = 0.6f;
        }

        public void PlaySoundEffect(int soundEffectIndex) {
			soundEffectDictionary[soundEffectIndex].Play();
        }
    }
}
