package com.funkypear.ui
{
   public class §_-GD§ extends LobbyScreen
   {
      
      public function §_-GD§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         Global.§_-3L§ = true;
      }
      
      private var §_-Rj§:VersionControlWarning;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = 800;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Rj§ = new VersionControlWarning(TimelineGlobal.version_number,TimelineGlobal.latest_version);
         _loc2_;
         _loc2_;
         addChild(this.§_-Rj§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-L0§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         if(param1 != Global.SCREEN_LOADING_LOBBY)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
            _loc2_;
            _loc2_;
            _loc3_;
            Global.lobby_display.logo.tweenOut();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc3_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc2_;
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_players.tweenOut();
            _loc2_;
            _loc2_;
            Global.lobby_display.displayIntroLogo();
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_EDITOR_GAME || param1 == Global.SCREEN_CW_GAME)
         {
            SafeGlobal.GAME.gameOver();
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-4y§();
      }
   }
}
