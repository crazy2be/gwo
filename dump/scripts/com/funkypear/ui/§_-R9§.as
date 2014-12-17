package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   
   public class §_-R9§ extends MovieClip
   {
      
      public function §_-R9§(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(12,this.frame13,34,this.frame35,35,this.frame36,41,this.frame42,47,this.frame48,53,this.frame54,59,this.frame60,65,this.frame66,71,this.frame72,77,this.frame78,100,this.frame101);
         _loc3_;
         this.extra_seconds = param1;
         _loc2_;
         _loc2_;
         play();
      }
      
      private var §_-L2§:Timer;
      
      private var §_-0-U§:Timer;
      
      private var count:int = 5;
      
      private var extra_seconds:int = 0;
      
      public function §_-hk§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         var _loc1_:Number = (this.extra_seconds + 4) * 1000;
         _loc2_;
         this.§_-L2§ = new Timer(_loc1_,1);
         _loc3_;
         this.§_-L2§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Cm§,false,0,true);
         _loc3_;
         this.§_-L2§.start();
      }
      
      public function §_-Cm§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-L2§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Cm§);
         _loc3_;
         this.§_-L2§ = null;
         _loc3_;
         gotoAndPlay("continue");
      }
      
      public function §_-zf§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.count = 5;
         _loc1_;
         gotoAndStop(String("num" + this.count));
         this.§_-0-U§ = new Timer(1000,5);
         _loc2_;
         this.§_-0-U§.addEventListener(TimerEvent.TIMER,this.§_-93§,false,0,true);
         this.§_-0-U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-vk§,false,0,true);
         this.§_-0-U§.start();
      }
      
      public function §_-93§(param1:TimerEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.count--;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.count > 0)
         {
            _loc4_;
            _loc4_;
            gotoAndStop(String("num" + this.count));
            _loc5_;
            _loc5_;
         }
         if(this.count == 2)
         {
            _loc5_;
            _loc5_;
            Global.lobby_display.deactivateGameColourChange();
         }
      }
      
      public function §_-vk§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-0-U§.removeEventListener(TimerEvent.TIMER,this.§_-93§);
         _loc2_;
         _loc2_;
         this.§_-0-U§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-vk§);
         _loc3_;
         this.§_-0-U§ = null;
         _loc2_;
         gotoAndPlay("out");
      }
      
      public function removeGameCountdown() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.removeGameCountdown();
      }
      
      function frame13() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-hk§();
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame35() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-zf§();
      }
      
      function frame36() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame42() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame48() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame66() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame72() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame78() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame101() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.removeGameCountdown();
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
