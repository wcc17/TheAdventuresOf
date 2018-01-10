using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class StoreLevel : BaseLevel
    {
        public static string storeLevelCharText;

        //TODO: im not sure if these should be set here or not. it doesn't make a ton of sense for xml loading either though
        int groundOffset = 20; //so that the lines of the boxes don't perfectly line up with the lines of characters, etc
        int textXOffset = 100;
        int textYOffset = 50;
        int numberOfSmallBoxes = 3;

        List<Prop> smallBoxProps = new List<Prop>();
        Prop largeBoxProp;
        Prop storeLevelCharacterProp;

        public StoreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel(bool usePlayerSpawnAnimation)
        {
            base.InitializeLevel(usePlayerSpawnAnimation);
            initializeBoxPositions();
            initializeStoreLevelCharacter();

            //initialize character text above storelevel character
            TextManager.Instance.AddOrUpdateIndexedText(storeLevelCharacterProp.positionVector.X - textXOffset,
                storeLevelCharacterProp.positionVector.Y - textYOffset, 
                storeLevelCharText, 
                1); //item text is using 0 for index
        }

        public override void Draw(SpriteBatch spriteBatch)
        {
            //draw level manually
            spriteBatch.Draw(levelTexture, levelPositionVector);

            //draw props
            drawProps(spriteBatch);

            //draw other things that level should be drawing (player, health, etc)
            DrawWithoutLevel(spriteBatch);
        }

        public override void Update(GameTime gameTime, GameController gameController)
        {
            base.Update(gameTime, gameController);

            manageStoreText();

            if (PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth)
            {
                nextLevel = true;
            }
        }

        public override void CheckCollisionWithBounds(Entity entity)
        {
            if (leftSideBounds.Intersects(entity.entityBounds))
            {
                entity.HandleLevelBoundCollision(Entity.LEFT, leftBoundWidth);
            }
        }

        void initializeBoxPositions()
        {
            Texture2D smallBoxTexture = AssetManager.Instance.storeLevelSmallBoxTexture;
            Texture2D largeBoxTexture = AssetManager.Instance.storeLevelBigBoxTexture;

            //split the room up so the boxes are evenly spaced, with more free space at the beginning and end of the level
            float roomWidth = (ScreenManager.FULL_SCREEN_WIDTH) 
                - (smallBoxTexture.Width* numberOfSmallBoxes) 
                - (largeBoxTexture.Width);
            float largeSpace = (3f / 9f) * roomWidth; //each large space is 1/3 of the room
            float smallSpace = (1f / 9f) * roomWidth; //each small space is 1/9 of the room

            //place the small boxes first
            float boxX = largeSpace;
            float boxY = groundLevel - smallBoxTexture.Height + groundOffset;
            for(int i = 1; i <= numberOfSmallBoxes; i++)
            {
                Vector2 propPositionVector = new Vector2(boxX, boxY);
                Rectangle propBounds = new Rectangle((int)boxX, (int)boxY, smallBoxTexture.Width, smallBoxTexture.Height);
                smallBoxProps.Add(new Prop(propPositionVector, propBounds, smallBoxTexture));

                boxX = largeSpace + (smallBoxTexture.Width * i) + (smallSpace * i);
            }

            //set up the single large box
            boxY = groundLevel - largeBoxTexture.Height + groundOffset;
            Vector2 largeBoxPropPositionVector = new Vector2(boxX, boxY);
            Rectangle largeBoxPropBounds = new Rectangle((int)boxX, (int)boxY, largeBoxTexture.Width, largeBoxTexture.Height);
            largeBoxProp = new Prop(largeBoxPropPositionVector, largeBoxPropBounds, largeBoxTexture);
        }

        void initializeStoreLevelCharacter()
        {
            Texture2D storeLevelCharacterTexture = AssetManager.Instance.storeLevelCharacterTexture;

            //store level character will stand in the middle of the large box
            float charX = largeBoxProp.positionVector.X 
                + ((largeBoxProp.bounds.Width / 2) 
                - (storeLevelCharacterTexture.Width / 2));
            float charY = largeBoxProp.positionVector.Y - storeLevelCharacterTexture.Height + groundOffset;

            Vector2 storeLevelCharacterPositionVector = new Vector2(charX, charY);
            Rectangle storeLevelCharacterBounds = new Rectangle((int)charX, (int)charY, storeLevelCharacterTexture.Width, storeLevelCharacterTexture.Height);

            storeLevelCharacterProp = new Prop(storeLevelCharacterPositionVector, storeLevelCharacterBounds, storeLevelCharacterTexture);
        }

        void drawProps(SpriteBatch spriteBatch)
        {
            foreach(Prop prop in smallBoxProps)
            {
                prop.Draw(spriteBatch);
            }

            largeBoxProp.Draw(spriteBatch);
            storeLevelCharacterProp.Draw(spriteBatch);
        }

        void manageStoreText()
        {
            //there can only be as many items as there are small boxes
            Rectangle playerBounds = PlayerManager.Instance.GetPlayerBounds();

            for(int i = 0; i < 2; i++)
            {
                if (smallBoxProps[i].CheckCollision(playerBounds))
                {
                    //show price for item
                }
            }

            //foreach (Text text in texts) {
            //    if(text.startX <= playerX && text.endX > playerX) {
            //        TextManager.Instance.AddOrUpdateIndexedText(text);
            //        break;
            //    }
            //}
        }

        public override void CheckPlayerCollisionWithMonster(Monster monster) { }

        public override void CheckPlayerCollisionProjectile(Projectile proj) { }
    }
}