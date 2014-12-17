package com.funkypear.ui
{
   public class §_-gt§ extends LobbyScreen
   {
      
      public function §_-gt§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-rZ§:§_-AP§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         x = 800;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-rZ§ = new §_-AP§();
         _loc2_;
         addChild(this.§_-rZ§);
         if(Global.§_-Gr§.getInt() >= Global.§_-68§.getInt())
         {
            _loc3_;
            _loc2_;
            this.§_-rZ§.response_text.text = "INCORRECT USERNAME OR PASSWORD ENTERED THREE TIMES. PLEASE REFRESH THE PAGE TO TRY AGAIN.";
            _loc3_;
            _loc2_;
            this.§_-rZ§.§_-Eh§.setDisabled(true);
            _loc3_;
            _loc3_;
            _loc2_;
            this.§_-rZ§.§_-0W§.setDisabled(false);
            _loc2_;
            _loc2_;
            this.§_-rZ§.§_-0N§.setDisabled(false);
            _loc3_;
            _loc3_;
            this.§_-rZ§.§_-sS§.text = "";
         }
      }
      
      public function §_-zh§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = true;
         _loc5_;
         _loc5_;
         if(param2)
         {
            _loc4_;
            Global.§_-Gr§.setInt(Global.§_-Gr§.getInt() + 1);
            if(Global.§_-Gr§.getInt() >= Global.§_-68§.getInt())
            {
               _loc4_;
               _loc4_;
               _loc3_ = false;
            }
         }
         this.§_-rZ§.§_-sS§.text = "";
         _loc5_;
         if(_loc3_)
         {
            this.§_-rZ§.response_text.text = param1;
            _loc5_;
            this.§_-rZ§.§_-Eh§.setDisabled(false);
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-rZ§.§_-0W§.setDisabled(false);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-rZ§.§_-0N§.setDisabled(false);
            _loc5_;
         }
         else
         {
            this.§_-rZ§.response_text.text = "INCORRECT USERNAME OR PASSWORD ENTERED THREE TIMES. USE THE RECOVER BUTTON TO RESET YOUR PASSWORD.";
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-rZ§.§_-0W§.setDisabled(false);
            this.§_-rZ§.§_-0N§.setDisabled(false);
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_REGISTER || param1 == Global.SCREEN_PASSWORD)
         {
            _loc3_;
            §_-1I§();
            _loc2_;
         }
         else
         {
            §_-QO§();
         }
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.displayIntroLogo();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-j6§();
      }
   }
}
