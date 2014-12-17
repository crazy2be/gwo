package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class LS_LoadingReconnect extends LobbyScreen
   {
      
      public function LS_LoadingReconnect()
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = null;
         _loc2_ = new §_-S5§();
         _loc4_;
         _loc2_.name = "lls";
         _loc4_;
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-QO§(true);
         _loc3_;
         this.§_-rk§ = x;
         _loc3_;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-jw§,false,0,true);
      }
      
      private function §_-jw§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.§_-jw§);
         _loc2_;
         §_-j6§();
      }
   }
}
