using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace Microsoft.Xna.Framework.Graphics
{
    internal static class SpriteBatchCompatExtensions
    {
        // The original codebase used old MonoGame/XNA-style optional Draw parameters.
        // This shim preserves those call sites on modern MonoGame.
        public static void Draw(
            this SpriteBatch spriteBatch,
            Texture2D texture,
            Vector2 position,
            Rectangle? sourceRectangle = null,
            Color? color = null,
            float rotation = 0f,
            Vector2? origin = null,
            float scale = 1f,
            SpriteEffects effects = SpriteEffects.None,
            float layerDepth = 0f)
        {
            spriteBatch.Draw(
                texture,
                position,
                sourceRectangle,
                color ?? Color.White,
                rotation,
                origin ?? Vector2.Zero,
                scale,
                effects,
                layerDepth);
        }
    }
}
