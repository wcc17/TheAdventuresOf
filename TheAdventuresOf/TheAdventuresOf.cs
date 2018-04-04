using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TheAdventuresOf
{
	/// <summary>
	/// This is the main type for your game.
	/// </summary>
	public class TheAdventuresOf : Game
	{
        public static bool showMouse;
        public static ContentManager contentManager;

        public static bool showDebug = true; //set to false to turn everything else off
        public static bool giveCoins = true;
        public static bool quickVictory = true;
        public static bool lowHealth = false;
        public static bool straightToStore = false;
        public static bool skipPreLevel = false; //TODO; will crash after beating a level
        public static bool startWithLevel2 = false;
        public static bool startWithLevel3 = false;
        public static bool startWithLevel4 = false;
        public static bool startWithLevel5 = false;
        public static bool unlockAllLevels = true;
        public static bool isInvincible = false;
        public static bool giveMaxSword = false;
        public static bool giveShield = false;

        GraphicsDeviceManager graphics;
        GameManager gameManager;

		public TheAdventuresOf()
		{
			//despite the annoying xamarin warning that graphics isn't used, this MUST be instantiated
			graphics = new GraphicsDeviceManager(this);

            contentManager = Content;
            contentManager.RootDirectory = "Content";

            XmlManager.GetXMLInformation();

#if !__IOS__ && !__TVOS__ && !__ANDROID__
            //TODO: keyboard is really weird in fullscreen mode
            //graphics.IsFullScreen = true;
#endif
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
		{
            handleDebugFlags();
            SaveGameManager.Instance.LoadSave();
            gameManager = new GameManager(this.GraphicsDevice);
            gameManager = XmlManager.LoadGameManagerInformation(gameManager);
            gameManager.Initialize();
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
            gameManager.LoadContent();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
            // For Mobile devices, this logic will close the Game when the Back button is pressed
            // Exit() is obsolete on iOS
#if !__IOS__ && !__TVOS__
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				Exit();
#endif
            gameManager.Update(gameTime, this.IsActive);

#if !__IOS__ && !__TVOS__ && !__ANDROID__
            IsMouseVisible = showMouse;
#endif

            base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
            graphics.GraphicsDevice.Clear(Color.Black);

            gameManager.Draw(gameTime);

			base.Draw(gameTime);
		}

        void handleDebugFlags() {
            if (!showDebug)
            {
                giveCoins = false;
                quickVictory = false;
                lowHealth = false;
                straightToStore = false;
                skipPreLevel = false;
                startWithLevel2 = false;
                startWithLevel3 = false;
                startWithLevel4 = false;
                startWithLevel5 = false;
                unlockAllLevels = false;
                isInvincible = false;
                giveMaxSword = false;
                giveShield = false;
            }
        }
	}
}

