package com.funkypear.ui
{
   public class LS_CampaignSelect extends LobbyScreen
   {
      
      public function LS_CampaignSelect()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var csd0:CampaignSelectDisplay;
      
      private var csd1:CampaignSelectDisplay;
      
      private var csd2:CampaignSelectDisplay;
      
      private var csd3:CampaignSelectDisplay;
      
      private var csd4:CampaignSelectDisplay;
      
      override public function refreshCampaignData() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.campaigns[3].unlocked[0] == 1)
         {
            _loc1_;
            _loc1_;
            this.csd3.§_-c8§(false);
            _loc1_;
         }
         if(SafeGlobal.campaigns[4].unlocked[0] == 1)
         {
            _loc2_;
            _loc2_;
            this.csd4.§_-c8§(false);
         }
      }
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:* = false;
         var _loc2_:* = 5;
         var _loc3_:* = true;
         var _loc4_:* = true;
         _loc8_;
         _loc7_;
         if(SafeGlobal.campaigns[1].unlocked[0] == 1)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc3_ = false;
            _loc8_;
            _loc8_;
         }
         if(SafeGlobal.campaigns[2].unlocked[0] == 1)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc4_ = false;
            _loc7_;
         }
         this.csd0 = new CampaignSelectDisplay(0,false);
         this.csd1 = new CampaignSelectDisplay(1,_loc3_);
         _loc7_;
         this.csd2 = new CampaignSelectDisplay(2,_loc4_);
         var _loc5_:* = true;
         _loc8_;
         _loc6_ = true;
         _loc7_;
         _loc7_;
         _loc8_;
         if(SafeGlobal.campaigns[3].unlocked[0] == 1)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc5_ = false;
         }
         if(SafeGlobal.campaigns[4].unlocked[0] == 1)
         {
            _loc8_;
            _loc8_;
            _loc6_ = false;
            _loc7_;
            _loc7_;
         }
         this.csd3 = new CampaignSelectDisplay(3,_loc5_);
         this.csd4 = new CampaignSelectDisplay(4,_loc6_);
         _loc7_;
         _loc7_;
         _loc7_;
         this.csd0.x = 190;
         _loc7_;
         this.csd0.y = 200;
         _loc7_;
         _loc7_;
         _loc8_;
         this.csd1.x = 410;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.csd1.y = 200;
         _loc8_;
         _loc8_;
         _loc8_;
         this.csd2.x = 630;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         this.csd2.y = 200;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.csd3.x = 190;
         _loc7_;
         this.csd3.y = 420;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         this.csd4.x = 410;
         _loc8_;
         _loc8_;
         _loc8_;
         this.csd4.y = 420;
         this.csd0.§_-sG§();
         _loc7_;
         this.csd1.§_-sG§();
         this.csd2.§_-sG§();
         this.csd3.§_-sG§();
         if(!_loc6_)
         {
            this.csd4.§_-sG§();
         }
         addChild(this.csd0);
         addChild(this.csd1);
         addChild(this.csd2);
         _loc8_;
         _loc8_;
         addChild(this.csd3);
         addChild(this.csd4);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_HUB)
         {
            _loc2_;
            _loc2_;
            §_-L0§();
            _loc3_;
         }
         else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            §_-9U§();
         }
         else
         {
            x = 0;
            _loc3_;
            _loc3_;
            y = 0;
            _loc2_;
            _loc2_;
            this.finishTweenOn();
         }
         
      }
      
      override public function finishTweenOn() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         this.csd0.§_-Kv§();
         _loc4_;
         this.csd1.§_-Kv§();
         _loc4_;
         this.csd2.§_-Kv§();
         var _loc1_:* = true;
         var _loc2_:* = true;
         _loc4_;
         _loc4_;
         _loc3_;
         if(SafeGlobal.campaigns[3].unlocked[0] == 1)
         {
            _loc3_;
            _loc1_ = false;
         }
         if(SafeGlobal.campaigns[4].unlocked[0] == 1)
         {
            _loc3_;
            _loc3_;
            _loc2_ = false;
            _loc4_;
         }
         this.csd3.§_-Kv§();
         if(!_loc2_)
         {
            this.csd4.§_-Kv§();
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            §_-4y§();
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_GAMES)
            {
               _loc3_;
               _loc3_;
               §_-4y§();
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES || param1 == Global.SCREEN_LOADING_CUSTOM_GAME)
               {
                  _loc3_;
                  _loc3_;
                  §_-4y§();
               }
               else
               {
                  §_-eY§();
               }
            }
         }
      }
   }
}
