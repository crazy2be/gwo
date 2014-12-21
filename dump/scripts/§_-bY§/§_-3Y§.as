package §_-bY§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponShotMenu;
   
   public class §_-3Y§ extends SimpleButton
   {
      
      public function §_-3Y§(param1:int)
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
         this.§_-7-§.gotoAndStop(param1 + 1);
      }
      
      public var §_-7-§:MovieClip;
      
      private var item_value:int;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!§_-L4§)
         {
            _loc3_;
            (parent as CustomWeaponShotMenu).§_-cD§(this.item_value);
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-L4§)
         {
            gotoAndStop("off");
            buttonMode = false;
            if(over)
            {
               _loc1_;
               if(parent != null)
               {
                  (parent as CustomWeaponShotMenu).§_-xX§(this.item_value,true);
               }
            }
            else if(parent != null)
            {
               (parent as CustomWeaponShotMenu).§_-QL§();
               _loc1_;
               _loc1_;
            }
            
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc2_;
               _loc2_;
               if(parent != null)
               {
                  _loc1_;
                  _loc1_;
                  (parent as CustomWeaponShotMenu).§_-xX§(this.item_value);
               }
               gotoAndStop("over");
            }
            else
            {
               if(parent != null)
               {
                  (parent as CustomWeaponShotMenu).§_-QL§();
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
