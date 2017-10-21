using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    /** Handles player logic and anything tied to the player **/
    public class PlayerManager
    {
        private static PlayerManager instance;

        private static Player player { get; set; }
        BaseLevel level;

        List<Accessory> accessories;

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
                accessory.Update(player.positionVector, player.entityWidth, player.entityHeight, player.rotation, player.moveLeft, player.transparency);
            }

            if(!player.isSpawning) {
                level.CheckCollisionWithBounds(player);
            }

            CoinManager.Instance.Update(gameTime);
            CoinManager.Instance.CheckCollisionWithLevel(level.leftSideBounds, level.rightSideBounds);
            CoinManager.Instance.CheckCollisionWithPlayer(player.entityBounds);
        }

        public void Draw(SpriteBatch spriteBatch) 
        {
            CoinManager.Instance.Draw(spriteBatch);
            player.Draw(spriteBatch, AssetManager.Instance.playerTexture);

            foreach (Accessory accessory in accessories) {
                accessory.Draw(spriteBatch, player.moveLeft);
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
    }
}
