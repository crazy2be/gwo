package com.funkypear.ui
{
   public class §_-47§ extends LobbyScreen
   {
      
      public function §_-47§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      private var §_-06§:§_-PN§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         x = 800;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-06§ = new §_-PN§();
         _loc3_;
         _loc3_;
         addChild(this.§_-06§);
      }
      
      public function §_-zh§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-06§.response_text.text = param1;
         _loc2_;
         _loc2_;
         this.§_-06§.§_-Cd§.setDisabled(false);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-QO§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_LOGIN)
         {
            _loc2_;
            §_-hf§();
            _loc3_;
            _loc3_;
         }
         else
         {
            §_-j6§();
         }
      }
   }
}
