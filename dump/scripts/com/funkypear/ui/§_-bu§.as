package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-bY§.§_-TO§;
   import flash.text.TextField;
   
   public class §_-bu§ extends MovieClip
   {
      
      public function §_-bu§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(13,this.frame14,27,this.frame28);
         _loc2_;
         this.§_-1b§.text = "";
         _loc1_;
         this.title_text.visible = false;
         _loc1_;
         _loc1_;
         this.§_-GJ§.visible = false;
      }
      
      public var §_-GJ§:§_-TO§;
      
      public var title_text:TextField;
      
      public var §_-1b§:TextField;
      
      public function finishTweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-1b§.text = Global.game_share_code;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-GJ§.setTextField(this.§_-1b§);
         _loc2_;
         _loc2_;
         this.§_-GJ§.visible = true;
         _loc1_;
         _loc1_;
         this.title_text.visible = true;
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-1b§.text = "";
         _loc1_;
         _loc1_;
         this.title_text.visible = false;
         _loc1_;
         this.§_-GJ§.visible = false;
         _loc1_;
         _loc1_;
         gotoAndPlay("out");
      }
      
      public function finishTweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         parent.removeChild(this);
      }
      
      function frame14() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.finishTweenIn();
         _loc2_;
         stop();
      }
      
      function frame28() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.finishTweenOut();
         _loc2_;
         stop();
      }
   }
}
