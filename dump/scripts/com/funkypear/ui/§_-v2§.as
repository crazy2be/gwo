package com.funkypear.ui
{
   public class §_-v2§ extends LobbyScreen
   {
      
      public function §_-v2§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var §_-7q§:§_-rM§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         x = 800;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-7q§ = new §_-rM§();
         _loc2_;
         addChild(this.§_-7q§);
      }
      
      public function §_-gc§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-7q§.response_text.text = param1;
         _loc3_;
         _loc3_;
         this.§_-7q§.§_-G1§.setDisabled(false);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-L0§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-4y§();
      }
   }
}
