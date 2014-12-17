package com.funkypear.ui
{
   import §_-ZN§.§_-v8§;
   import §_-ZN§.§_-6u§;
   import §_-ZN§.§_-XS§;
   
   public class LS_BrowseGames extends LobbyScreen
   {
      
      public function LS_BrowseGames()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var saved_rooms:Array;
      
      private var §_-kR§:int;
      
      private var §_-Uy§:Array;
      
      private var refresh_button:§_-v8§;
      
      private var limit_toggle:§_-6u§;
      
      private var campaign_toggle:§_-XS§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
         {
            x = 800;
            _loc2_;
            y = 0;
         }
         else
         {
            _loc3_;
            _loc2_;
            if(param1 == Global.SCREEN_WAITING_AREA)
            {
               _loc2_;
               x = -800;
               y = 0;
               _loc3_;
               _loc3_;
            }
            else if(param1 == Global.SCREEN_GAME_END)
            {
               x = -800;
               _loc2_;
               y = 0;
               _loc3_;
               _loc3_;
            }
            else
            {
               x = 800;
               y = 0;
            }
            
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc19_:* = false;
         var _loc20_:* = true;
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
         var _loc18_:§_-ht§ = null;
         _loc20_;
         _loc20_;
         this.§_-Uy§ = new Array();
         var _loc2_:* = true;
         _loc20_;
         if(Global.saved_rooms != null)
         {
            _loc19_;
            if(Global.saved_rooms.length > 0)
            {
               _loc19_;
               _loc2_ = false;
               _loc19_;
               _loc19_;
               _loc3_ = Global.saved_rooms.length;
               _loc19_;
               _loc20_;
               _loc20_;
               if(_loc3_ > 5)
               {
                  _loc20_;
                  _loc20_;
                  _loc19_;
                  _loc19_;
                  _loc3_ = 5;
               }
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _loc20_;
                  _loc5_ = parseInt(Global.saved_rooms[_loc4_].data.CampaignKey);
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc19_;
                  _loc6_ = SafeGlobal.§_-QS§(_loc5_);
                  _loc19_;
                  _loc7_ = SafeGlobal.§_-9c§(_loc5_);
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc20_;
                  _loc20_;
                  _loc8_ = Global.saved_rooms[_loc4_].data.LevelLimit;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc9_ = -1;
                  _loc19_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  if(Global.saved_rooms[_loc4_].data.MapId.indexOf("campaign") != -1)
                  {
                     _loc9_ = int(Global.saved_rooms[_loc4_].data.MapId.split("_")[1]);
                  }
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc10_ = Global.saved_rooms[_loc4_].data.Creator;
                  _loc19_;
                  _loc11_ = String("MISSION 0" + (_loc7_ + 1));
                  _loc20_;
                  _loc12_ = false;
                  _loc20_;
                  _loc19_;
                  if(_loc5_ == 0)
                  {
                     _loc19_;
                     _loc19_;
                     _loc11_ = "CUSTOM MAP";
                  }
                  else
                  {
                     _loc15_ = SafeGlobal.campaigns[_loc6_].unlocked;
                     if(_loc15_[_loc7_] == 1)
                     {
                        _loc20_;
                        _loc19_;
                        _loc19_;
                        _loc12_ = false;
                        _loc20_;
                        _loc20_;
                     }
                     else
                     {
                        _loc12_ = true;
                        _loc19_;
                        _loc19_;
                        _loc11_ = "CUSTOM MAP";
                     }
                  }
                  _loc13_ = new LevelSelectDisplay(Global.saved_rooms[_loc4_].data.Thumbnail,_loc4_,true);
                  _loc13_.§_-xr§(true);
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  if(_loc5_ == 0)
                  {
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     if(_loc9_ != -1)
                     {
                        _loc16_ = SafeGlobal.§_-QS§(int(_loc9_));
                        _loc19_;
                        _loc19_;
                        _loc17_ = SafeGlobal.§_-9c§(int(_loc9_));
                        _loc20_;
                        _loc20_;
                        _loc13_.§_-sa§(_loc8_,_loc16_,_loc17_);
                     }
                     else
                     {
                        _loc13_.§_-Nk§(_loc8_,_loc10_);
                     }
                  }
                  else
                  {
                     _loc19_;
                     if(_loc12_)
                     {
                        _loc13_.§_-sa§(_loc8_,_loc6_,_loc7_);
                     }
                     else
                     {
                        _loc13_.§_-Di§(_loc6_,_loc7_);
                     }
                  }
                  _loc13_.§_-C4§();
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  _loc20_;
                  if(!(_loc5_ == 0) && !_loc12_)
                  {
                     _loc20_;
                     _loc20_;
                     _loc13_.§_-9z§(_loc5_);
                     _loc20_;
                  }
                  _loc13_.§_-zu§(null,Global.saved_rooms[_loc4_].data.Mods);
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc14_ = 0;
                  _loc19_;
                  _loc19_;
                  _loc20_;
                  _loc20_;
                  if(Global.saved_rooms[_loc4_].data.TeamBattle != null)
                  {
                     _loc20_;
                     _loc14_ = parseInt(Global.saved_rooms[_loc4_].data.TeamBattle);
                  }
                  _loc13_.§_-1-§(Global.saved_rooms[_loc4_].onlineUsers,Global.saved_rooms[_loc4_].data.MaxPlayers,_loc14_);
                  _loc19_;
                  _loc19_;
                  _loc13_.x = Global.positions[_loc3_][_loc4_].x;
                  _loc20_;
                  _loc13_.y = Global.positions[_loc3_][_loc4_].y;
                  _loc20_;
                  _loc20_;
                  _loc13_.§_-Ua§();
                  _loc19_;
                  _loc19_;
                  _loc13_.cacheAsBitmap = true;
                  _loc19_;
                  _loc19_;
                  addChild(_loc13_);
                  _loc19_;
                  this.§_-Uy§.push(_loc13_);
                  _loc4_++;
               }
               _loc20_;
               _loc20_;
            }
         }
         if(_loc2_)
         {
            _loc18_ = new §_-ht§();
            _loc18_.§_-Uo§.text = "NO GAME ROOMS WERE FOUND";
            _loc20_;
            _loc20_;
            _loc18_.name = "lem";
            _loc20_;
            _loc20_;
            addChild(_loc18_);
         }
         this.refresh_button = new §_-v8§();
         _loc19_;
         this.refresh_button.name = "refresh_button";
         _loc19_;
         _loc19_;
         addChild(this.refresh_button);
         this.limit_toggle = new §_-6u§();
         _loc19_;
         _loc19_;
         this.limit_toggle.name = "limit_toggle";
         addChild(this.limit_toggle);
         _loc19_;
         this.campaign_toggle = new §_-XS§();
         this.campaign_toggle.name = "campaign_toggle";
         addChild(this.campaign_toggle);
      }
      
      public function §_-1W§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.limit_toggle.§_-ps§();
         _loc1_;
         this.campaign_toggle.§_-ps§();
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
         {
            _loc2_;
            _loc2_;
            §_-QO§();
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_WAITING_AREA)
            {
               §_-1I§();
               _loc3_;
               _loc3_;
            }
            else if(param1 == Global.SCREEN_GAME_END)
            {
               §_-1I§();
               _loc2_;
               _loc2_;
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
         while(_loc1_ < numChildren)
         {
            _loc2_ = getChildAt(_loc1_) as LevelSelectDisplay;
            _loc3_;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc2_.§_-QE§();
               _loc3_;
            }
            _loc1_++;
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc3_;
            §_-sm§ = false;
            _loc3_;
            _loc3_;
            _loc3_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc3_;
            _loc3_;
            if(this.§_-Uy§.length > 1)
            {
               _loc3_;
               _loc3_;
               _loc2_ = 0;
               while(true)
               {
                  _loc4_;
                  if(_loc2_ >= this.§_-Uy§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     _loc4_;
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc4_;
                  }
                  _loc2_++;
                  _loc4_;
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
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_EDITOR)
            {
               _loc4_;
               §_-j6§();
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc4_;
               if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
               {
                  _loc4_;
                  §_-j6§();
                  _loc3_;
                  _loc3_;
               }
               else if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
               {
                  _loc4_;
                  §_-j6§();
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  §_-hf§();
               }
               
            }
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.refresh_button != null)
         {
            removeChild(this.refresh_button);
            this.refresh_button = null;
         }
         if(this.limit_toggle != null)
         {
            removeChild(this.limit_toggle);
            this.limit_toggle = null;
            _loc3_;
         }
         if(this.campaign_toggle != null)
         {
            removeChild(this.campaign_toggle);
            _loc2_;
            _loc2_;
            this.campaign_toggle = null;
         }
      }
   }
}
