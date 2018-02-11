using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    /** Handles player logic and anything tied to the player **/
    public class PlayerManager
    {
        //TODO: would probably rather load this from XML
        public const int SWORD_LEVEL_LIMIT = 2;
        static PlayerManager instance;

        Player player { get; set; }
        BaseLevel level;
        List<Accessory> accessories;
        int swordLevel = 0;

        public static PlayerManager Instance {
            get {
                if (instance == null) {
                    instance = new PlayerManager();
                }

                return instance;
            }
        }
        private PlayerManager() { }

        /** NOTE: THIS MUST BE CALLED FIRST and manually **/
        public void InitializePlayerManager(BaseLevel level, bool usePlayerSpawnAnimation) {
            this.level = level;

            player = XmlManager.LoadPlayerInformation();
            player.InitializePlayer(level.playerStartX,
                                    level.groundLevel,
                                    AssetManager.Instance.playerTexture.Width / player.frameCount,
                                    AssetManager.Instance.playerTexture.Height,
                                    usePlayerSpawnAnimation);
        }

        public void SetPlayerAccessories(List<Accessory> accessories) {
            this.accessories = accessories;
        }

        public void Update(GameTime gameTime, GameController gameController)
        {
            player.UpdatePlayer(gameTime, gameController);

            foreach(Accessory accessory in accessories) {
                accessory.Update(player.positionVector, player.entityWidth, player.entityHeight, player.rotation, player.moveLeft, player.tintColor);
            }

            if(!player.isSpawning) {
                level.CheckCollisionWithBounds(player);
            }

            CoinManager.Instance.Update(gameTime);
            CoinManager.Instance.CheckCollisionWithLevel(level.leftSideBounds, level.rightSideBounds);
            CoinManager.Instance.CheckItemsCollisionWithPlayer(player.entityBounds);
            HeartManager.Instance.Update(gameTime);
            HeartManager.Instance.CheckCollisionWithLevel(level.leftSideBounds, level.rightSideBounds);
            HeartManager.Instance.CheckItemsCollisionWithPlayer(player.entityBounds);
        }

        public void Draw(SpriteBatch spriteBatch) 
        {
            foreach (Accessory accessory in accessories)
            {
                if(accessory.drawBeforePlayer)
                {
                    accessory.Draw(spriteBatch, player.moveLeft);
                }
            }

            player.Draw(spriteBatch, AssetManager.Instance.playerTexture);

            foreach (Accessory accessory in accessories)
            {
                if(!accessory.drawBeforePlayer)
                {
                    accessory.Draw(spriteBatch, player.moveLeft);
                }
            }
        }

        public Vector2 GetPlayerPosition() 
        {
            return player.positionVector;    
        }

        public float GetPlayerWidth() 
        {
            return player.entityWidth;    
        }

        public Rectangle GetPlayerBounds() {
            return player.entityBounds;
        }

        public int GetSwordLevel() {
            return swordLevel;
        }

        public bool IsMoveLeft() {
            return player.moveLeft;
        }

        public bool IsMoveRight() {
            return player.moveRight;
        }

        public bool IsPlayerJumping()
        {
            return player.isJumping;
        }

        public bool HasHitSwordLevelLimit() {
            return swordLevel >= SWORD_LEVEL_LIMIT;
        }

        public bool IsPlayerDead() {
            return player.isDead;
        }

        public bool IsPlayerDying() {
            return player.isDying;
        }

        public void CheckPlayerCollisionProjectile(Projectile proj) {
            bool projectileDamagedPlayer = false;
            foreach(Accessory accessory in accessories) {
                if (accessory.takesDamage) {
                    projectileDamagedPlayer = accessory.CheckAccessoryCollision(proj.entityBounds);
                    break;
                }
            }

            player.CheckCollisionProjectile(proj, projectileDamagedPlayer);
        }

        public void CheckPlayerCollisionWithMonster(Monster monster) {
            bool accessoryDamagedMonster = false;
            bool monsterDamagedAccessory = false;

            foreach(Accessory accessory in accessories) {
                if(accessory.doesDamage) {
                    accessoryDamagedMonster = accessory.CheckAccessoryCollision(monster.entityBounds);
                } else if(accessory.takesDamage) {
                    monsterDamagedAccessory = accessory.CheckAccessoryCollision(monster.entityBounds);
                }
            }

            player.CheckCollisionMonster(monster, accessoryDamagedMonster, monsterDamagedAccessory);
        }

        public void SetPlayerX(float X)
        {
            player.positionVector.X = X;
            player.UpdateEntityBounds();
        }

        public void LoadPlayerAccessoryAssets(GraphicsDevice graphicsDevice, List<Accessory> playerAccessories) {
            accessories = playerAccessories;

            UpdateSwordAccessoryName();

            LoadAccessoryTextures(graphicsDevice);

            //remove all accessories who don't have a texture before passing to player
            accessories.RemoveAll(accessory => accessory.accessoryTexture == null);
        }

        public void UpdateSwordAccessoryName() 
        {
            //find the sword accessory and append the sword level var to it
            foreach (Accessory accessory in accessories)
            {
                if (accessory.name.Equals("sword"))
                {
                    accessory.name = accessory.name + "_" + swordLevel;
                    break;
                }
            }
        }

        public void LoadAccessoryTextures(GraphicsDevice graphicsDevice) 
        {
            Logger.WriteToConsole("SWORD LEVEL ON LEVEL LOAD: " + swordLevel);

            AssetManager.Instance.LoadPlayerAccessoryAssets(graphicsDevice, accessories, SWORD_LEVEL_LIMIT, swordLevel);
            foreach (Accessory accessory in accessories)
            {
                Texture2D texture = AssetManager.Instance.GetAccessoryTexture(accessory.name);

                if (texture != null)
                {
                    accessory.InitializeTexture(texture);
                }
            }
        }

        /**
         * Called by StoreLevel to upgrade sword
         */
        public void UpgradePlayerSword()
        {
            foreach(Accessory accessory in accessories) {
                if(accessory.name.Equals("sword_" + swordLevel)) {
                    swordLevel++;
                    accessory.name = "sword_" + swordLevel;

                    Texture2D texture = AssetManager.Instance.GetAccessoryTexture(accessory.name);
                    accessory.InitializeTexture(texture);
                    break;
                }
            }
        }

        public void ResetPlayer() {
            swordLevel = 0;
        }
    }
}
