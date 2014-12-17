package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-ga§ extends MovieClip
   {
      
      public function §_-ga§(param1:int, param2:String, param3:DropDownMenuSmaller)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         _loc4_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc4_;
         this.item_id = param1;
         this.item_name = param2;
         _loc4_;
         _loc4_;
         this.§_-qe§ = param3;
         this.§_-Nf§.text = param2;
         _loc5_;
         mouseEnabled = true;
         mouseChildren = false;
         buttonMode = true;
         _loc5_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc5_;
         _loc5_;
         addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         gotoAndStop("up");
      }
      
      public var §_-Nf§:TextField;
      
      private var §_-qe§:DropDownMenuSmaller;
      
      private var item_id:int;
      
      private var item_name:String;
      
      private var §_-Od§:Boolean = false;
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-qe§.§_-PQ§();
         _loc2_;
         gotoAndStop("over");
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         gotoAndStop("up");
      }
      
      private function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-qe§.§_-mt§(this.item_id);
      }
      
      public function doSelect(param1:Boolean) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Od§ = param1;
         _loc3_;
         if(this.§_-Od§)
         {
            _loc2_;
            gotoAndStop("over");
            _loc2_;
         }
         else
         {
            gotoAndStop("up");
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
