package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-7D§ extends MovieClip
   {
      
      public function §_-7D§(param1:int, param2:String, param3:DropDownMenuSmaller)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
         this.item_id = param1;
         _loc5_;
         _loc5_;
         this.item_name = param2;
         this.§_-Ya§ = param3;
         _loc4_;
         this.§_-RZ§.text = param2;
         mouseEnabled = true;
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc4_;
         _loc4_;
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         gotoAndStop("up");
      }
      
      public var §_-RZ§:TextField;
      
      private var §_-Ya§:DropDownMenuSmaller;
      
      private var item_id:int;
      
      private var item_name:String;
      
      private var §_-yY§:Boolean = false;
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Ya§.§_-l1§();
         _loc3_;
         gotoAndStop("over");
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         gotoAndStop("up");
      }
      
      private function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-Ya§.§_-ww§(this.item_id);
      }
      
      public function doSelect(param1:Boolean) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-yY§ = param1;
         _loc2_;
         if(this.§_-yY§)
         {
            _loc3_;
            _loc3_;
            gotoAndStop("over");
            _loc3_;
         }
         else
         {
            gotoAndStop("up");
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
