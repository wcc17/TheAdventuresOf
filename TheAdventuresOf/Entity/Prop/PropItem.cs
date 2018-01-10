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
        string name;
        int? cost;

        public PropItem(string name, int? cost = null) : base()
        {
            this.name = name;
            this.cost = cost;
        }
    }
}
