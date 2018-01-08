using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Text;

namespace TheAdventuresOf
{
    public class ItemManager
    {
        public float groundLevel;
        public List<Item> itemsToRemove; //so I'm not instantiating a new list every frame
        public List<Item> items;

        public virtual void Initialize()
        {
            items = new List<Item>();
            itemsToRemove = new List<Item>();
        }

        public virtual void CheckItemsCollisionWithPlayer(Rectangle playerBounds)
        {
            foreach (Item item in items)
            {
                if (!item.itemPickedUp && item.bounds.Intersects(playerBounds))
                {
                    HandleItemPickedUp(item);
                }
            }
        }

        //TODO: look here if performance starts to get bad
        public virtual void CheckCollisionWithLevel(Rectangle levelBoundsLeft, Rectangle levelBoundsRight)
        {
            foreach (Item item in items)
            {
                if (item.bounds.Intersects(levelBoundsLeft))
                {
                    item.positionVector.X = levelBoundsLeft.Width;
                    item.bounds.X = (int)item.positionVector.X;
                }
                else if (item.bounds.Intersects(levelBoundsRight))
                {
                    item.positionVector.X = ScreenManager.FULL_SCREEN_WIDTH
                        - levelBoundsRight.Width
                        - item.bounds.Width;
                    item.bounds.X = (int)item.positionVector.X;
                }
            }
        }

        public virtual void Update(GameTime gameTime)
        {
            foreach (Item item in items)
            {
                item.Update(gameTime);

                if (!item.isActive)
                {
                    itemsToRemove.Add(item);
                }
            }

            items.RemoveAll(i => itemsToRemove.Contains(i));
            itemsToRemove.Clear();
        }

        public virtual void HandleItemPickedUp(Item item)
        {
            item.positionVector.Y = PlayerManager.Instance.GetPlayerPosition().Y;
            item.HandleItemPickedUp();
        }

        public virtual void Draw(SpriteBatch spriteBatch)
        {
            foreach (Item item in items)
            {
                item.Draw(spriteBatch);
            }
        }

        public void UpdateGroundLevel(float newGroundLevel)
        {
            this.groundLevel = newGroundLevel;
        }

        public void RemoveAllItems()
        {
            itemsToRemove.Clear();
            items.Clear();
        }
        
        public virtual void AddItem(float x, float y) { }
    }
}
