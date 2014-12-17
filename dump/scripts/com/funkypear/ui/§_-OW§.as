package com.funkypear.ui
{
   public class §_-OW§ extends LobbyScreen
   {
      
      public function §_-OW§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      private var §_-IA§:§_-ND§;
      
      private var §_-4E§:§_-NM§;
      
      private var §_-zF§:§_-ei§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-IA§ = new §_-ND§();
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-IA§.x = 210;
         _loc2_;
         this.§_-IA§.y = 200;
         addChild(this.§_-IA§);
         this.§_-4E§ = new §_-NM§();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-4E§.x = 400;
         _loc2_;
         this.§_-4E§.y = 380;
         _loc2_;
         _loc2_;
         addChild(this.§_-4E§);
         _loc2_;
         this.§_-zF§ = new §_-ei§();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-zF§.x = 590;
         _loc2_;
         _loc2_;
         this.§_-zF§.y = 200;
         addChild(this.§_-zF§);
         this.§_-IA§.§_-Ua§();
         this.§_-4E§.§_-Ua§();
         this.§_-zF§.§_-Ua§();
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_HUB)
         {
            §_-QO§();
         }
         else
         {
            _loc3_;
            _loc2_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
            {
               §_-1I§();
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc2_;
               if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
               {
                  _loc3_;
                  _loc3_;
                  §_-1I§();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
                  {
                     §_-1I§();
                  }
                  else if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                  {
                     _loc2_;
                     §_-1I§();
                  }
                  else
                  {
                     x = 0;
                     _loc3_;
                     _loc3_;
                     y = 0;
                     this.finishTweenOn();
                  }
                  
               }
            }
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-IA§.§_-QE§();
         _loc1_;
         _loc1_;
         this.§_-4E§.§_-QE§();
         _loc1_;
         _loc1_;
         this.§_-zF§.§_-QE§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            §_-j6§();
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               §_-j6§();
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc2_;
               §_-j6§();
            }
            else
            {
               §_-hf§();
            }
            
         }
      }
   }
}
