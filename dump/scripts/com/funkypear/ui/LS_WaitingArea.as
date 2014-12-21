package com.funkypear.ui
{
   public class LS_WaitingArea extends LobbyScreen
   {
      
      public function LS_WaitingArea()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-XT§:int;
      
      private var include:Boolean = false;
      
      private var §_-YB§:§_-a2§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = 0;
         _loc2_;
         _loc2_;
         y = 0;
         _loc2_;
         if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
         {
            _loc3_;
            _loc3_;
            x = 800;
            _loc2_;
            _loc2_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         this.§_-XT§ = param1;
         var _loc3_:* = 0;
         _loc7_;
         _loc7_;
         _loc7_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc7_;
            _loc7_;
            this.include = true;
            _loc3_ = SafeGlobal.§_-i§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            _loc6_;
            _loc6_;
            this.§_-jn§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
         }
         else if(param1 == Global.SCREEN_BROWSE_GAMES)
         {
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.selected_level.campaign_key;
            _loc6_;
            _loc6_;
            if(_loc3_ != 0)
            {
               _loc7_;
               this.include = true;
               _loc6_;
               _loc6_;
               _loc7_;
               if(this.§_-E3§(_loc3_))
               {
                  _loc7_;
                  this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
               }
               else
               {
                  this.§_-jn§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
                  _loc7_;
                  _loc7_;
               }
            }
            else
            {
               this.include = false;
               this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
            }
         }
         else if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            this.include = false;
            this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
         }
         else
         {
            _loc6_;
            _loc7_;
            if(param1 == Global.SCREEN_GAME_END)
            {
               _loc7_;
               _loc3_ = parseInt(SafeGlobal.replay_room.CampaignKey);
               _loc6_;
               _loc6_;
               if(_loc3_ != 0)
               {
                  _loc6_;
                  this.include = true;
                  _loc7_;
                  if(this.§_-E3§(_loc3_))
                  {
                     _loc6_;
                     this.§_-eM§(SafeGlobal.replay_room.Thumbnail,0,param1);
                  }
                  else
                  {
                     _loc6_;
                     _loc6_;
                     _loc4_ = SafeGlobal.§_-Py§(_loc3_);
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc5_ = SafeGlobal.§_-xg§(_loc3_);
                     this.§_-jn§(_loc4_,_loc5_,param1);
                  }
               }
               else
               {
                  this.include = false;
                  _loc6_;
                  _loc6_;
                  this.§_-eM§(SafeGlobal.replay_room.Thumbnail,0,param1);
               }
            }
            else if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
            {
               this.include = false;
               this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
            }
            
         }
         
         
      }
      
      public function §_-D§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(SafeGlobal.selected_level.is_private == false)
         {
            _loc3_;
            this.§_-YB§.§_-Eh§(param1);
         }
      }
      
      public function §_-QW§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(SafeGlobal.selected_level.is_private == false)
         {
            _loc2_;
            this.§_-YB§.tweenIntoGame();
         }
      }
      
      private function §_-eM§(param1:String, param2:int, param3:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         SafeGlobal.selected_level.thumbnail = param1;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,false);
         _loc6_;
         _loc6_;
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc6_;
            _loc6_;
            this.lsd.§_-DW§(null,SafeGlobal.selected_level.mods);
         }
         _loc7_;
         if(param3 == Global.SCREEN_BROWSE_GAMES)
         {
            _loc6_;
            _loc6_;
            this.lsd.§_-mo§();
            _loc4_ = 0;
            if(SafeGlobal.selected_level.§_-Ga§ == true)
            {
               _loc7_;
               _loc4_ = 1;
            }
            _loc6_;
            this.lsd.§_-Ap§(SafeGlobal.selected_level.§_-hx§,SafeGlobal.selected_level.max_players,_loc4_);
            _loc7_;
            this.lsd.§_-t9§();
            _loc6_;
            _loc7_;
            this.lsd.x = 0;
            this.lsd.y = 0;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc5_ = Global.saved_rooms.length;
            _loc7_;
            _loc7_;
            if((Global.saved_rooms.length) > 5)
            {
               _loc5_ = 5;
            }
            this.x = Global.positions[_loc5_][param2].x;
            this.y = Global.positions[_loc5_][param2].y;
         }
         else if(param3 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc6_;
            this.lsd.§_-fH§();
            _loc6_;
            _loc7_;
            _loc7_;
            this.lsd.x = Global.large_thumbnail_x;
            _loc6_;
            _loc6_;
            this.lsd.y = Global.large_thumbnail_y;
         }
         else
         {
            this.lsd.§_-fH§();
            _loc6_;
            this.lsd.x = Global.large_thumbnail_x;
            this.lsd.y = Global.large_thumbnail_y;
            _loc6_;
         }
         
         this.lsd.name = "lsd";
         _loc7_;
         addChild(this.lsd);
      }
      
      private function §_-jn§(param1:int, param2:int, param3:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = 0;
         var _loc4_:Array = SafeGlobal.campaigns[param1].thumbs;
         _loc7_;
         _loc6_;
         SafeGlobal.selected_level.thumbnail = _loc4_[param2];
         _loc6_;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,param2,false);
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.lsd.§_-66§(SafeGlobal.§_-i§(param1,param2));
         _loc6_;
         _loc6_;
         this.lsd.x = 0;
         _loc6_;
         _loc7_;
         _loc6_;
         this.lsd.y = 0;
         _loc6_;
         _loc6_;
         if(SafeGlobal.selected_level.mods != "")
         {
            this.lsd.§_-DW§(null,SafeGlobal.selected_level.mods);
            _loc6_;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         if(param3 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc6_;
            this.x = SafeGlobal.selected_level.start_x;
            this.y = SafeGlobal.selected_level.start_y;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.lsd.§_-6x§(param1,param2);
            _loc7_;
            _loc7_;
            _loc7_;
            this.lsd.§_-t9§();
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            if(param3 == Global.SCREEN_BROWSE_GAMES)
            {
               _loc6_;
               this.lsd.§_-6x§(param1,param2);
               this.lsd.§_-t9§();
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc5_ = Global.saved_rooms.length;
               _loc7_;
               if((Global.saved_rooms.length) > 5)
               {
                  _loc7_;
                  _loc7_;
                  _loc5_ = 5;
                  _loc7_;
               }
               this.x = Global.positions[_loc5_][SafeGlobal.selected_level.§_-p2§].x;
               this.y = Global.positions[_loc5_][SafeGlobal.selected_level.§_-p2§].y;
               _loc6_;
               _loc6_;
            }
            else
            {
               this.lsd.§_-fH§();
               _loc6_;
               _loc6_;
               this.x = Global.large_thumbnail_x;
               this.y = Global.large_thumbnail_y;
            }
         }
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-E3§(param1:int) : Boolean
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         var _loc2_:int = SafeGlobal.§_-Py§(param1);
         _loc5_;
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-xg§(param1);
         var _loc4_:Array = SafeGlobal.campaigns[_loc2_].unlocked;
         if(_loc4_[_loc3_] == 1)
         {
            _loc5_;
            _loc6_;
            return false;
         }
         return true;
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(param1 == Global.SCREEN_CUSTOM_GAME || param1 == Global.SCREEN_GAME_END))
         {
            if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
            {
               _loc3_;
               §_-L0§();
               _loc3_;
               _loc3_;
            }
            else
            {
               this.lsd.§_-bA§();
               §_-3j§(Global.large_thumbnail_x,Global.large_thumbnail_y,false,true);
            }
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(SafeGlobal.selected_level.is_private == false)
         {
            _loc1_;
            this.§_-YB§ = new §_-a2§();
            _loc1_;
            this.§_-YB§.init();
            _loc1_;
            lobby_canvas.addChild(this.§_-YB§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.lsd.§_-yq§();
            _loc2_;
            _loc2_;
            this.lsd.§_-0-e§();
            _loc2_;
            _loc2_;
            §_-3j§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
         }
         else
         {
            _loc2_;
            _loc2_;
            if(param1 == Global.SCREEN_BROWSE_GAMES)
            {
               _loc2_;
               _loc2_;
               §_-eY§(1100);
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM || param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM || param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.lsd.§_-yq§();
                  this.lsd.§_-0-e§();
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  §_-3j§(SafeGlobal.selected_level.start_x - this.lsd.x,SafeGlobal.selected_level.start_y - this.lsd.y,true,true);
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(param1 == Global.SCREEN_CUSTOM_GAME)
                  {
                     §_-Yc§(null);
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     if(param1 == Global.SCREEN_ZOOMGAME)
                     {
                        _loc3_;
                        _loc3_;
                        §_-Yc§(null);
                     }
                     else if(param1 == Global.§_-1y§)
                     {
                        _loc3_;
                        _loc3_;
                        §_-Yc§(null);
                        _loc3_;
                        _loc3_;
                     }
                     else
                     {
                        §_-eY§(1100);
                     }
                     
                  }
               }
            }
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-bu§ = lobby_canvas.getChildByName("share_panel") as §_-bu§;
         _loc4_;
         if(_loc2_ != null)
         {
            _loc3_;
            _loc2_.tweenOut();
            _loc4_;
            _loc4_;
         }
         if(this.§_-YB§ != null)
         {
            _loc3_;
            lobby_canvas.removeChild(this.§_-YB§);
         }
      }
   }
}
