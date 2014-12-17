package com.funkypear.ui
{
   public class LS_BrowseCampaign extends LobbyScreen
   {
      
      public function LS_BrowseCampaign()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-kR§:int;
      
      private var §_-Uy§:Array;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
         {
            x = 0;
            _loc2_;
            _loc2_;
            y = 0;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc3_;
            if(param1 == Global.SCREEN_WAITING_AREA)
            {
               x = 0;
               _loc3_;
               _loc3_;
               y = 0;
            }
            else if(param1 == Global.SCREEN_GAME_END)
            {
               x = 0;
               y = 0;
            }
            else
            {
               x = 800;
               _loc2_;
               y = 0;
            }
            
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:Array = null;
         var _loc8_:LevelSelectDisplay = null;
         var _loc9_:* = 0;
         _loc11_;
         _loc11_;
         this.§_-Uy§ = new Array();
         var _loc2_:Array = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].thumbs;
         var _loc3_:Array = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].unlocked;
         var _loc4_:Array = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals;
         var _loc5_:Array = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].awards;
         var _loc6_:Array = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].mods;
         _loc7_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions;
         _loc11_;
         _loc9_ = 0;
         while(_loc9_ < _loc2_.length)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END)
            {
               _loc10_;
               _loc10_;
               _loc8_ = new LevelSelectDisplay(_loc2_[_loc9_],_loc9_,true,false,false);
               _loc8_.§_-Di§(SafeGlobal.selected_level.campaign_id,_loc9_);
               _loc10_;
               _loc8_.§_-V9§(_loc7_[_loc9_].x,_loc7_[_loc9_].y,_loc7_[SafeGlobal.selected_level.level_id].x,_loc7_[SafeGlobal.selected_level.level_id].y);
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc8_ = new LevelSelectDisplay(_loc2_[_loc9_],_loc9_,true,true,true);
               _loc8_.§_-Di§(SafeGlobal.selected_level.campaign_id,_loc9_);
               _loc11_;
               _loc11_;
               _loc8_.x = _loc7_[_loc9_].x;
               _loc11_;
               _loc11_;
               _loc8_.y = _loc7_[_loc9_].y;
            }
            _loc8_.§_-9z§(SafeGlobal.§_-oX§(SafeGlobal.selected_level.campaign_id,_loc9_),_loc3_[_loc9_],_loc4_[_loc9_]);
            _loc10_;
            _loc8_.§_-zu§(null,_loc6_[_loc9_]);
            _loc8_.§_-Ua§();
            _loc11_;
            _loc8_.cacheAsBitmap = true;
            _loc10_;
            addChild(_loc8_);
            this.§_-Uy§.push(_loc8_);
            _loc11_;
            _loc11_;
            _loc9_++;
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.§_-kR§ = param1;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
         {
            _loc4_;
            _loc4_;
            §_-QO§();
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END)
            {
               _loc2_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions;
               _loc4_;
               _loc4_;
               _loc3_ = 0;
               while(_loc3_ < this.§_-Uy§.length)
               {
                  _loc5_;
                  if(_loc3_ != SafeGlobal.selected_level.level_id)
                  {
                     _loc5_;
                     _loc5_;
                     (this.§_-Uy§[_loc3_] as LevelSelectDisplay).§_-iX§(_loc2_[_loc3_].x,_loc2_[_loc3_].y);
                     _loc5_;
                     _loc5_;
                  }
                  _loc3_++;
                  _loc5_;
                  _loc5_;
               }
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
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-Uy§.length)
         {
            _loc2_ = this.§_-Uy§[_loc1_] as LevelSelectDisplay;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(this.§_-kR§ == Global.SCREEN_WAITING_AREA || this.§_-kR§ == Global.SCREEN_GAME_END)
               {
                  _loc4_;
                  _loc4_;
                  if(_loc2_.id == SafeGlobal.selected_level.level_id)
                  {
                     _loc2_.§_-HQ§();
                     _loc4_;
                     _loc4_;
                  }
               }
               _loc2_.§_-QE§();
            }
            _loc1_++;
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
         if(param1 == Global.SCREEN_HUB)
         {
            §_-hf§();
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
            {
               §_-hf§();
            }
            else
            {
               _loc3_;
               if(param1 == Global.SCREEN_WAITING_AREA)
               {
                  (this.§_-Uy§[SafeGlobal.selected_level.level_id] as LevelSelectDisplay).§_-Vy§();
                  _loc2_ = 0;
                  while(true)
                  {
                     _loc4_;
                     if(_loc2_ >= this.§_-Uy§.length)
                     {
                        break;
                     }
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     if(_loc2_ != SafeGlobal.selected_level.level_id)
                     {
                        _loc3_;
                        (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     }
                     _loc2_++;
                  }
                  _loc4_;
                  §_-sm§ = false;
               }
               else if(param1 == Global.SCREEN_EDITOR)
               {
                  §_-j6§();
                  _loc3_;
               }
               else
               {
                  §_-j6§();
               }
               
            }
         }
      }
   }
}
