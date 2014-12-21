package com.funkypear.ui
{
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class LS_LoadingShareCode extends LobbyScreen
   {
      
      public function LS_LoadingShareCode()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var §_-BB§:Number;
      
      private var §_-X0§:Timer;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         x = 800;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-Hq§ = null;
         _loc2_ = new §_-Hq§();
         _loc4_;
         _loc2_.name = "lls";
         _loc3_;
         _loc2_.§_-jU§.text = Global.game_share_code;
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-L0§(true);
         _loc3_;
         _loc3_;
         this.§_-BB§ = x;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-E6§,false,0,true);
      }
      
      private function §_-E6§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-BB§ = this.§_-BB§ + 26.67;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-E6§);
         _loc2_;
         §_-eY§();
      }
      
      public function §_-NS§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§do § = new §do §();
         _loc1_.§_-P3§.text = "ERROR: GAME ROOM WAS NOT FOUND!";
         _loc1_.name = "lem";
         addChild(_loc1_);
         this.§_-X0§ = new Timer(2000,1);
         this.§_-X0§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Zi§,false,0,true);
         this.§_-X0§.start();
      }
      
      public function §_-Zi§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_HUB);
      }
   }
}
