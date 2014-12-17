package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-ZN§.§_-MY§;
   import flash.text.TextField;
   
   public class §_-y3§ extends MovieClip
   {
      
      public function §_-y3§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(13,this.frame14,27,this.frame28);
         _loc2_;
         _loc2_;
         this.§_-i6§.text = "";
         _loc2_;
         this.title_text.visible = false;
         _loc1_;
         _loc1_;
         this.§_-19§.visible = false;
      }
      
      public var §_-19§:§_-MY§;
      
      public var title_text:TextField;
      
      public var §_-i6§:TextField;
      
      public function finishTweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-i6§.text = Global.game_share_code;
         _loc2_;
         _loc1_;
         this.§_-19§.setTextField(this.§_-i6§);
         _loc1_;
         _loc1_;
         this.§_-19§.visible = true;
         _loc2_;
         _loc2_;
         this.title_text.visible = true;
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-i6§.text = "";
         _loc1_;
         this.title_text.visible = false;
         _loc2_;
         _loc2_;
         this.§_-19§.visible = false;
         _loc2_;
         _loc2_;
         gotoAndPlay("out");
      }
      
      public function finishTweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         parent.removeChild(this);
      }
      
      function frame14() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.finishTweenIn();
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame28() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.finishTweenOut();
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
