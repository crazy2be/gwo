package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-ZN§.§_-A0§;
   import §_-ZN§.§_-fH§;
   import §_-ZN§.§_-83§;
   import flash.text.TextField;
   import §_-ZN§.§_-Nn§;
   
   public class §_-PC§ extends MovieClip
   {
      
      public function §_-PC§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         _loc2_;
         addFrameScript(14,this.frame15,28,this.frame29,43,this.frame44);
         this.§_-Am§.visible = false;
         _loc2_;
         this.§_-H8§.visible = false;
         this.§_-vS§.visible = false;
         this.§_-ER§.visible = false;
      }
      
      public var §_-ER§:§_-A0§;
      
      public var §_-Am§:§_-fH§;
      
      public var §_-H8§:§_-83§;
      
      public var §_-Q6§:TextField;
      
      public var §_-mm§:TextField;
      
      public var §_-vS§:§_-Nn§;
      
      public var §_-P-§:TextField;
      
      public function §_-ON§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-mm§.text = "WATCH YOUR REPLAY HERE:";
         _loc1_;
         _loc1_;
         this.§_-Q6§.text = String(Global.§_-jX§ + Global.save_replay_response);
         _loc1_;
         _loc1_;
         this.§_-Am§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-H8§.visible = true;
      }
      
      public function §_-M0§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-P-§.text = "#GRAVITEEWARSONLINE";
      }
      
      public function §_-tp§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-vS§.visible = true;
         _loc2_;
         this.§_-ER§.visible = true;
      }
      
      function frame15() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-ON§();
      }
      
      function frame29() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-M0§();
      }
      
      function frame44() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-tp§();
         _loc1_;
         stop();
      }
   }
}
