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
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-BB§:Number;
      
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
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = null;
         _loc2_ = new §_-aZ§();
         _loc3_;
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
         §_-L0§(true);
         _loc2_;
         this.§_-BB§ = x;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-E6§,false,0,true);
      }
      
      private function §_-E6§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-BB§ = this.§_-BB§ + 26.67;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.§_-E6§);
         _loc2_;
         §_-4y§();
      }
   }
}
