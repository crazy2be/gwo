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
         _loc1_;
         super();
      }
      
      private var §_-rk§:Number;
      
      private var §_-JX§:Timer;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 800;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-DR§ = null;
         _loc2_ = new §_-DR§();
         _loc3_;
         _loc2_.name = "lls";
         _loc4_;
         _loc2_.§_-p0§.text = Global.game_share_code;
         _loc3_;
         _loc3_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-QO§(true);
         _loc3_;
         this.§_-rk§ = x;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-jw§,false,0,true);
      }
      
      private function §_-jw§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-jw§);
         _loc2_;
         §_-hf§();
      }
      
      public function §_-TA§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-ht§ = new §_-ht§();
         _loc1_.§_-Uo§.text = "ERROR: GAME ROOM WAS NOT FOUND!";
         _loc1_.name = "lem";
         addChild(_loc1_);
         _loc2_;
         this.§_-JX§ = new Timer(2000,1);
         this.§_-JX§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-7P§,false,0,true);
         this.§_-JX§.start();
      }
      
      public function §_-7P§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_HUB);
      }
   }
}
