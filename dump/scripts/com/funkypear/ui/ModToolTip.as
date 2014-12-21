package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ModToolTip extends MovieClip
   {
      
      public function ModToolTip(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super();
         _loc3_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc3_;
         this.mod_id = param1;
         _loc3_;
         mouseEnabled = false;
         _loc2_;
         _loc2_;
         mouseChildren = false;
      }
      
      public var §_-v7§:TextField;
      
      private var mod_id:int;
      
      public function §_-zN§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         gotoAndPlay("in");
      }
      
      public function §_-G7§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-v7§.text = "";
         _loc2_;
         gotoAndPlay("out");
      }
      
      public function §_-BM§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-v7§.text = Global.modNames[this.mod_id].toUpperCase();
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-BM§();
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
