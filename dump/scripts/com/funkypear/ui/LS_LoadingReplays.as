package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class LS_LoadingReplays extends LobbyScreen
   {
      
      public function LS_LoadingReplays()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-rk§:Number;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         x = 800;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = null;
         _loc2_ = new §_-Ww§();
         _loc4_;
         _loc4_;
         _loc2_.name = "lls";
         _loc3_;
         _loc3_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-QO§(true);
         _loc3_;
         this.§_-rk§ = x;
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-a§,false,0,true);
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.lobby_client.connectReplayEditor();
      }
      
      private function §_-a§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      private function §_-fF§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-rk§ = this.§_-rk§ - 26.67;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-a§);
         _loc2_;
         §_-j6§();
      }
   }
}
