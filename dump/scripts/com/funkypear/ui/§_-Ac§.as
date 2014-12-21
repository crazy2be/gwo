package com.funkypear.ui
{
   public class §_-Ac§ extends LobbyScreen
   {
      
      public function §_-Ac§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      private var §_-0g§:§_-zu§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = 800;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-0g§ = new §_-zu§();
         _loc3_;
         _loc3_;
         addChild(this.§_-0g§);
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 != Global.SCREEN_LOADING_LOBBY)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
            _loc2_;
            _loc2_;
            Global.lobby_display.logo.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc3_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_players.tweenOut();
            Global.lobby_display.displayIntroLogo();
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-4y§();
      }
   }
}
