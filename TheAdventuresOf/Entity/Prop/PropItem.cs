using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

/**
 * Not the same as Item.cs. This is essentially a prop with a little extra info
 **/
namespace TheAdventuresOf
{
    public class PropItem : Prop
    {
        public string name;
        public int? cost; //may be null if itemCosts is not
        public SortedDictionary<int, int> itemCosts; //may be null if cost is not
        public bool isSoldOut = false;

        public PropItem() { }
    }
}
