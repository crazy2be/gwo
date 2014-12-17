package com.funkypear.ui
{
   public class LS_WaitingArea extends LobbyScreen
   {
      
      public function LS_WaitingArea()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-kR§:int;
      
      private var §_-J§:Boolean = false;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         x = 0;
         _loc2_;
         y = 0;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
         {
            _loc3_;
            _loc3_;
            x = 800;
            _loc3_;
            _loc3_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         this.§_-kR§ = param1;
         var _loc3_:* = 0;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            this.§_-J§ = true;
            _loc3_ = SafeGlobal.§_-oX§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            this.§_-4F§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
         }
         else
         {
            _loc6_;
            if(param1 == Global.SCREEN_BROWSE_GAMES)
            {
               _loc7_;
               _loc6_;
               _loc3_ = SafeGlobal.selected_level.campaign_key;
               _loc7_;
               _loc7_;
               if(_loc3_ != 0)
               {
                  this.§_-J§ = true;
                  _loc7_;
                  _loc7_;
                  if(this.§_-0P§(_loc3_))
                  {
                     this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
                  }
                  else
                  {
                     this.§_-4F§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
                     _loc6_;
                  }
               }
               else
               {
                  this.§_-J§ = false;
                  this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
               }
            }
            else
            {
               _loc7_;
               _loc7_;
               if(param1 == Global.SCREEN_CUSTOM_GAME)
               {
                  this.§_-J§ = false;
                  _loc7_;
                  this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
                  _loc6_;
                  _loc6_;
               }
               else if(param1 == Global.SCREEN_GAME_END)
               {
                  _loc7_;
                  _loc7_;
                  _loc3_ = parseInt(SafeGlobal.replay_room.CampaignKey);
                  _loc7_;
                  if(_loc3_ != 0)
                  {
                     _loc7_;
                     _loc7_;
                     this.§_-J§ = true;
                     _loc6_;
                     if(this.§_-0P§(_loc3_))
                     {
                        this.§_-s7§(SafeGlobal.replay_room.Thumbnail,0,param1);
                     }
                     else
                     {
                        _loc7_;
                        _loc4_ = SafeGlobal.§_-QS§(_loc3_);
                        _loc7_;
                        _loc7_;
                        _loc5_ = SafeGlobal.§_-9c§(_loc3_);
                        _loc7_;
                        this.§_-4F§(_loc4_,_loc5_,param1);
                     }
                  }
                  else
                  {
                     this.§_-J§ = false;
                     _loc7_;
                     _loc7_;
                     this.§_-s7§(SafeGlobal.replay_room.Thumbnail,0,param1);
                     _loc7_;
                  }
               }
               else if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
               {
                  this.§_-J§ = false;
                  this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
               }
               
               
            }
         }
      }
      
      private function §_-s7§(param1:String, param2:int, param3:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         SafeGlobal.selected_level.thumbnail = param1;
         _loc6_;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc6_;
         if(SafeGlobal.selected_level.mods != "")
         {
            this.lsd.§_-zu§(null,SafeGlobal.selected_level.mods);
         }
         _loc6_;
         if(param3 == Global.SCREEN_BROWSE_GAMES)
         {
            _loc6_;
            this.lsd.§_-Nk§();
            _loc4_ = 0;
            if(SafeGlobal.selected_level.§_-op§ == true)
            {
               _loc7_;
               _loc7_;
               _loc4_ = 1;
               _loc6_;
            }
            _loc7_;
            _loc7_;
            this.lsd.§_-1-§(SafeGlobal.selected_level.§_-RP§,SafeGlobal.selected_level.max_players,_loc4_);
            _loc6_;
            _loc6_;
            _loc6_;
            this.lsd.§_-Nb§();
            _loc6_;
            _loc6_;
            this.lsd.x = 0;
            this.lsd.y = 0;
            _loc6_;
            _loc6_;
            _loc5_ = Global.saved_rooms.length;
            _loc6_;
            _loc6_;
            if((Global.saved_rooms.length) > 5)
            {
               _loc7_;
               _loc5_ = 5;
               _loc6_;
            }
            this.x = Global.positions[_loc5_][param2].x;
            _loc6_;
            this.y = Global.positions[_loc5_][param2].y;
            _loc6_;
         }
         else if(param3 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc6_;
            _loc6_;
            this.lsd.§_-hZ§();
            _loc6_;
            this.lsd.x = Global.large_thumbnail_x;
            _loc6_;
            _loc6_;
            this.lsd.y = Global.large_thumbnail_y;
         }
         else
         {
            _loc6_;
            this.lsd.§_-hZ§();
            _loc6_;
            _loc6_;
            this.lsd.x = Global.large_thumbnail_x;
            _loc7_;
            _loc7_;
            this.lsd.y = Global.large_thumbnail_y;
         }
         
         this.lsd.name = "lsd";
         _loc6_;
         addChild(this.lsd);
      }
      
      private function §_-4F§(param1:int, param2:int, param3:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = 0;
         var _loc4_:Array = SafeGlobal.campaigns[param1].thumbs;
         _loc7_;
         _loc7_;
         SafeGlobal.selected_level.thumbnail = _loc4_[param2];
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,param2,false);
         _loc7_;
         _loc7_;
         this.lsd.§_-9z§(SafeGlobal.§_-oX§(param1,param2));
         _loc7_;
         _loc7_;
         _loc7_;
         this.lsd.x = 0;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         this.lsd.y = 0;
         if(SafeGlobal.selected_level.mods != "")
         {
            this.lsd.§_-zu§(null,SafeGlobal.selected_level.mods);
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         if(param3 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc6_;
            _loc6_;
            this.x = SafeGlobal.selected_level.start_x;
            _loc6_;
            _loc6_;
            this.y = SafeGlobal.selected_level.start_y;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.lsd.§_-Di§(param1,param2);
            _loc6_;
            _loc6_;
            this.lsd.§_-Nb§();
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            if(param3 == Global.SCREEN_BROWSE_GAMES)
            {
               this.lsd.§_-Di§(param1,param2);
               _loc6_;
               _loc6_;
               this.lsd.§_-Nb§();
               _loc6_;
               _loc6_;
               _loc5_ = Global.saved_rooms.length;
               _loc6_;
               if((Global.saved_rooms.length) > 5)
               {
                  _loc5_ = 5;
                  _loc7_;
               }
               this.x = Global.positions[_loc5_][SafeGlobal.selected_level.§_-Tv§].x;
               _loc6_;
               _loc6_;
               this.y = Global.positions[_loc5_][SafeGlobal.selected_level.§_-Tv§].y;
            }
            else
            {
               _loc6_;
               _loc6_;
               this.lsd.§_-hZ§();
               this.x = Global.large_thumbnail_x;
               _loc7_;
               this.y = Global.large_thumbnail_y;
            }
         }
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-0P§(param1:int) : Boolean
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         var _loc2_:int = SafeGlobal.§_-QS§(param1);
         _loc6_;
         var _loc3_:int = SafeGlobal.§_-9c§(param1);
         var _loc4_:Array = SafeGlobal.campaigns[_loc2_].unlocked;
         if(_loc4_[_loc3_] == 1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            return false;
         }
         return true;
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(!(param1 == Global.SCREEN_CUSTOM_GAME || param1 == Global.SCREEN_GAME_END))
         {
            if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
            {
               §_-QO§();
               _loc3_;
            }
            else
            {
               this.lsd.§_-Gn§();
               _loc3_;
               §_-R3§(Global.large_thumbnail_x,Global.large_thumbnail_y,false,true);
            }
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc3_;
            _loc3_;
            this.lsd.§_-dX§();
            _loc2_;
            _loc2_;
            this.lsd.§_-Wa§();
            _loc2_;
            §_-R3§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
         }
         else if(param1 == Global.SCREEN_BROWSE_GAMES)
         {
            _loc2_;
            _loc2_;
            §_-hf§(1100);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM || param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM || param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.lsd.§_-dX§();
               _loc3_;
               this.lsd.§_-Wa§();
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               §_-R3§(SafeGlobal.selected_level.start_x - this.lsd.x,SafeGlobal.selected_level.start_y - this.lsd.y,true,true);
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_CUSTOM_GAME)
               {
                  §_-TO§(null);
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  if(param1 == Global.SCREEN_ZOOMGAME)
                  {
                     _loc3_;
                     _loc3_;
                     §_-TO§(null);
                  }
                  else if(param1 == Global.§_-A1§)
                  {
                     §_-TO§(null);
                  }
                  else
                  {
                     §_-hf§(1100);
                  }
                  
               }
            }
         }
         
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-y3§ = lobby_canvas.getChildByName("share_panel") as §_-y3§;
         _loc3_;
         if(_loc2_ != null)
         {
            _loc4_;
            _loc2_.tweenOut();
         }
      }
   }
}
