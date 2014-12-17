package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponEffectMenu;
   
   public class §_-AX§ extends SimpleButton
   {
      
      public function §_-AX§(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc3_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         _loc2_;
         this.item_value = param1;
         _loc3_;
         _loc3_;
         this.§_-9W§.gotoAndStop(param1 + 1);
      }
      
      public var §_-9W§:MovieClip;
      
      private var item_value:int;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!§_-QR§)
         {
            _loc3_;
            (parent as CustomWeaponEffectMenu).§try §(this.item_value);
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-QR§)
         {
            _loc1_;
            gotoAndStop("off");
            _loc2_;
            buttonMode = false;
            if(over)
            {
               if(parent != null)
               {
                  _loc2_;
                  _loc2_;
                  (parent as CustomWeaponEffectMenu).§_-Fs§(this.item_value,true);
               }
            }
            else if(parent != null)
            {
               (parent as CustomWeaponEffectMenu).§_-tn§();
            }
            
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc2_;
               if(parent != null)
               {
                  _loc1_;
                  _loc1_;
                  (parent as CustomWeaponEffectMenu).§_-Fs§(this.item_value);
               }
               gotoAndStop("over");
            }
            else
            {
               if(parent != null)
               {
                  (parent as CustomWeaponEffectMenu).§_-tn§();
                  _loc1_;
               }
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
