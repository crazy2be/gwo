package com.funkypear.ui
{
   public class LS_ViewReplays extends LobbyScreen
   {
      
      public function LS_ViewReplays()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-po§:Array;
      
      private var §_-XT§:int;
      
      private var map_count:int;
      
      private var §_-P§:int;
      
      private var §_-zs§:int = 5;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 == Global.SCREEN_HUB)
         {
            _loc3_;
            x = 800;
            _loc3_;
            _loc3_;
            y = 0;
            _loc3_;
            _loc3_;
         }
         else
         {
            x = 0;
            _loc2_;
            _loc2_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:LevelSelectDisplay = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:§do § = null;
         this.§_-po§ = new Array();
         this.map_count = Global.replay_list.length;
         _loc11_;
         _loc11_;
         _loc12_;
         if(this.map_count > 5)
         {
            this.map_count = 5;
         }
         this.§_-P§ = 0;
         this.§_-zs§ = 5;
         _loc12_;
         _loc12_;
         if(this.map_count > 0)
         {
            _loc12_;
            _loc12_;
            _loc11_;
            _loc2_ = -1;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = this.§_-P§;
            while(_loc3_ < this.§_-P§ + this.map_count)
            {
               _loc2_++;
               _loc5_ = "";
               _loc5_ = Global.replay_list[_loc3_].thumbnail;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(param1 == Global.SCREEN_EDIT_REPLAY || param1 == Global.SCREEN_REPLAY_FAIL || param1 == Global.SCREEN_REPLAY_SUCCESS)
               {
                  _loc4_ = new LevelSelectDisplay(_loc5_,_loc2_,true,false,false);
                  _loc4_.§_-Mb§(Global.replay_list[_loc3_].date);
                  _loc4_.§_-0-a§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y,Global.positions[5][SafeGlobal.selected_level.§_-p2§].x,Global.positions[5][SafeGlobal.selected_level.§_-p2§].y);
               }
               else
               {
                  _loc4_ = new LevelSelectDisplay(_loc5_,_loc2_,true);
                  _loc4_.§_-Mb§(Global.replay_list[_loc3_].date);
                  _loc12_;
                  _loc12_;
                  _loc4_.x = Global.positions[5][_loc2_].x;
                  _loc11_;
                  _loc4_.y = Global.positions[5][_loc2_].y;
               }
               _loc12_;
               _loc11_;
               _loc11_;
               _loc6_ = Global.replay_list[_loc3_].mods;
               if(_loc6_ != "")
               {
                  _loc7_ = new Array();
                  _loc8_ = _loc6_.split(",");
                  _loc11_;
                  _loc11_;
                  _loc9_ = 0;
                  _loc11_;
                  while(_loc9_ < _loc8_.length)
                  {
                     _loc7_.push(int(_loc8_[_loc9_]));
                     _loc11_;
                     _loc9_++;
                     _loc11_;
                  }
                  _loc12_;
                  _loc4_.§_-DW§(_loc7_);
               }
               _loc4_.§_-sG§();
               _loc4_.cacheAsBitmap = true;
               addChild(_loc4_);
               _loc11_;
               this.§_-po§.push(_loc4_);
               _loc12_;
               _loc3_++;
            }
         }
         else
         {
            _loc10_ = new §do §();
            _loc10_.§_-P3§.text = "NO REPLAYS WERE FOUND";
            _loc11_;
            _loc11_;
            _loc10_.name = "lem";
            _loc12_;
            _loc12_;
            addChild(_loc10_);
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         this.§_-XT§ = param1;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_EDIT_REPLAY || param1 == Global.SCREEN_REPLAY_FAIL || param1 == Global.SCREEN_REPLAY_SUCCESS)
         {
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-po§.length)
            {
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
               {
                  _loc3_;
                  (this.§_-po§[_loc2_] as LevelSelectDisplay).§_-mH§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
                  _loc3_;
               }
               _loc2_++;
               _loc4_;
            }
            _loc4_;
         }
         else
         {
            §_-L0§();
         }
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1 == Global.SCREEN_EDIT_REPLAY)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_menu.tweenIn();
            _loc3_;
            _loc2_;
            Global.lobby_display.lobby_nav.tweenIn();
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenIn();
            _loc3_;
            _loc3_;
            Global.lobby_display.logo.tweenIn();
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               if(this.§_-XT§ == Global.SCREEN_EDIT_REPLAY || this.§_-XT§ == Global.SCREEN_REPLAY_FAIL || this.§_-XT§ == Global.SCREEN_REPLAY_SUCCESS)
               {
                  _loc4_;
                  _loc2_.§_-En§();
                  _loc3_;
               }
               _loc2_.§_-Kv§();
               _loc3_;
            }
            _loc1_++;
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_EDIT_REPLAY)
         {
            _loc3_;
            _loc3_;
            §_-vR§ = false;
            _loc3_;
            _loc4_;
            _loc4_;
            (this.§_-po§[SafeGlobal.selected_level.§_-p2§] as LevelSelectDisplay).§_-My§();
            _loc3_;
            if(this.§_-po§.length > 1)
            {
               _loc4_;
               _loc2_ = 0;
               while(_loc2_ < this.§_-po§.length)
               {
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     _loc4_;
                     _loc4_;
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc3_;
                  }
                  _loc2_++;
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
            §_-4y§();
         }
      }
   }
}
