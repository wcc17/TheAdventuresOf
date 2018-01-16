﻿using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace TheAdventuresOf
{
    public class StoreLevel : BaseLevel
    {
        //these must match whats in SpecialLevelInformation
        public const string HEART_PROP_ITEM = "Health Refill";
        public const string SHIELD_PROP_ITEM = "Shield Refill";
        public const string SWORD_PROP_ITEM = "Sword Upgrade";
        public const string SOLD_OUT = "Sold Out!";

        public static string storeLevelCharText;
        public static SortedDictionary<int, PropItem> storeLevelPropItems;

        //TODO: im not sure if these should be set here or not. it doesn't make a ton of sense for xml loading either though
        //TODO: especially groundOffset could be a fraction of the screen height instead of hard coded
        int textXOffset = 100;
        int textYOffset = 50;
        int numberOfSmallBoxes = 3;
        float groundOffset = ScreenManager.FULL_SCREEN_HEIGHT * 0.018f; //so that the lines of the boxes don't perfectly line up with the lines of characters, etc
        float smallPropYOffset = ScreenManager.FULL_SCREEN_HEIGHT * 0.15f; //offset the items x% of the screen height from the boxes
        float costYOffset = ScreenManager.FULL_SCREEN_HEIGHT * 0.13f;
        float coinXOffset = ScreenManager.FULL_SCREEN_WIDTH * 0.035f;
        float soldOutTextXOffset = ScreenManager.FULL_SCREEN_WIDTH * 0.025f;
        bool shouldDrawCost = false;
        int costToDraw = 0;
        int costTextIndex = 543; //just a random number to ensure this text is unique. TODO: if i start doing this more it should be loaded from XML
        int activePropItemIndex = -1;
        Vector2 costPositionVector = new Vector2();
        Vector2 coinPositionVector = new Vector2();
        List<Prop> smallBoxProps = new List<Prop>();
        Prop largeBoxProp;
        Prop storeLevelCharacterProp;
        Texture2D coinTexture = AssetManager.Instance.storeLevelCoinTexture;

        public StoreLevel(Texture2D levelTexture) : base(levelTexture: levelTexture) { }

        public override void InitializeLevel(bool usePlayerSpawnAnimation)
        {
            base.InitializeLevel(usePlayerSpawnAnimation);
            initializeBoxPositions();
            initializeStoreLevelCharacter();
            initializeStoreLevelPropItems();

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

            //draw prop items
            drawPropItems(spriteBatch);

            //draw cost and coin texture
            drawCost(spriteBatch);

            //draw other things that level should be drawing (player, health, etc)
            DrawWithoutLevel(spriteBatch);
        }

        public override void Update(GameTime gameTime, GameController gameController)
        {
            base.Update(gameTime, gameController);

            updatePropItem();
            checkPlayerPurchase();

            if (PlayerManager.Instance.GetPlayerPosition().X > rightBoundWidth)
            {
                TextManager.Instance.RemoveAllText();
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
            initializeLargeBox(boxX, boxY, largeBoxTexture);
        }

        void initializeLargeBox(float boxX, float boxY, Texture2D largeBoxTexture)
        {
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

        void initializeStoreLevelPropItems()
        {
            foreach(PropItem propItem in storeLevelPropItems.Values)
            {
                switch(propItem.name)
                {
                    case HEART_PROP_ITEM:
                        propItem.texture = AssetManager.Instance.storeLevelHeartTexture;
                        setPropItemPosition(propItem, 0);
                        break;
                    case SHIELD_PROP_ITEM:
                        propItem.texture = AssetManager.Instance.storeLevelShieldTexture;
                        setPropItemPosition(propItem, 1);
                        break;
                    case SWORD_PROP_ITEM:
                        propItem.texture = AssetManager.Instance.storeLevelSwordTexture;
                        setPropItemPosition(propItem, 2);
                        break;
                }
            }
        }

        void setPropItemPosition(PropItem propItem, int smallBoxIndex)
        {
            float propX = (smallBoxProps[smallBoxIndex].positionVector.X) 
                + (smallBoxProps[smallBoxIndex].bounds.Width / 2) 
                - (propItem.texture.Width / 2);
            float propY = smallBoxProps[smallBoxIndex].positionVector.Y 
                - smallPropYOffset
                - propItem.texture.Height;

            propItem.positionVector = new Vector2(propX, propY);
        }

        void updatePropItem()
        {
            shouldDrawCost = false;

            for(int i = 0; i < smallBoxProps.Count; i++)
            {
                if(smallBoxProps[i].CheckCollision(PlayerManager.Instance.GetPlayerBounds()))
                {
                    int? cost = storeLevelPropItems[i].cost;
                    if(cost == null)
                    {
                        //handle the sword upgrade stuff
                    } else
                    {
                        updateCostAndCoinPositions((int)cost, i);
                    }
                }
            }

            if(!shouldDrawCost)
            {
                TextManager.Instance.RemoveText(costTextIndex);
                shouldDrawCost = false;
                activePropItemIndex = -1;
            }
            else if(!storeLevelPropItems[activePropItemIndex].isSoldOut)
            {
                TextManager.Instance.AddOrUpdateIndexedText(costPositionVector.X, costPositionVector.Y, "x" + costToDraw.ToString(), costTextIndex);
            }
            else if(storeLevelPropItems[activePropItemIndex].isSoldOut)
            {
                //again, the 200 is just getting a random index to store text at so nothing else bothers it
                TextManager.Instance.AddOrUpdateIndexedText(costPositionVector.X - soldOutTextXOffset, costPositionVector.Y, SOLD_OUT, activePropItemIndex*200);
            }
        }

        void updateCostAndCoinPositions(int cost, int index)
        {
            shouldDrawCost = true;
            costToDraw = cost;

            costPositionVector.X = (smallBoxProps[index].positionVector.X)
                + (smallBoxProps[index].bounds.Width / 2);
            costPositionVector.Y = smallBoxProps[index].positionVector.Y
                - costYOffset;

            coinPositionVector.X = costPositionVector.X - coinXOffset;
            coinPositionVector.Y = costPositionVector.Y;

            activePropItemIndex = index;
        }

        void checkPlayerPurchase()
        {
            if(activePropItemIndex > -1)
            {
                //TODO: check if item is sold out before checking if player is jumping
                //TODO: make sure we're buying the item we expect to be buying
                //its possible for this if to be hit again after the item is sold while the player is still jumping, so be sure its not already sold out
                if(PlayerManager.Instance.IsPlayerJumping() && !storeLevelPropItems[activePropItemIndex].isSoldOut)
                {
                    purchaseItem();
                }
            }
        }

        void purchaseItem()
        {
            if(CoinManager.Instance.GetCoinTotal() >= storeLevelPropItems[activePropItemIndex].cost)
            {
                int? cost = storeLevelPropItems[activePropItemIndex].cost;
                if(cost != null)
                {
                    CoinManager.Instance.SubtractFromCoins((int)cost);
                } else
                {
                    //figure out the sword upgrade stuff
                }

                storeLevelPropItems[activePropItemIndex].isSoldOut = true;
                TextManager.Instance.RemoveText(costTextIndex);

                applyPurchasedItem();
            }
        }

        void applyPurchasedItem()
        {
            switch(storeLevelPropItems[activePropItemIndex].name)
            {
                case HEART_PROP_ITEM:
                    HealthShieldManager.Instance.RestoreHealthToMax();
                    break;
                case SHIELD_PROP_ITEM:
                    HealthShieldManager.Instance.RestoreShieldToMax();
                    break;
                case SWORD_PROP_ITEM:
                    //TODO: implement sword upgrades
                    break;
            }
        }

        void drawCost(SpriteBatch spriteBatch)
        {
            if(shouldDrawCost)
            {
                if(!storeLevelPropItems[activePropItemIndex].isSoldOut)
                {
                    spriteBatch.Draw(coinTexture, coinPositionVector);
                }
            }
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

        void drawPropItems(SpriteBatch spriteBatch)
        {
            foreach(PropItem propItem in storeLevelPropItems.Values)
            {
                if(!propItem.isSoldOut)
                {
                    propItem.Draw(spriteBatch);
                }
            }
        }

        public override void CheckPlayerCollisionWithMonster(Monster monster) { }

        public override void CheckPlayerCollisionProjectile(Projectile proj) { }
    }
}