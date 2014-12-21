package com.funkypear.ui
{
   import §_-4M§.SoundManager;
   import fl.transitions.TweenEvent;
   
   public class LS_CustomWeaponEnd extends LobbyScreen
   {
      
      public function LS_CustomWeaponEnd()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 300;
         _loc3_;
         y = 300;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SoundManager.§_-ob§();
         _loc3_;
         §_-NW§ = SafeGlobal.game_over_data.§_-ts§;
         _loc2_;
         _loc2_;
         §_-NW§.x = §_-NW§.x - 300;
         _loc2_;
         §_-NW§.y = §_-NW§.y - 300;
         _loc3_;
         _loc3_;
         addChild(§_-NW§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-6C§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
      }
      
      override protected function finishTweenOutOfGame(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.disable_clicks = false;
         _loc3_;
         Global.lobby_display.backOneScreen();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-eY§(1200);
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenIn();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.tweenIn();
         _loc3_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenIn();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.logo.tweenIn();
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.§_-NP§("TestCustomWeapon" + Global.test_custom_weapon_id);
      }
      
      override public function finishTweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         SafeGlobal.GAME.finalDestroy();
      }
   }
}
