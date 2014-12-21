package com.funkypear.ui
{
   import flash.text.TextField;
   
   public class §_-xu§ extends §_-Tu§
   {
      
      public function §_-xu§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public var num1:TextField;
      
      public var num2:TextField;
      
      override public function setNumberText(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         this.num1.text = String(param1 + "." + param2);
         _loc4_;
         this.num2.text = String(param1 + "." + param2);
      }
   }
}
