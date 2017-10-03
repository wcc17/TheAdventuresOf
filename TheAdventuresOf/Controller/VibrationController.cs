using System;
using System.Collections.Generic;
using System.Text;

#if __IOS__ || __ANDROID__
//using UIKit;
#endif

namespace TheAdventuresOf
{
    public class VibrationController
    {
        //#if __IOS__ || __ANDROID__
        ////for slight vibrations when buttons are pressed
        //public UIImpactFeedbackGenerator impactGenerator;
        //#endif

        public VibrationController()
        {
            //#if __IOS__ || __ANDROID__
            //impactGenerator = new UIImpactFeedbackGenerator(UIImpactFeedbackStyle.Light);
            //impactGenerator.Prepare();
            //#endif
        }

        public void ImpactOccured()
        {
            //#if __IOS__ || __ANDROID__
            //impactGenerator.ImpactOccurred();
            //#endif
        }
    }
}
