package com.google.analytics.data
{
   import com.google.analytics.utils.Timespan;
   
   public class UTMZ extends UTMCookie
   {
      
      public function UTMZ(param1:Number = undefined, param2:Number = undefined, param3:Number = undefined, param4:Number = undefined, param5:String = "")
      {
         super("utmz","__utmz",["domainHash","campaignCreation","campaignSessions","responseCount","campaignTracking"],defaultTimespan * 1000);
         this.domainHash = param1;
         this.campaignCreation = param2;
         this.campaignSessions = param3;
         this.responseCount = param4;
         this.campaignTracking = param5;
      }
      
      public static var defaultTimespan:Number = Timespan.sixmonths;
      
      public function set responseCount(param1:Number) : void
      {
         _responseCount = param1;
         update();
      }
      
      public function set domainHash(param1:Number) : void
      {
         _domainHash = param1;
         update();
      }
      
      public function set campaignCreation(param1:Number) : void
      {
         _campaignCreation = param1;
         update();
      }
      
      private var _campaignTracking:String;
      
      public function get campaignTracking() : String
      {
         return _campaignTracking;
      }
      
      public function get campaignSessions() : Number
      {
         return _campaignSessions;
      }
      
      private var _campaignCreation:Number;
      
      private var _responseCount:Number;
      
      private var _domainHash:Number;
      
      public function get domainHash() : Number
      {
         return _domainHash;
      }
      
      public function get responseCount() : Number
      {
         return _responseCount;
      }
      
      public function get campaignCreation() : Number
      {
         return _campaignCreation;
      }
      
      public function set campaignSessions(param1:Number) : void
      {
         _campaignSessions = param1;
         update();
      }
      
      private var _campaignSessions:Number;
      
      public function set campaignTracking(param1:String) : void
      {
         _campaignTracking = param1;
         update();
      }
   }
}
