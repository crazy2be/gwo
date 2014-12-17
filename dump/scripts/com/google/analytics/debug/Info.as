package com.google.analytics.debug
{
   import flash.events.TextEvent;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   
   public class Info extends Label
   {
      
      public function Info(param1:String = "", param2:uint = 3000)
      {
         super(param1,"uiInfo",Style.infoColor,Align.top,true);
         if(param2 > 0)
         {
            _timer = new Timer(param2,1);
            _timer.start();
            _timer.addEventListener(TimerEvent.TIMER_COMPLETE,onComplete,false,0,true);
         }
      }
      
      public function close() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      override public function onLink(param1:TextEvent) : void
      {
         switch(param1.text)
         {
            case "hide":
               close();
               break;
         }
      }
      
      private var _timer:Timer;
      
      public function onComplete(param1:TimerEvent) : void
      {
         close();
      }
   }
}
