package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   
   public class §_-Mq§ extends MovieClip
   {
      
      public function §_-Mq§(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(12,this.frame13,34,this.frame35,35,this.frame36,41,this.frame42,47,this.frame48,53,this.frame54,59,this.frame60,65,this.frame66,71,this.frame72,77,this.frame78,100,this.frame101);
         _loc3_;
         this.extra_seconds = param1;
         _loc3_;
         _loc3_;
         play();
      }
      
      private var §_-8r§:Timer;
      
      private var §_-Mw§:Timer;
      
      private var count:int = 5;
      
      private var extra_seconds:int = 0;
      
      public function § var§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         var _loc1_:Number = (this.extra_seconds + 4) * 1000;
         _loc3_;
         _loc3_;
         this.§_-8r§ = new Timer(_loc1_,1);
         _loc2_;
         this.§_-8r§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-55§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-8r§.start();
      }
      
      public function §_-55§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-8r§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-55§);
         _loc3_;
         this.§_-8r§ = null;
         _loc3_;
         _loc3_;
         gotoAndPlay("continue");
      }
      
      public function §_-At§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.count = 5;
         _loc2_;
         gotoAndStop(String("num" + this.count));
         _loc2_;
         _loc2_;
         this.§_-Mw§ = new Timer(1000,5);
         this.§_-Mw§.addEventListener(TimerEvent.TIMER,this.§_-Zk§,false,0,true);
         this.§_-Mw§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-4Z§,false,0,true);
         _loc1_;
         this.§_-Mw§.start();
      }
      
      public function §_-Zk§(param1:TimerEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         this.count--;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(this.count > 0)
         {
            _loc4_;
            gotoAndStop(String("num" + this.count));
            _loc4_;
            _loc4_;
         }
         if(this.count == 2)
         {
            _loc4_;
            _loc4_;
            Global.lobby_display.deactivateGameColourChange();
         }
      }
      
      public function §_-4Z§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Mw§.removeEventListener(TimerEvent.TIMER,this.§_-Zk§);
         _loc2_;
         this.§_-Mw§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-4Z§);
         _loc2_;
         this.§_-Mw§ = null;
         _loc2_;
         gotoAndPlay("out");
      }
      
      public function removeGameCountdown() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.removeGameCountdown();
      }
      
      function frame13() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§ var§();
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame35() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-At§();
      }
      
      function frame36() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame42() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame48() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame54() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame60() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame66() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame72() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame78() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame101() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.removeGameCountdown();
         _loc2_;
         stop();
      }
   }
}
