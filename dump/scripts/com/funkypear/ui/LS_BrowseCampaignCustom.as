package com.funkypear.ui
{
   import §_-bY§.§_-V9§;
   import §_-bY§.§_-fo§;
   
   public class LS_BrowseCampaignCustom extends LobbyScreen
   {
      
      public function LS_BrowseCampaignCustom()
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = undefined;
         _loc7_;
         _loc7_;
         super();
         _loc6_;
         this.§_-ZT§ = new Array();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc2_;
            _loc3_ = SafeGlobal.campaigns[_loc2_].unlocked;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_;
               _loc6_;
               _loc4_ = _loc4_ + _loc3_[_loc5_];
               _loc6_;
               _loc6_;
               _loc5_++;
            }
            _loc7_;
            _loc7_;
            if(_loc4_ > 0)
            {
               _loc1_++;
               _loc6_;
               _loc6_;
               this.§_-ZT§.push(_loc2_);
            }
            _loc2_++;
         }
      }
      
      private var map_count:int;
      
      private var §_-P§:int;
      
      private var §_-zs§:int = 5;
      
      private var §_-po§:Array;
      
      private var §_-XT§:int;
      
      private var §_-Sg§:§_-V9§;
      
      private var §_-vE§:§_-fo§;
      
      private var §_-8L§:Boolean = false;
      
      private var §_-wF§:Boolean = false;
      
      private var §_-ZT§:Array;
      
      private var §_-wm§:int = 0;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
            _loc3_;
            x = 0;
            y = 0;
         }
         else
         {
            x = 800;
            _loc2_;
            _loc2_;
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
         _loc9_;
         this.§_-po§ = new Array();
         _loc9_;
         this.§_-8L§ = false;
         _loc10_;
         this.§_-wF§ = false;
         var _loc3_:Array = SafeGlobal.campaigns[this.§_-wm§].thumbs;
         var _loc4_:Array = SafeGlobal.campaigns[this.§_-wm§].unlocked;
         _loc10_;
         this.map_count = Global.page_max_campaign_custom * 5;
         _loc10_;
         _loc10_;
         this.§_-P§ = 0;
         this.§_-zs§ = 5;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(Global.page_max_campaign_custom > Global.page_id_campaign_custom + 1)
         {
            this.§_-8L§ = true;
            _loc9_;
         }
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(Global.page_id_campaign_custom > 0)
         {
            this.§_-wF§ = true;
            _loc10_;
            _loc10_;
         }
         _loc10_;
         _loc10_;
         if(this.map_count > 0)
         {
            _loc10_;
            _loc5_ = -1;
            _loc10_;
            _loc2_ = this.§_-P§;
            while(_loc2_ < this.§_-P§ + this.§_-zs§)
            {
               _loc5_++;
               _loc7_ = _loc3_[_loc2_];
               _loc8_ = _loc4_[_loc2_];
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc9_;
                  _loc10_;
                  if(_loc8_ == 0)
                  {
                     _loc10_;
                     _loc10_;
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,false,false,false);
                     _loc6_.§_-6x§(this.§_-wm§,_loc5_);
                     _loc9_;
                     _loc6_.§_-JZ§();
                     _loc10_;
                     _loc10_;
                  }
                  else
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,true,false,false);
                     _loc6_.§_-6x§(this.§_-wm§,_loc5_);
                  }
                  _loc6_.§_-0-a§(Global.positions[this.§_-zs§][_loc5_].x,Global.positions[this.§_-zs§][_loc5_].y,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].x,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].y);
               }
               else
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  if(_loc8_ == 0)
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,false);
                     _loc6_.§_-6x§(this.§_-wm§,_loc5_);
                     _loc9_;
                     _loc6_.§_-JZ§();
                     _loc9_;
                     _loc9_;
                  }
                  else
                  {
                     _loc6_ = new LevelSelectDisplay(_loc7_,_loc5_,true);
                     _loc6_.§_-6x§(this.§_-wm§,_loc5_);
                  }
                  _loc6_.x = Global.positions[this.§_-zs§][_loc5_].x;
                  _loc10_;
                  _loc6_.y = Global.positions[this.§_-zs§][_loc5_].y;
               }
               _loc6_.§_-sG§();
               _loc6_.cacheAsBitmap = true;
               _loc9_;
               addChild(_loc6_);
               this.§_-po§.push(_loc6_);
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
         _loc3_;
         this.§_-XT§ = param1;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(true)
            {
               _loc3_;
               _loc3_;
               if(_loc2_ >= this.§_-po§.length)
               {
                  break;
               }
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
               {
                  _loc4_;
                  _loc4_;
                  (this.§_-po§[_loc2_] as LevelSelectDisplay).§_-mH§(Global.positions[this.§_-zs§][_loc2_].x,Global.positions[this.§_-zs§][_loc2_].y);
                  _loc3_;
                  _loc3_;
               }
               _loc2_++;
            }
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc4_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-L0§();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc3_;
                     §_-9U§();
                     _loc3_;
                  }
                  else
                  {
                     §_-L0§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc4_;
               §_-L0§();
            }
            else
            {
               §_-L0§();
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
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-po§.length)
         {
            _loc2_ = this.§_-po§[_loc1_] as LevelSelectDisplay;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(this.§_-XT§ == Global.SCREEN_WAITING_AREA || this.§_-XT§ == Global.SCREEN_GAME_END || this.§_-XT§ == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_.§_-En§();
               }
               _loc2_.§_-Kv§();
               _loc3_;
            }
            _loc1_++;
         }
         _loc3_;
         _loc3_;
         if(this.§_-8L§ == true)
         {
            this.§_-Sg§ = new §_-V9§();
            lobby_canvas.addChild(this.§_-Sg§);
         }
         if(this.§_-wF§ == true)
         {
            this.§_-vE§ = new §_-fo§();
            lobby_canvas.addChild(this.§_-vE§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            _loc4_;
            §_-vR§ = false;
            _loc4_;
            _loc4_;
            _loc3_;
            (this.§_-po§[SafeGlobal.selected_level.§_-p2§] as LevelSelectDisplay).§_-My§();
            _loc4_;
            _loc4_;
            if(this.§_-po§.length > 1)
            {
               _loc4_;
               _loc4_;
               _loc2_ = 0;
               while(true)
               {
                  _loc4_;
                  if(_loc2_ >= this.§_-po§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     _loc3_;
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                  }
                  _loc2_++;
                  _loc3_;
                  _loc3_;
               }
            }
            else
            {
               §_-vR§ = true;
               _loc3_;
               §_-Yc§(null);
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc4_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc3_;
                  _loc3_;
                  §_-4y§();
               }
               else
               {
                  _loc3_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     §_-eY§();
                  }
                  else
                  {
                     §_-eY§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               §_-eY§();
               _loc3_;
            }
            else
            {
               §_-eY§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-Sg§ != null)
         {
            lobby_canvas.removeChild(this.§_-Sg§);
            this.§_-Sg§ = null;
         }
         if(this.§_-vE§ != null)
         {
            _loc2_;
            lobby_canvas.removeChild(this.§_-vE§);
            _loc3_;
            this.§_-vE§ = null;
         }
      }
   }
}
