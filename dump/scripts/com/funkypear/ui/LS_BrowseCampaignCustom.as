package com.funkypear.ui
{
   import §_-ZN§.§_-Kh§;
   import §_-ZN§.§_-e§;
   
   public class LS_BrowseCampaignCustom extends LobbyScreen
   {
      
      public function LS_BrowseCampaignCustom()
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = undefined;
         _loc6_;
         super();
         _loc7_;
         _loc7_;
         this.§_-LU§ = new Array();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc2_;
            _loc3_ = SafeGlobal.campaigns[_loc2_].unlocked;
            _loc7_;
            _loc6_;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_;
            _loc6_;
            while(_loc5_ < _loc3_.length)
            {
               _loc7_;
               _loc6_;
               _loc6_;
               _loc4_ = _loc4_ + _loc3_[_loc5_];
               _loc5_++;
            }
            if(_loc4_ > 0)
            {
               _loc6_;
               _loc6_;
               _loc1_++;
               this.§_-LU§.push(_loc2_);
               _loc6_;
               _loc6_;
            }
            _loc2_++;
         }
      }
      
      private var map_count:int;
      
      private var §_-H2§:int;
      
      private var §_-AQ§:int = 5;
      
      private var §_-Uy§:Array;
      
      private var §_-kR§:int;
      
      private var §_-HU§:§_-Kh§;
      
      private var §_-SL§:§_-e§;
      
      private var §_-ag§:Boolean = false;
      
      private var §_-8f§:Boolean = false;
      
      private var §_-LU§:Array;
      
      private var §_-vB§:int = 0;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            x = 0;
            y = 0;
         }
         else
         {
            x = 800;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:LevelSelectDisplay = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         _loc10_;
         _loc10_;
         this.§_-Uy§ = new Array();
         _loc10_;
         this.§_-ag§ = false;
         _loc10_;
         _loc10_;
         this.§_-8f§ = false;
         var _loc3_:Array = SafeGlobal.campaigns[this.§_-vB§].thumbs;
         var _loc4_:Array = SafeGlobal.campaigns[this.§_-vB§].unlocked;
         _loc10_;
         this.map_count = Global.page_max_campaign_custom * 5;
         this.§_-H2§ = 0;
         this.§_-AQ§ = 5;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(Global.page_max_campaign_custom > Global.page_id_campaign_custom + 1)
         {
            this.§_-ag§ = true;
         }
         _loc9_;
         _loc9_;
         _loc9_;
         if(Global.page_id_campaign_custom > 0)
         {
            _loc10_;
            _loc10_;
            this.§_-8f§ = true;
         }
         _loc9_;
         _loc9_;
         if(this.map_count > 0)
         {
            _loc10_;
            _loc5_ = -1;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc2_ = this.§_-H2§;
            while(_loc2_ < this.§_-H2§ + this.§_-AQ§)
            {
               _loc5_++;
               _loc9_;
               _loc9_;
               _loc7_ = _loc3_[_loc2_];
               _loc10_;
               _loc8_ = _loc4_[_loc2_];
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc9_;
                  _loc9_;
                  if(_loc8_ == 0)
                  {
                     _loc10_;
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,false,false,false);
                     _loc6_.§_-Di§(this.§_-vB§,_loc5_);
                     _loc6_.§_-E9§();
                     _loc10_;
                  }
                  else
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,true,false,false);
                     _loc6_.§_-Di§(this.§_-vB§,_loc5_);
                  }
                  _loc6_.§_-V9§(Global.positions[this.§_-AQ§][_loc5_].x,Global.positions[this.§_-AQ§][_loc5_].y,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].y);
               }
               else
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  if(_loc8_ == 0)
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,false);
                     _loc6_.§_-Di§(this.§_-vB§,_loc5_);
                     _loc10_;
                     _loc6_.§_-E9§();
                     _loc10_;
                     _loc10_;
                  }
                  else
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,true);
                     _loc6_.§_-Di§(this.§_-vB§,_loc5_);
                  }
                  _loc6_.x = Global.positions[this.§_-AQ§][_loc5_].x;
                  _loc10_;
                  _loc10_;
                  _loc6_.y = Global.positions[this.§_-AQ§][_loc5_].y;
               }
               _loc6_.§_-Ua§();
               _loc10_;
               _loc10_;
               _loc6_.cacheAsBitmap = true;
               addChild(_loc6_);
               _loc9_;
               _loc9_;
               this.§_-Uy§.push(_loc6_);
               _loc2_++;
            }
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-kR§ = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            _loc2_ = 0;
            while(true)
            {
               _loc4_;
               _loc4_;
               if(_loc2_ >= this.§_-Uy§.length)
               {
                  break;
               }
               _loc3_;
               _loc4_;
               if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
               {
                  (this.§_-Uy§[_loc2_] as LevelSelectDisplay).§_-iX§(Global.positions[this.§_-AQ§][_loc2_].x,Global.positions[this.§_-AQ§][_loc2_].y);
               }
               _loc2_++;
            }
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  §_-QO§();
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc3_;
                     _loc3_;
                     §_-1I§();
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     §_-QO§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               §_-QO§();
            }
            else
            {
               §_-QO§();
            }
            
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:LevelSelectDisplay = null;
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-Uy§.length)
         {
            _loc2_ = this.§_-Uy§[_loc1_] as LevelSelectDisplay;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(this.§_-kR§ == Global.SCREEN_WAITING_AREA || this.§_-kR§ == Global.SCREEN_GAME_END || this.§_-kR§ == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc2_.§_-HQ§();
               }
               _loc2_.§_-QE§();
            }
            _loc1_++;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-ag§ == true)
         {
            this.§_-HU§ = new §_-Kh§();
            _loc4_;
            lobby_canvas.addChild(this.§_-HU§);
            _loc4_;
            _loc4_;
         }
         if(this.§_-8f§ == true)
         {
            this.§_-SL§ = new §_-e§();
            lobby_canvas.addChild(this.§_-SL§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            §_-sm§ = false;
            _loc3_;
            _loc3_;
            _loc3_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc4_;
            _loc4_;
            if(this.§_-Uy§.length > 1)
            {
               _loc3_;
               _loc2_ = 0;
               while(true)
               {
                  _loc3_;
                  if(_loc2_ >= this.§_-Uy§.length)
                  {
                     break;
                  }
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     _loc3_;
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc3_;
                     _loc3_;
                  }
                  _loc2_++;
               }
            }
            else
            {
               §_-sm§ = true;
               §_-TO§(null);
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            _loc3_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-j6§();
               }
               else
               {
                  _loc4_;
                  _loc3_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc4_;
                     _loc4_;
                     §_-hf§();
                  }
                  else
                  {
                     §_-hf§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               §_-hf§();
               _loc4_;
            }
            else
            {
               §_-hf§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.§_-HU§ != null)
         {
            lobby_canvas.removeChild(this.§_-HU§);
            this.§_-HU§ = null;
         }
         if(this.§_-SL§ != null)
         {
            lobby_canvas.removeChild(this.§_-SL§);
            this.§_-SL§ = null;
         }
      }
   }
}
