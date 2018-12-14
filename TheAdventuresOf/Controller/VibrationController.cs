using System;
using System.Collections.Generic;
using System.Text;

#if __IOS__
using UIKit;
using AudioToolbox;
#endif

namespace TheAdventuresOf
{
    public class VibrationController
    {
        #if __IOS__
        //for slight vibrations when buttons are pressed
        public UIImpactFeedbackGenerator impactGenerator;
        #endif

        public VibrationController()
        {
            #if __IOS__
            impactGenerator = new UIImpactFeedbackGenerator(UIImpactFeedbackStyle.Light);
            impactGenerator.Prepare();
            #endif
        }

        public void ImpactOccured()
        {
            #if __IOS__
            impactGenerator.ImpactOccurred();
            #endif
        }

        public static void Vibrate() {
            #if __IOS__
            AudioToolbox.SystemSound.Vibrate.PlaySystemSound();
            #endif
        }
    }
}
