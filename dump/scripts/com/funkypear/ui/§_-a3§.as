package com.funkypear.ui
{
   import flash.text.TextFormat;
   
   public class §_-a3§ extends LobbyScreen
   {
      
      public function §_-a3§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      private var §_-hg§:§_-3V§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         this.§_-hg§ = new §_-3V§();
         _loc3_;
         _loc3_;
         addChild(this.§_-hg§);
      }
      
      public function §_-zh§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = new TextFormat();
         _loc2_;
         _loc2_;
         _loc1_.color = 16711680;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-hg§.response_text.text = "THE EMAIL ADDRESS ENTERED WAS NOT RECOGNISED.";
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-hg§.response_text.setTextFormat(_loc1_);
         _loc3_;
         _loc3_;
         this.§_-hg§.§_-cX§.setDisabled(false);
      }
      
      public function §_-G2§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = new TextFormat();
         _loc2_;
         _loc1_.color = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-hg§.response_text.text = "AN EMAIL HAS BEEN SENT TO THE ADDRESS YOU PROVIDED.";
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-hg§.response_text.setTextFormat(_loc1_);
         _loc3_;
         this.§_-hg§.§_-cX§.setDisabled(false);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-QO§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 == Global.SCREEN_LOGIN)
         {
            _loc2_;
            §_-hf§();
            _loc2_;
            _loc2_;
         }
         else
         {
            §_-j6§();
         }
      }
   }
}
