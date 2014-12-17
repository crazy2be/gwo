package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponShotMenu;
   
   public class §_-Su§ extends SimpleButton
   {
      
      public function §_-Su§(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         _loc3_;
         _loc3_;
         this.item_value = param1;
         _loc2_;
         this.§_-b2§.gotoAndStop(param1 + 1);
      }
      
      public var §_-b2§:MovieClip;
      
      private var item_value:int;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!§_-QR§)
         {
            _loc2_;
            (parent as CustomWeaponShotMenu).§try §(this.item_value);
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-QR§)
         {
            gotoAndStop("off");
            buttonMode = false;
            _loc1_;
            _loc1_;
            if(over)
            {
               if(parent != null)
               {
                  (parent as CustomWeaponShotMenu).§_-Fs§(this.item_value,true);
               }
            }
            else if(parent != null)
            {
               (parent as CustomWeaponShotMenu).§_-tn§();
            }
            
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               if(parent != null)
               {
                  _loc1_;
                  _loc1_;
                  (parent as CustomWeaponShotMenu).§_-Fs§(this.item_value);
               }
               gotoAndStop("over");
               _loc1_;
            }
            else
            {
               if(parent != null)
               {
                  (parent as CustomWeaponShotMenu).§_-tn§();
                  _loc2_;
                  _loc2_;
               }
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
