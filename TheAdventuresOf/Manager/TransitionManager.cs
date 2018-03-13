using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TheAdventuresOf
{
    public class TransitionManager
    {
        static TransitionManager instance;
        bool isTransitioningIn = true;
        bool isTransitioningOut = false;
        float transitionTextureAlpha = 1.0f;
        float fadeInSpeed = 2.5f;
        float fadeOutSpeed = 2.5f;

        public static TransitionManager Instance {
            get {
                if (instance == null) {
                    instance = new TransitionManager();
                }
                return instance;
            }
        }
        private TransitionManager() { }

        public void Update(GameTime gameTime) {
            if(IsTransitioning()) {
                handleLevelTransition(gameTime);
            }
        }

        void handleLevelTransition(GameTime gameTime) {
            float fadeSpeed = fadeOutSpeed;
            int multiplier = 1;
            if (isTransitioningIn)
            {
                fadeSpeed = fadeInSpeed;
                multiplier = -1;
            }

            float amountToFade = (float)(fadeSpeed * gameTime.ElapsedGameTime.TotalSeconds);
            transitionTextureAlpha += (amountToFade * multiplier);

            if (transitionTextureAlpha < 0 || transitionTextureAlpha > 1)
            {
                if (isTransitioningIn)
                {
                    transitionTextureAlpha = 0;
                }
                else if (isTransitioningOut)
                {
                    transitionTextureAlpha = 1;
                }

                isTransitioningIn = false;
                isTransitioningOut = false;
            }
        }

        public void Draw(SpriteBatch spriteBatch) {
            if (isTransitioningIn || isTransitioningOut) {
                spriteBatch.Draw(AssetManager.Instance.blackBackgroundTexture, new Vector2(0, 0), Color.Black * transitionTextureAlpha);
            }
        }

        public bool IsTransitioning() {
            return (isTransitioningIn || isTransitioningOut);
        }

        public void FadeOut() {
            isTransitioningOut = true;
            transitionTextureAlpha = 0f;
        }

        public void FadeIn() {
            isTransitioningIn = true;
            transitionTextureAlpha = 1.0f;
        }
    }
}
