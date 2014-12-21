package com.funkypear.ui
{
   import §_-bY§.§_-i9§;
   import §_-bY§.§_-Yd§;
   import §_-bY§.§_-Gl§;
   import §_-bY§.§_-wE§;
   import §_-bY§.§_-1p§;
   
   public class LS_Hub extends LobbyScreen
   {
      
      public function LS_Hub()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      private var §_-PR§:HubPanel;
      
      private var §_-xE§:§_-i9§;
      
      private var §_-Om§:§_-Yd§;
      
      private var §_-O0§:§_-Gl§;
      
      private var §_-4k§:§_-wE§;
      
      private var §_-J5§:§_-1p§;
      
      private var §_-oU§:HubCodePanel;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 != -1)
         {
            _loc3_;
            x = -800;
            _loc3_;
            _loc3_;
            y = 0;
            _loc2_;
         }
         else
         {
            x = 0;
            _loc2_;
            _loc2_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-PR§ = new HubPanel();
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-PR§.x = 80;
         _loc3_;
         this.§_-PR§.y = 80;
         _loc3_;
         _loc3_;
         addChild(this.§_-PR§);
         this.§_-xE§ = new §_-i9§();
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-xE§.x = 80;
         _loc3_;
         _loc3_;
         this.§_-xE§.y = 87;
         _loc2_;
         addChild(this.§_-xE§);
         this.§_-Om§ = new §_-Yd§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-Om§.x = 80;
         this.§_-Om§.y = 163;
         addChild(this.§_-Om§);
         _loc3_;
         _loc3_;
         this.§_-O0§ = new §_-Gl§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-O0§.x = 80;
         _loc2_;
         this.§_-O0§.y = 239;
         _loc2_;
         addChild(this.§_-O0§);
         _loc2_;
         this.§_-4k§ = new §_-wE§();
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-4k§.x = 80;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-4k§.y = 315;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            this.§_-4k§.setDisabled(true);
            _loc3_;
            _loc3_;
         }
         addChild(this.§_-4k§);
         this.§_-J5§ = new §_-1p§();
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-J5§.x = 80;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-J5§.y = 391;
         _loc2_;
         if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] == 0)
         {
            this.§_-J5§.setDisabled(true);
         }
         addChild(this.§_-J5§);
         this.§_-oU§ = new HubCodePanel();
         _loc3_;
         _loc2_;
         this.§_-oU§.x = 87;
         _loc3_;
         this.§_-oU§.y = 468;
         addChild(this.§_-oU§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1 != -1)
         {
            §_-9U§();
            _loc2_;
         }
         else
         {
            §_-L0§();
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if(SafeGlobal.§_-xf§ == false)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.§_-ex§();
            _loc2_;
         }
         else if(SafeGlobal.§_-Hr§ == false)
         {
            Global.lobby_display.§_-aH§();
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
         _loc2_;
         §_-4y§();
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            Global.lobby_display.lobby_menu.tweenOut();
            _loc3_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_nav.tweenOut();
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenOut();
         }
      }
   }
}
