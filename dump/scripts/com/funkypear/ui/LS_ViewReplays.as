package com.funkypear.ui
{
   public class LS_ViewReplays extends LobbyScreen
   {
      
      public function LS_ViewReplays()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-Uy§:Array;
      
      private var §_-kR§:int;
      
      private var map_count:int;
      
      private var §_-H2§:int;
      
      private var §_-AQ§:int = 5;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1 == Global.SCREEN_HUB)
         {
            _loc2_;
            _loc2_;
            x = 800;
            _loc2_;
            _loc2_;
            y = 0;
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
         var _loc10_:§_-ht§ = null;
         _loc11_;
         _loc11_;
         this.§_-Uy§ = new Array();
         this.map_count = Global.replay_list.length;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc11_;
         if(this.map_count > 5)
         {
            _loc11_;
            _loc11_;
            this.map_count = 5;
            _loc11_;
            _loc11_;
         }
         this.§_-H2§ = 0;
         this.§_-AQ§ = 5;
         _loc12_;
         if(this.map_count > 0)
         {
            _loc11_;
            _loc11_;
            _loc2_ = -1;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = this.§_-H2§;
            while(_loc3_ < this.§_-H2§ + this.map_count)
            {
               _loc2_++;
               _loc12_;
               _loc12_;
               _loc5_ = "";
               _loc5_ = Global.replay_list[_loc3_].thumbnail;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(param1 == Global.SCREEN_EDIT_REPLAY || param1 == Global.SCREEN_REPLAY_FAIL || param1 == Global.SCREEN_REPLAY_SUCCESS)
               {
                  _loc4_ = new LevelSelectDisplay(_loc5_,_loc2_,true,false,false);
                  _loc4_.§_-Zy§(Global.replay_list[_loc3_].date);
                  _loc11_;
                  _loc11_;
                  _loc4_.§_-V9§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y);
               }
               else
               {
                  _loc4_ = new LevelSelectDisplay(_loc5_,_loc2_,true);
                  _loc4_.§_-Zy§(Global.replay_list[_loc3_].date);
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
                  _loc12_;
                  _loc9_ = 0;
                  _loc12_;
                  while(_loc9_ < _loc8_.length)
                  {
                     _loc7_.push(int(_loc8_[_loc9_]));
                     _loc12_;
                     _loc9_++;
                     _loc12_;
                  }
                  _loc12_;
                  _loc12_;
                  _loc4_.§_-zu§(_loc7_);
               }
               _loc4_.§_-Ua§();
               _loc11_;
               _loc4_.cacheAsBitmap = true;
               _loc12_;
               _loc12_;
               addChild(_loc4_);
               this.§_-Uy§.push(_loc4_);
               _loc11_;
               _loc11_;
               _loc3_++;
            }
         }
         else
         {
            _loc10_ = new §_-ht§();
            _loc10_.§_-Uo§.text = "NO REPLAYS WERE FOUND";
            _loc12_;
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
         _loc3_;
         _loc3_;
         this.§_-kR§ = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_EDIT_REPLAY || param1 == Global.SCREEN_REPLAY_FAIL || param1 == Global.SCREEN_REPLAY_SUCCESS)
         {
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-Uy§.length)
            {
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
               {
                  _loc3_;
                  (this.§_-Uy§[_loc2_] as LevelSelectDisplay).§_-iX§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
                  _loc3_;
                  _loc3_;
               }
               _loc2_++;
               _loc3_;
            }
            _loc4_;
         }
         else
         {
            §_-QO§();
         }
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_EDIT_REPLAY)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_menu.tweenIn();
            _loc2_;
            _loc2_;
            _loc3_;
            Global.lobby_display.lobby_nav.tweenIn();
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_stats.tweenIn();
            _loc2_;
            _loc2_;
            Global.lobby_display.logo.tweenIn();
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:LevelSelectDisplay = null;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-Uy§.length)
         {
            _loc2_ = this.§_-Uy§[_loc1_] as LevelSelectDisplay;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.§_-kR§ == Global.SCREEN_EDIT_REPLAY || this.§_-kR§ == Global.SCREEN_REPLAY_FAIL || this.§_-kR§ == Global.SCREEN_REPLAY_SUCCESS)
               {
                  _loc2_.§_-HQ§();
               }
               _loc2_.§_-QE§();
               _loc4_;
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
         _loc4_;
         if(param1 == Global.SCREEN_EDIT_REPLAY)
         {
            _loc4_;
            §_-sm§ = false;
            _loc3_;
            _loc3_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc4_;
            _loc4_;
            if(this.§_-Uy§.length > 1)
            {
               _loc3_;
               _loc2_ = 0;
               while(_loc2_ < this.§_-Uy§.length)
               {
                  _loc4_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     _loc3_;
                     _loc3_;
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc3_;
                  }
                  _loc2_++;
               }
               _loc4_;
               _loc4_;
            }
            else
            {
               §_-sm§ = true;
               §_-TO§(null);
               _loc3_;
            }
         }
         else
         {
            §_-j6§();
         }
      }
   }
}
