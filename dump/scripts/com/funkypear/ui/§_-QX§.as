package com.funkypear.ui
{
   public class §_-QX§ extends LobbyScreen
   {
      
      public function §_-QX§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-NE§:§_-I0§;
      
      private var §_-Aa§:§_-hX§;
      
      private var §_-Ug§:§_-cX§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         x = 0;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-NE§ = new §_-I0§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-NE§.x = 210;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-NE§.y = 200;
         _loc2_;
         addChild(this.§_-NE§);
         this.§_-Aa§ = new §_-hX§();
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-Aa§.x = 400;
         _loc3_;
         _loc3_;
         this.§_-Aa§.y = 380;
         addChild(this.§_-Aa§);
         this.§_-Ug§ = new §_-cX§();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-Ug§.x = 590;
         _loc3_;
         _loc3_;
         this.§_-Ug§.y = 200;
         _loc2_;
         addChild(this.§_-Ug§);
         _loc3_;
         _loc3_;
         this.§_-NE§.§_-sG§();
         _loc3_;
         this.§_-Aa§.§_-sG§();
         this.§_-Ug§.§_-sG§();
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_HUB)
         {
            _loc3_;
            _loc3_;
            §_-L0§();
         }
         else
         {
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
            {
               _loc2_;
               _loc2_;
               §_-9U§();
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
               {
                  _loc2_;
                  §_-9U§();
                  _loc3_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
                  {
                     §_-9U§();
                  }
                  else if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                  {
                     §_-9U§();
                  }
                  else
                  {
                     x = 0;
                     y = 0;
                     this.finishTweenOn();
                  }
                  
               }
            }
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-NE§.§_-Kv§();
         _loc2_;
         _loc2_;
         this.§_-Aa§.§_-Kv§();
         _loc2_;
         _loc2_;
         this.§_-Ug§.§_-Kv§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            §_-4y§();
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               _loc3_;
               _loc3_;
               §_-4y§();
               _loc2_;
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               §_-4y§();
               _loc2_;
            }
            else
            {
               §_-eY§();
            }
            
         }
      }
   }
}
