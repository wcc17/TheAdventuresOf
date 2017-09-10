using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class PlayerManager
    {
        private static PlayerManager instance;

        private static Player player { get; set; }
        BaseLevel level;

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
        public void InitializePlayerManager(BaseLevel level) {
            this.level = level;

            player = XmlImporter.LoadPlayerInformation();
            player.InitializePlayer(level.playerStartX,
                                    level.groundLevel,
                                    AssetManager.Instance.playerTexture.Width / player.frameCount,
                                    AssetManager.Instance.playerTexture.Height);

        }

        public void Update(GameTime gameTime, GameController gameController)
        {
            player.UpdatePlayer(gameTime, gameController);
            level.CheckCollisionWithBounds(player);
        }

        public void Draw(SpriteBatch spriteBatch) 
        {
            player.Draw(spriteBatch, AssetManager.Instance.playerTexture);
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
    }
}
