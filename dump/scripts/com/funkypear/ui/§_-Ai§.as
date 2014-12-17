package com.funkypear.ui
{
   public class §_-Ai§ extends LobbyScreen
   {
      
      public function §_-Ai§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-Ao§:ErrorPanel;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 800;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Ao§ = new ErrorPanel();
         _loc3_;
         addChild(this.§_-Ao§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-QO§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc3_;
         _loc3_;
         Global.lobby_display.logo.tweenOut();
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_players.tweenOut();
         _loc2_;
         Global.lobby_display.displayIntroLogo();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-j6§();
      }
   }
}
