package §_-bY§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponEffectMenu;
   
   public class §_-KJ§ extends SimpleButton
   {
      
      public function §_-KJ§(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         _loc2_;
         this.item_value = param1;
         _loc2_;
         this.§_-5U§.gotoAndStop(param1 + 1);
      }
      
      public var §_-5U§:MovieClip;
      
      private var item_value:int;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(!§_-L4§)
         {
            _loc3_;
            (parent as CustomWeaponEffectMenu).§_-cD§(this.item_value);
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(§_-L4§)
         {
            gotoAndStop("off");
            _loc1_;
            _loc1_;
            buttonMode = false;
            _loc1_;
            if(over)
            {
               if(parent != null)
               {
                  (parent as CustomWeaponEffectMenu).§_-xX§(this.item_value,true);
               }
            }
            else if(parent != null)
            {
               (parent as CustomWeaponEffectMenu).§_-QL§();
            }
            
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               if(parent != null)
               {
                  _loc2_;
                  _loc2_;
                  (parent as CustomWeaponEffectMenu).§_-xX§(this.item_value);
                  _loc2_;
               }
               gotoAndStop("over");
            }
            else
            {
               if(parent != null)
               {
                  _loc1_;
                  (parent as CustomWeaponEffectMenu).§_-QL§();
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
         _loc2_;
         stop();
      }
   }
}
