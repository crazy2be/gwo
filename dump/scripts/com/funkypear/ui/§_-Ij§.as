package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-bY§.§_-og§;
   import §_-bY§.§_-U1§;
   import §_-bY§.§_-Oy§;
   import flash.text.TextField;
   import §_-bY§.§_-p6§;
   
   public class §_-Ij§ extends MovieClip
   {
      
      public function §_-Ij§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addFrameScript(14,this.frame15,28,this.frame29,43,this.frame44);
         _loc1_;
         _loc1_;
         this.§_-uq§.visible = false;
         this.§_-kC§.visible = false;
         _loc2_;
         this.§_-IL§.visible = false;
         _loc1_;
         this.§_-Fg§.visible = false;
      }
      
      public var §_-Fg§:§_-og§;
      
      public var §_-uq§:§_-U1§;
      
      public var §_-kC§:§_-Oy§;
      
      public var §_-Wc§:TextField;
      
      public var §_-UZ§:TextField;
      
      public var §_-IL§:§_-p6§;
      
      public var §_-EO§:TextField;
      
      public function §_-Tf§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-UZ§.text = "WATCH YOUR REPLAY HERE:";
         _loc2_;
         _loc2_;
         this.§_-Wc§.text = String(Global.§_-fi§ + Global.save_replay_response);
         _loc1_;
         this.§_-uq§.visible = true;
         _loc2_;
         this.§_-kC§.visible = true;
      }
      
      public function §_-BC§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-EO§.text = "#GRAVITEEWARSONLINE";
      }
      
      public function §_-lt§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-IL§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-Fg§.visible = true;
      }
      
      function frame15() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Tf§();
      }
      
      function frame29() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-BC§();
      }
      
      function frame44() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-lt§();
         _loc2_;
         stop();
      }
   }
}
