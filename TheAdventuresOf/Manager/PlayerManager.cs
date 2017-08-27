using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class PlayerManager
    {
        public static Player player { get; set; }
        BaseLevel level;

        public PlayerManager(BaseLevel level)
        {
            this.level = level;

            player = XmlImporter.LoadPlayerInformation();
            //TODO: startX should be loaded in level xml
            player.InitializePlayer(280f,
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
    }
}
