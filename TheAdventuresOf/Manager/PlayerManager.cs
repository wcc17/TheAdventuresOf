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

            accessories = new List<Accessory>();

        }

        public void Update(GameTime gameTime, GameController gameController)
        {
            player.UpdatePlayer(gameTime, gameController);

            foreach(Accessory accessory in accessories) {
                accessory.Update(gameTime, player.positionVector);
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
                accessory.Draw(spriteBatch);
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
            player.CheckCollisionProjectile(proj);
        }

        public void CheckPlayerCollisionWithMonster(Monster monster) {
            player.CheckCollisionMonster(monster);
        }

        public void SetPlayerX(float X)
        {
            player.positionVector.X = X;
            player.UpdateEntityBounds();
        }

        //TODO: this will probably be removed when accessories are all the way into the game
        public void AddAccessory(Texture2D accessoryTexture) {
            Accessory accessory = new Accessory(accessoryTexture, player.positionVector);
            accessories.Add(accessory);
        }
    }
}
