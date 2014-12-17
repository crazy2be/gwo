package com.google.analytics.data
{
   public class UTMK extends UTMCookie
   {
      
      public function UTMK(param1:Number = undefined)
      {
         super("utmk","__utmk",["hash"]);
         this.hash = param1;
      }
      
      public function set hash(param1:Number) : void
      {
         _hash = param1;
         update();
      }
      
      private var _hash:Number;
      
      public function get hash() : Number
      {
         return _hash;
      }
   }
}
