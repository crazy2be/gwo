package com.funkypear.ui
{
   public class §_-0e§ extends LobbyScreen
   {
      
      public function §_-0e§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-Qy§:ErrorPanel;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Qy§ = new ErrorPanel();
         _loc2_;
         addChild(this.§_-Qy§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-L0§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc2_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc2_;
         _loc2_;
         Global.lobby_display.logo.tweenOut();
         _loc2_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_players.tweenOut();
         Global.lobby_display.displayIntroLogo();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-4y§();
      }
   }
}
