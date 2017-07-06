using System;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework;

namespace TheAdventuresOf
{
    public class PlayerManager
    {
        public static Player player { get; set; }
        Level level;

        public PlayerManager(Level level)
        {
            this.level = level;

            player = XmlImporter.LoadPlayerInformation();
            player.InitializePlayer(200f,
                                    level.groundLevel,
                                    AssetManager.Instance.playerTexture.Width / player.frameCount,
                                    AssetManager.Instance.playerTexture.Height);

        }

        public void Update(GameTime gameTime)
        {
            player.Update(gameTime, Controller.isButtonPressed);
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
