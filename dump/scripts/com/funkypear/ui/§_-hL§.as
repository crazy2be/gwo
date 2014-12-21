package com.funkypear.ui
{
   import flash.text.TextFormat;
   
   public class §_-hL§ extends LobbyScreen
   {
      
      public function §_-hL§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var §_-y8§:§_-0-4§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
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
         this.§_-y8§ = new §_-0-4§();
         _loc2_;
         _loc2_;
         addChild(this.§_-y8§);
      }
      
      public function §_-gc§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc3_;
         _loc3_;
         _loc1_.color = 16711680;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-y8§.response_text.text = "THE EMAIL ADDRESS ENTERED WAS NOT RECOGNISED.";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-y8§.response_text.setTextFormat(_loc1_);
         _loc3_;
         _loc3_;
         this.§_-y8§.§_-BR§.setDisabled(false);
      }
      
      public function §_-Vn§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc3_;
         _loc1_.color = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-y8§.response_text.text = "AN EMAIL HAS BEEN SENT TO THE ADDRESS YOU PROVIDED.";
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-y8§.response_text.setTextFormat(_loc1_);
         _loc3_;
         this.§_-y8§.§_-BR§.setDisabled(false);
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_LOGIN)
         {
            _loc3_;
            _loc3_;
            §_-eY§();
            _loc2_;
            _loc2_;
         }
         else
         {
            §_-4y§();
         }
      }
   }
}
