using System;

namespace TheAdventuresOf
{
    public class GameManager
    {
        SpriteBatch spriteBatch;
        Screen screen;
        Level currentLevel = null;

        public GameManager()
        {
            screen = new Screen(GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Width, GraphicsAdapter.DefaultAdapter.CurrentDisplayMode.Height);
            level = new Level();
        }
    }
}
