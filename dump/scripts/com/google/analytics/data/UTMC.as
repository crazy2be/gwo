package com.google.analytics.data
{
   public class UTMC extends UTMCookie
   {
      
      public function UTMC(param1:Number = undefined)
      {
         super("utmc","__utmc",["domainHash"]);
         this.domainHash = param1;
      }
      
      private var _domainHash:Number;
      
      public function get domainHash() : Number
      {
         return _domainHash;
      }
      
      public function set domainHash(param1:Number) : void
      {
         _domainHash = param1;
         update();
      }
   }
}
