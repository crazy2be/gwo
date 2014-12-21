package com.funkypear.ui
{
   import §_-bY§.§ get§;
   import §_-bY§.§_-jl§;
   import §_-bY§.§_-io§;
   
   public class LS_BrowseGames extends LobbyScreen
   {
      
      public function LS_BrowseGames()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var saved_rooms:Array;
      
      private var §_-XT§:int;
      
      private var §_-po§:Array;
      
      private var refresh_button:§ get§;
      
      private var limit_toggle:§_-jl§;
      
      private var campaign_toggle:§_-io§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
         {
            _loc2_;
            _loc2_;
            x = 800;
            y = 0;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(param1 == Global.SCREEN_WAITING_AREA)
            {
               x = -800;
               _loc3_;
               y = 0;
            }
            else if(param1 == Global.SCREEN_GAME_END)
            {
               _loc2_;
               x = -800;
               _loc2_;
               _loc2_;
               y = 0;
            }
            else
            {
               x = 800;
               _loc3_;
               _loc3_;
               y = 0;
            }
            
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc19_:* = true;
         var _loc20_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         var _loc13_:LevelSelectDisplay = null;
         var _loc14_:* = 0;
         var _loc15_:Array = null;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:§do § = null;
         _loc19_;
         _loc19_;
         this.§_-po§ = new Array();
         var _loc2_:* = true;
         _loc19_;
         if(Global.saved_rooms != null)
         {
            _loc20_;
            _loc20_;
            _loc19_;
            _loc19_;
            if(Global.saved_rooms.length > 0)
            {
               _loc20_;
               _loc2_ = false;
               _loc19_;
               _loc19_;
               _loc3_ = Global.saved_rooms.length;
               _loc19_;
               if(_loc3_ > 5)
               {
                  _loc20_;
                  _loc20_;
                  _loc19_;
                  _loc3_ = 5;
               }
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _loc5_ = parseInt(Global.saved_rooms[_loc4_].data.CampaignKey);
                  _loc6_ = SafeGlobal.§_-Py§(_loc5_);
                  _loc19_;
                  _loc20_;
                  _loc7_ = SafeGlobal.§_-xg§(_loc5_);
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc8_ = Global.saved_rooms[_loc4_].data.LevelLimit;
                  _loc19_;
                  _loc9_ = -1;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  if(Global.saved_rooms[_loc4_].data.MapId.indexOf("campaign") != -1)
                  {
                     _loc19_;
                     _loc9_ = int(Global.saved_rooms[_loc4_].data.MapId.split("_")[1]);
                  }
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc19_;
                  _loc10_ = Global.saved_rooms[_loc4_].data.Creator;
                  _loc20_;
                  _loc11_ = String("MISSION 0" + (_loc7_ + 1));
                  _loc20_;
                  _loc20_;
                  _loc12_ = false;
                  _loc19_;
                  _loc20_;
                  _loc20_;
                  if(_loc5_ == 0)
                  {
                     _loc20_;
                     _loc11_ = "CUSTOM MAP";
                     _loc19_;
                  }
                  else
                  {
                     _loc15_ = SafeGlobal.campaigns[_loc6_].unlocked;
                     if(_loc15_[_loc7_] == 1)
                     {
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        _loc12_ = false;
                        _loc19_;
                        _loc19_;
                     }
                     else
                     {
                        _loc12_ = true;
                        _loc20_;
                        _loc20_;
                        _loc11_ = "CUSTOM MAP";
                     }
                  }
                  _loc13_ = new LevelSelectDisplay(Global.saved_rooms[_loc4_].data.Thumbnail,_loc4_,true);
                  _loc13_.§_-RU§(true);
                  _loc20_;
                  _loc20_;
                  if(_loc5_ == 0)
                  {
                     _loc19_;
                     if(_loc9_ != -1)
                     {
                        _loc16_ = SafeGlobal.§_-Py§(int(_loc9_));
                        _loc20_;
                        _loc20_;
                        _loc17_ = SafeGlobal.§_-xg§(int(_loc9_));
                        _loc19_;
                        _loc19_;
                        _loc13_.§_-7W§(_loc8_,_loc16_,_loc17_);
                        _loc19_;
                     }
                     else
                     {
                        _loc13_.§_-mo§(_loc8_,_loc10_);
                        _loc20_;
                        _loc20_;
                     }
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     if(_loc12_)
                     {
                        _loc20_;
                        _loc20_;
                        _loc13_.§_-7W§(_loc8_,_loc6_,_loc7_);
                        _loc20_;
                     }
                     else
                     {
                        _loc13_.§_-6x§(_loc6_,_loc7_);
                     }
                  }
                  _loc13_.§_-rS§();
                  _loc20_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  if(!(_loc5_ == 0) && !_loc12_)
                  {
                     _loc20_;
                     _loc13_.§_-66§(_loc5_);
                  }
                  _loc13_.§_-DW§(null,Global.saved_rooms[_loc4_].data.Mods);
                  _loc19_;
                  _loc19_;
                  _loc14_ = 0;
                  _loc20_;
                  _loc20_;
                  if(Global.saved_rooms[_loc4_].data.TeamBattle != null)
                  {
                     _loc20_;
                     _loc20_;
                     _loc14_ = parseInt(Global.saved_rooms[_loc4_].data.TeamBattle);
                  }
                  _loc13_.§_-Ap§(Global.saved_rooms[_loc4_].onlineUsers,Global.saved_rooms[_loc4_].data.MaxPlayers,_loc14_);
                  _loc20_;
                  _loc20_;
                  _loc13_.x = Global.positions[_loc3_][_loc4_].x;
                  _loc20_;
                  _loc13_.y = Global.positions[_loc3_][_loc4_].y;
                  _loc13_.§_-sG§();
                  _loc19_;
                  _loc13_.cacheAsBitmap = true;
                  _loc19_;
                  _loc19_;
                  addChild(_loc13_);
                  _loc20_;
                  _loc20_;
                  this.§_-po§.push(_loc13_);
                  _loc4_++;
               }
               _loc20_;
            }
         }
         if(_loc2_)
         {
            _loc18_ = new §do §();
            _loc18_.§_-P3§.text = "NO GAME ROOMS WERE FOUND";
            _loc20_;
            _loc18_.name = "lem";
            _loc19_;
            _loc19_;
            addChild(_loc18_);
         }
         this.refresh_button = new § get§();
         _loc20_;
         this.refresh_button.name = "refresh_button";
         _loc19_;
         _loc19_;
         addChild(this.refresh_button);
         this.limit_toggle = new §_-jl§();
         _loc20_;
         _loc20_;
         this.limit_toggle.name = "limit_toggle";
         addChild(this.limit_toggle);
         _loc19_;
         this.campaign_toggle = new §_-io§();
         _loc19_;
         _loc19_;
         this.campaign_toggle.name = "campaign_toggle";
         _loc20_;
         _loc20_;
         addChild(this.campaign_toggle);
      }
      
      public function §_-31§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.limit_toggle.§_-oc§();
         _loc1_;
         _loc1_;
         this.campaign_toggle.§_-oc§();
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
         _loc2_;
         if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
         {
            _loc3_;
            _loc3_;
            §_-L0§();
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_WAITING_AREA)
            {
               §_-9U§();
               _loc2_;
            }
            else if(param1 == Global.SCREEN_GAME_END)
            {
               §_-9U§();
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
         while(_loc1_ < numChildren)
         {
            _loc2_ = getChildAt(_loc1_) as LevelSelectDisplay;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc2_.§_-Kv§();
               _loc4_;
            }
            _loc1_++;
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc3_;
            §_-vR§ = false;
            _loc3_;
            _loc3_;
            _loc3_;
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
                  _loc3_;
                  _loc3_;
                  if(_loc2_ >= this.§_-po§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc4_;
                  }
                  _loc2_++;
               }
            }
            else
            {
               §_-vR§ = true;
               _loc3_;
               §_-Yc§(null);
               _loc4_;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_EDITOR)
            {
               §_-4y§();
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
               {
                  _loc3_;
                  §_-4y§();
                  _loc4_;
                  _loc4_;
               }
               else if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
               {
                  §_-4y§();
               }
               else
               {
                  §_-eY§();
               }
               
            }
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.refresh_button != null)
         {
            _loc2_;
            _loc2_;
            removeChild(this.refresh_button);
            _loc3_;
            _loc3_;
            this.refresh_button = null;
            _loc2_;
         }
         if(this.limit_toggle != null)
         {
            _loc2_;
            _loc2_;
            removeChild(this.limit_toggle);
            _loc3_;
            _loc3_;
            this.limit_toggle = null;
            _loc2_;
            _loc2_;
         }
         if(this.campaign_toggle != null)
         {
            _loc3_;
            _loc3_;
            removeChild(this.campaign_toggle);
            this.campaign_toggle = null;
         }
      }
   }
}
