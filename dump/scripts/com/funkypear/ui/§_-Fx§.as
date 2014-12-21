package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-Fx§ extends Sprite
   {
      
      public function §_-Fx§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         mouseEnabled = true;
         _loc1_;
         _loc1_;
         mouseChildren = false;
         buttonMode = true;
         _loc1_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc1_;
         _loc1_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
      }
      
      public var §_-to§:TextField;
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         (parent as §_-DR§).§_-3z§(this);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         (parent as §_-DR§).final(this);
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         (parent as §_-DR§).§_-lp§(this);
      }
   }
}
