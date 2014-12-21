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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
         _loc2_;
         this.§_-tH§.text = String(this.count);
      }
      
      public var §_-tH§:TextField;
      
      private var §_-H4§:Timer;
      
      private var count:int = 5;
      
      private function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         _loc2_;
         _loc2_;
         this.§_-H4§ = new Timer(1000,5);
         _loc2_;
         this.§_-H4§.addEventListener(TimerEvent.TIMER,this.§ else§,false,0,true);
         _loc3_;
         this.§_-H4§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-GN§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-H4§.start();
      }
      
      private function § else§(param1:TimerEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.count--;
         _loc4_;
         if(this.count <= 0)
         {
            _loc5_;
            _loc5_;
            this.§_-tH§.text = "";
            _loc5_;
         }
         else
         {
            this.§_-tH§.text = String(this.count);
         }
      }
      
      private function §_-GN§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         Global.lobby_display.handleGameStartError();
      }
   }
}
