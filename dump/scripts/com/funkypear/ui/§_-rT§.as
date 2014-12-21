package com.funkypear.ui
{
   public class §_-rT§ extends LobbyScreen
   {
      
      public function §_-rT§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      private var §_-7q§:§_-LK§;
      
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-7q§ = new §_-LK§();
         _loc2_;
         _loc2_;
         addChild(this.§_-7q§);
      }
      
      public function §_-gc§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-7q§.response_text.text = param1;
         _loc2_;
         this.§_-7q§.§_-G1§.setDisabled(false);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-L0§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_LOGIN)
         {
            _loc3_;
            §_-eY§();
            _loc2_;
         }
         else
         {
            §_-4y§();
         }
      }
   }
}
