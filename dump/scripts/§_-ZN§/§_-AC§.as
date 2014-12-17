package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponPayloadSelectMenu;
   
   public class §_-AC§ extends SimpleButton
   {
      
      public function §_-AC§(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         _loc2_;
         _loc2_;
         this.item_value = param1;
         _loc3_;
         _loc3_;
         this.§_-Jm§.gotoAndStop(param1 + 1);
      }
      
      public var §_-Jm§:MovieClip;
      
      private var item_value:int;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!§_-QR§)
         {
            _loc3_;
            _loc3_;
            (parent as CustomWeaponPayloadSelectMenu).§try §(this.item_value);
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-QR§)
         {
            gotoAndStop("off");
            _loc1_;
            _loc1_;
            buttonMode = false;
            _loc1_;
            if(over)
            {
               _loc2_;
               _loc2_;
               if(parent != null)
               {
                  (parent as CustomWeaponPayloadSelectMenu).§_-Fs§(this.item_value,true);
               }
            }
            else if(parent != null)
            {
               _loc2_;
               (parent as CustomWeaponPayloadSelectMenu).§_-tn§();
            }
            
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(over)
            {
               if(parent != null)
               {
                  _loc1_;
                  (parent as CustomWeaponPayloadSelectMenu).§_-Fs§(this.item_value);
                  _loc2_;
                  _loc2_;
               }
               gotoAndStop("over");
               _loc2_;
               _loc2_;
            }
            else
            {
               if(parent != null)
               {
                  _loc2_;
                  (parent as CustomWeaponPayloadSelectMenu).§_-tn§();
                  _loc1_;
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
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
