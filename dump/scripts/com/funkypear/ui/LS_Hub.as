package com.funkypear.ui
{
   import §_-ZN§.§_-BG§;
   import §_-ZN§.§_-IU§;
   import §_-ZN§.§_-GF§;
   import §_-ZN§.§_-fw§;
   import §_-ZN§.§_-FN§;
   
   public class LS_Hub extends LobbyScreen
   {
      
      public function LS_Hub()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      private var §_-Yf§:HubPanel;
      
      private var §_-q8§:§_-BG§;
      
      private var §_-Fh§:§_-IU§;
      
      private var §_-QI§:§_-GF§;
      
      private var §_-OH§:§_-fw§;
      
      private var §_-Qq§:§_-FN§;
      
      private var §_-mF§:HubCodePanel;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1 != -1)
         {
            _loc2_;
            _loc2_;
            x = -800;
            _loc3_;
            y = 0;
            _loc3_;
            _loc3_;
         }
         else
         {
            x = 0;
            _loc3_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-Yf§ = new HubPanel();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-Yf§.x = 80;
         _loc3_;
         _loc3_;
         this.§_-Yf§.y = 80;
         addChild(this.§_-Yf§);
         this.§_-q8§ = new §_-BG§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-q8§.x = 80;
         this.§_-q8§.y = 87;
         _loc2_;
         addChild(this.§_-q8§);
         this.§_-Fh§ = new §_-IU§();
         _loc3_;
         _loc2_;
         this.§_-Fh§.x = 80;
         this.§_-Fh§.y = 163;
         addChild(this.§_-Fh§);
         this.§_-QI§ = new §_-GF§();
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-QI§.x = 80;
         this.§_-QI§.y = 239;
         addChild(this.§_-QI§);
         _loc3_;
         _loc3_;
         this.§_-OH§ = new §_-fw§();
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-OH§.x = 80;
         _loc2_;
         _loc3_;
         this.§_-OH§.y = 315;
         _loc3_;
         _loc3_;
         _loc2_;
         if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            this.§_-OH§.setDisabled(true);
         }
         addChild(this.§_-OH§);
         this.§_-Qq§ = new §_-FN§();
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-Qq§.x = 80;
         _loc3_;
         _loc3_;
         this.§_-Qq§.y = 391;
         if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] == 0)
         {
            _loc2_;
            this.§_-Qq§.setDisabled(true);
         }
         addChild(this.§_-Qq§);
         this.§_-mF§ = new HubCodePanel();
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-mF§.x = 87;
         this.§_-mF§.y = 468;
         _loc3_;
         addChild(this.§_-mF§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 != -1)
         {
            §_-1I§();
         }
         else
         {
            §_-QO§();
         }
         _loc2_;
         _loc3_;
         _loc3_;
         if(SafeGlobal.§_-1u§ == false)
         {
            _loc2_;
            _loc2_;
            Global.lobby_display.§_-03§();
            _loc3_;
            _loc3_;
         }
         else if(SafeGlobal.§_-sN§ == false)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.§_-3J§();
         }
         
      }
      
      override public function finishTweenOn() : void
      {
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-j6§();
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc3_;
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
         }
      }
   }
}
