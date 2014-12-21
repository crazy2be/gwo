package com.funkypear.ui
{
   import §_-bY§.§_-V9§;
   import §_-bY§.§_-fo§;
   
   public class LS_LatestCustom extends LobbyScreen
   {
      
      public function LS_LatestCustom()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-po§:Array;
      
      private var §_-Sg§:§_-V9§;
      
      private var §_-vE§:§_-fo§;
      
      private var §_-8L§:Boolean = false;
      
      private var §_-wF§:Boolean = false;
      
      private var §_-XT§:int;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
            x = 0;
            y = 0;
            _loc3_;
            _loc3_;
         }
         else
         {
            x = 800;
            _loc2_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:LevelSelectDisplay = null;
         var _loc9_:§do § = null;
         var _loc2_:* = true;
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc10_;
            _loc10_;
            _loc2_ = false;
            _loc11_;
            _loc11_;
            _loc3_ = false;
            _loc4_ = true;
            _loc11_;
            _loc11_;
         }
         this.§_-po§ = new Array();
         var _loc5_:* = true;
         _loc11_;
         _loc11_;
         if(Global.latest_maps != null)
         {
            _loc10_;
            _loc10_;
            if(Global.latest_maps.length > 0)
            {
               _loc5_ = false;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc6_ = Global.latest_maps.length;
               _loc10_;
               if((Global.latest_maps.length) > 5)
               {
                  _loc10_;
                  _loc6_ = 5;
               }
               _loc7_ = 0;
               while(true)
               {
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  if(_loc7_ >= _loc6_)
                  {
                     break;
                  }
                  _loc8_ = new LevelSelectDisplay(Global.latest_maps[_loc7_].thumbnail,_loc7_,true,_loc2_,_loc3_);
                  _loc8_.§_-Sn§(Global.latest_maps[_loc7_].created_by);
                  if(_loc4_)
                  {
                     _loc8_.§_-0-a§(Global.positions[5][_loc7_].x,Global.positions[5][_loc7_].y,Global.positions[5][SafeGlobal.selected_level.§_-p2§].x,Global.positions[5][SafeGlobal.selected_level.§_-p2§].y);
                     _loc11_;
                     _loc11_;
                  }
                  else
                  {
                     _loc8_.x = Global.positions[_loc6_][_loc7_].x;
                     _loc8_.y = Global.positions[_loc6_][_loc7_].y;
                     _loc10_;
                     _loc10_;
                  }
                  _loc8_.§_-sG§();
                  _loc8_.cacheAsBitmap = true;
                  _loc11_;
                  addChild(_loc8_);
                  _loc10_;
                  this.§_-po§.push(_loc8_);
                  _loc7_++;
               }
               _loc10_;
            }
         }
         if(_loc5_)
         {
            _loc10_;
            _loc9_ = new §do §();
            _loc9_.§_-P3§.text = "NO MORE MAPS WERE FOUND";
            _loc11_;
            _loc9_.name = "lem";
            _loc11_;
            addChild(_loc9_);
            _loc10_;
            _loc10_;
            this.§_-8L§ = false;
            _loc11_;
         }
         else if(_loc6_ < 5)
         {
            _loc11_;
            this.§_-8L§ = false;
            _loc10_;
         }
         else
         {
            this.§_-8L§ = true;
         }
         
         if(Global.page_id_latest_custom > 0)
         {
            _loc11_;
            _loc11_;
            this.§_-wF§ = true;
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         this.§_-XT§ = param1;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
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
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
               {
                  (this.§_-po§[_loc2_] as LevelSelectDisplay).§_-mH§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
                  _loc3_;
                  _loc3_;
               }
               _loc2_++;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-L0§();
               }
               else if(Global.page_dir_clicked == 2)
               {
                  §_-9U§();
               }
               else
               {
                  §_-L0§();
               }
               
            }
            else
            {
               §_-L0§();
            }
         }
      }
      
      override public function finishTweenOn() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:LevelSelectDisplay = null;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-po§.length)
         {
            _loc2_ = this.§_-po§[_loc1_] as LevelSelectDisplay;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(this.§_-XT§ == Global.SCREEN_WAITING_AREA || this.§_-XT§ == Global.SCREEN_GAME_END || this.§_-XT§ == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc3_;
                  _loc2_.§_-En§();
                  _loc4_;
                  _loc4_;
               }
               _loc2_.§_-Kv§();
            }
            _loc1_++;
         }
         _loc4_;
         _loc4_;
         _loc3_;
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
            _loc3_;
            §_-vR§ = false;
            _loc4_;
            _loc4_;
            _loc4_;
            (this.§_-po§[SafeGlobal.selected_level.§_-p2§] as LevelSelectDisplay).§_-My§();
            _loc3_;
            if(this.§_-po§.length > 1)
            {
               _loc4_;
               _loc2_ = 0;
               while(true)
               {
                  _loc4_;
                  _loc4_;
                  if(_loc2_ >= this.§_-po§.length)
                  {
                     break;
                  }
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                  }
                  _loc2_++;
               }
            }
            else
            {
               §_-vR§ = true;
               _loc3_;
               _loc3_;
               §_-Yc§(null);
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            _loc4_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  §_-4y§();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc3_;
                     §_-eY§();
                     _loc4_;
                  }
                  else
                  {
                     §_-4y§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_CUSTOM_SELECT)
            {
               §_-eY§();
            }
            else
            {
               §_-4y§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-Sg§ != null)
         {
            lobby_canvas.removeChild(this.§_-Sg§);
            this.§_-Sg§ = null;
         }
         if(this.§_-vE§ != null)
         {
            _loc3_;
            _loc3_;
            lobby_canvas.removeChild(this.§_-vE§);
            this.§_-vE§ = null;
         }
      }
   }
}
