package com.google.analytics.core
{
   import com.google.analytics.v4.GoogleAnalyticsAPI;
   
   public class EventTracker extends Object
   {
      
      public function EventTracker(param1:String, param2:GoogleAnalyticsAPI)
      {
         super();
         this.name = param1;
         _parent = param2;
      }
      
      private var _parent:GoogleAnalyticsAPI;
      
      public var name:String;
      
      public function trackEvent(param1:String, param2:String = null, param3:Number = undefined) : Boolean
      {
         return _parent.trackEvent(name,param1,param2,param3);
      }
   }
}
