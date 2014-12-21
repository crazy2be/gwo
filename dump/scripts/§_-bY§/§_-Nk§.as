package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-Nk§ extends SimpleButton
   {
      
      public function §_-Nk§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc1_;
         x = 0;
         _loc1_;
         y = 0;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.custom_weapon_editor.hideAllMenus();
         _loc3_;
         Global.custom_weapon_panel.§_-Eo§();
         _loc3_;
         _loc3_;
         Global.lobby_display.testCustomWeapon();
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
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
   }
}
