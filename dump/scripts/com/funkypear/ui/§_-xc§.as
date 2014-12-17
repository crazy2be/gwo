package com.funkypear.ui
{
   public class §_-xc§ extends LobbyScreen
   {
      
      public function §_-xc§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      private var §_-XZ§:§_-zA§;
      
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
         this.§_-XZ§ = new §_-zA§();
         _loc3_;
         addChild(this.§_-XZ§);
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
         if(param1 != Global.SCREEN_LOADING_LOBBY)
         {
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.lobby_display.logo.tweenOut();
            _loc3_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc2_;
            Global.lobby_display.lobby_players.tweenOut();
            _loc2_;
            _loc2_;
            Global.lobby_display.displayIntroLogo();
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
