package com.funkypear.ui
{
   public class §_-2d§ extends LobbyScreen
   {
      
      public function §_-2d§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-R3§:§_-iG§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         x = 800;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-R3§ = new §_-iG§();
         _loc2_;
         _loc2_;
         addChild(this.§_-R3§);
         _loc2_;
         _loc2_;
         if(Global.§_-Ai§.getInt() >= Global.§_-fF§.getInt())
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-R3§.response_text.text = "INCORRECT USERNAME OR PASSWORD ENTERED THREE TIMES. PLEASE REFRESH THE PAGE TO TRY AGAIN.";
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-R3§.§_-s7§.setDisabled(true);
            _loc2_;
            _loc2_;
            this.§_-R3§.§_-cv§.setDisabled(false);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-R3§.§_-T2§.setDisabled(false);
            this.§_-R3§.§_-eP§.text = "";
         }
      }
      
      public function §_-gc§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = true;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param2)
         {
            _loc4_;
            Global.§_-Ai§.setInt(Global.§_-Ai§.getInt() + 1);
            if(Global.§_-Ai§.getInt() >= Global.§_-fF§.getInt())
            {
               _loc4_;
               _loc3_ = false;
               _loc4_;
               _loc4_;
            }
         }
         _loc4_;
         _loc4_;
         this.§_-R3§.§_-eP§.text = "";
         if(_loc3_)
         {
            this.§_-R3§.response_text.text = param1;
            _loc5_;
            _loc5_;
            this.§_-R3§.§_-s7§.setDisabled(false);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-R3§.§_-cv§.setDisabled(false);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-R3§.§_-T2§.setDisabled(false);
         }
         else
         {
            this.§_-R3§.response_text.text = "INCORRECT USERNAME OR PASSWORD ENTERED THREE TIMES. USE THE RECOVER BUTTON TO RESET YOUR PASSWORD.";
            _loc5_;
            _loc5_;
            this.§_-R3§.§_-cv§.setDisabled(false);
            _loc4_;
            this.§_-R3§.§_-T2§.setDisabled(false);
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_REGISTER || param1 == Global.SCREEN_PASSWORD)
         {
            _loc2_;
            _loc2_;
            §_-9U§();
            _loc2_;
         }
         else
         {
            §_-L0§();
         }
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.lobby_display.displayIntroLogo();
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
