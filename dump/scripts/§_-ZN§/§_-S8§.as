package §_-ZN§
{
   import flash.events.MouseEvent;
   
   public class §_-S8§ extends SimpleButton
   {
      
      public function §_-S8§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc2_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         Global.custom_weapon_editor.hideAllMenus();
         _loc3_;
         Global.custom_weapon_panel.§_-rD§();
         _loc2_;
         Global.lobby_display.testCustomWeapon();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
