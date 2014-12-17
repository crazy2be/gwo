package com.funkypear.ui
{
   public class §_-Ru§ extends LobbyScreen
   {
      
      public function §_-Ru§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         Global.§_-1H§ = true;
      }
      
      private var §_-bQ§:VersionControlWarning;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         x = 800;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-bQ§ = new VersionControlWarning(TimelineGlobal.version_number,TimelineGlobal.latest_version);
         _loc3_;
         _loc3_;
         addChild(this.§_-bQ§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-QO§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 != Global.SCREEN_LOADING_LOBBY)
         {
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.logo.tweenOut();
            _loc2_;
            _loc2_;
            _loc3_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_players.tweenOut();
            _loc3_;
            Global.lobby_display.displayIntroLogo();
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR_GAME || param1 == Global.SCREEN_CW_GAME)
         {
            _loc2_;
            SafeGlobal.GAME.gameOver();
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-j6§();
      }
   }
}
