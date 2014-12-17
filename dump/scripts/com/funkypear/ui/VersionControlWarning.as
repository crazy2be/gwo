package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class VersionControlWarning extends Sprite
   {
      
      public function VersionControlWarning(param1:String, param2:String)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         super();
         _loc3_;
         _loc3_;
         this.§_-KD§.text = String("THE LATEST VERSION IS " + param2);
         _loc4_;
         this.version_text.text = String("THIS VERSION IS " + param1);
      }
      
      public var version_text:TextField;
      
      public var §_-KD§:TextField;
      
      public function init() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         SafeGlobal.TIMELINE.bringToFront(this);
      }
   }
}
