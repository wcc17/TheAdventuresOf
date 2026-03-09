using System;

namespace TheAdventuresOf.DesktopGL
{
    internal static class Program
    {
        [STAThread]
        private static void Main()
        {
            using (var game = new global::TheAdventuresOf.TheAdventuresOf())
            {
                game.Run();
            }
        }
    }
}
