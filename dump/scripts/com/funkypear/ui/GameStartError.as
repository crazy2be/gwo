package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class GameStartError extends Sprite
   {
      
      public function GameStartError()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
         _loc1_;
         _loc1_;
         this.§_-nq§.text = String(this.count);
      }
      
      public var §_-nq§:TextField;
      
      private var §_-Ca§:Timer;
      
      private var count:int = 5;
      
      private function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         _loc2_;
         this.§_-Ca§ = new Timer(1000,5);
         _loc2_;
         this.§_-Ca§.addEventListener(TimerEvent.TIMER,this.§_-RF§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-Ca§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Jo§,false,0,true);
         _loc2_;
         this.§_-Ca§.start();
      }
      
      private function §_-RF§(param1:TimerEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.count--;
         _loc4_;
         _loc4_;
         if(this.count <= 0)
         {
            _loc4_;
            this.§_-nq§.text = "";
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-nq§.text = String(this.count);
         }
      }
      
      private function §_-Jo§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.handleGameStartError();
      }
   }
}
