package com.funkypear.ui
{
   import §_-bY§.§_-V9§;
   import §_-bY§.§_-fo§;
   
   public class LS_BrowseCustom extends LobbyScreen
   {
      
      public function LS_BrowseCustom()
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         super();
         var _loc1_:int = Global.custom_maps.length;
         _loc4_;
         _loc4_;
         _loc3_;
         if(_loc1_ % 5 != 0)
         {
            _loc3_;
            _loc2_ = 0;
            while(true)
            {
               if(_loc2_ >= 5)
               {
                  _loc3_;
                  _loc3_;
                  break;
               }
               _loc1_++;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(_loc1_ % 5 == 0)
               {
                  _loc4_;
                  _loc4_;
                  break;
               }
               _loc2_++;
               _loc4_;
            }
         }
         Global.page_max_your_custom = _loc1_ / 5;
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
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
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
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:LevelSelectDisplay = null;
         var _loc6_:String = null;
         var _loc7_:§do § = null;
         _loc9_;
         this.§_-po§ = new Array();
         this.§_-8L§ = false;
         _loc8_;
         this.§_-wF§ = false;
         _loc9_;
         _loc9_;
         this.map_count = Global.custom_maps.length;
         _loc9_;
         _loc9_;
         this.§_-P§ = Global.page_id_your_custom * 5;
         this.§_-zs§ = Global.custom_maps.length;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_;
         if(this.§_-zs§ > 5)
         {
            this.§_-zs§ = 5;
         }
         _loc9_;
         _loc8_;
         _loc8_;
         if(this.map_count > this.§_-P§ + this.§_-zs§)
         {
            _loc8_;
            _loc8_;
            this.§_-8L§ = true;
         }
         _loc8_;
         _loc8_;
         if(Global.page_id_your_custom > 0)
         {
            _loc9_;
            this.§_-wF§ = true;
         }
         var _loc3_:* = 0;
         _loc9_;
         _loc8_;
         if(this.map_count > 0)
         {
            _loc8_;
            _loc8_;
            _loc4_ = -1;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc2_ = this.§_-P§;
            while(true)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               if(_loc2_ >= this.§_-P§ + this.§_-zs§)
               {
                  break;
               }
               _loc4_++;
               _loc6_ = "";
               _loc9_;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               if(Global.custom_maps[_loc2_] != null)
               {
                  _loc8_;
                  _loc8_;
                  _loc6_ = Global.custom_maps[_loc2_].mapData;
                  _loc9_;
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
                  {
                     _loc8_;
                     _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true,false,false);
                     _loc5_.§_-7z§(_loc2_);
                     _loc9_;
                     _loc9_;
                     _loc5_.§_-0-a§(Global.positions[5][_loc4_].x,Global.positions[5][_loc4_].y,Global.positions[5][SafeGlobal.selected_level.§_-p2§].x,Global.positions[5][SafeGlobal.selected_level.§_-p2§].y);
                  }
                  else
                  {
                     _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true);
                     _loc5_.§_-7z§(_loc2_);
                     _loc8_;
                     _loc8_;
                     _loc5_.x = Global.positions[5][_loc4_].x;
                     _loc8_;
                     _loc5_.y = Global.positions[5][_loc4_].y;
                  }
               }
               if(_loc5_ != null)
               {
                  _loc5_.§_-sG§();
                  _loc5_.cacheAsBitmap = true;
                  _loc8_;
                  _loc8_;
                  addChild(_loc5_);
                  _loc9_;
                  _loc9_;
                  this.§_-po§.push(_loc5_);
                  _loc9_;
                  _loc3_++;
               }
               _loc5_ = null;
               _loc9_;
               _loc9_;
               _loc2_++;
            }
         }
         if(_loc3_ == 0)
         {
            _loc7_ = new §do §();
            _loc7_.§_-P3§.text = "NO MAPS WERE FOUND";
            _loc9_;
            _loc7_.name = "lem";
            _loc8_;
            addChild(_loc7_);
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-XT§ = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
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
               _loc4_;
               if(_loc2_ >= this.§_-po§.length)
               {
                  break;
               }
               _loc4_;
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
               {
                  (this.§_-po§[_loc2_] as LevelSelectDisplay).§_-mH§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
               }
               _loc2_++;
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  _loc4_;
                  §_-L0§();
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc4_;
                     §_-9U§();
                     _loc3_;
                  }
                  else
                  {
                     §_-L0§();
                     _loc4_;
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc4_;
               §_-9U§();
               _loc3_;
               _loc3_;
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
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-po§.length)
         {
            _loc2_ = this.§_-po§[_loc1_] as LevelSelectDisplay;
            _loc4_;
            _loc4_;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               if(this.§_-XT§ == Global.SCREEN_WAITING_AREA || this.§_-XT§ == Global.SCREEN_GAME_END || this.§_-XT§ == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc2_.§_-En§();
                  _loc3_;
                  _loc3_;
               }
               _loc2_.§_-Kv§();
               _loc4_;
            }
            _loc1_++;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-8L§ == true)
         {
            _loc4_;
            _loc4_;
            this.§_-Sg§ = new §_-V9§();
            lobby_canvas.addChild(this.§_-Sg§);
            _loc3_;
            _loc3_;
         }
         if(this.§_-wF§ == true)
         {
            _loc4_;
            _loc4_;
            this.§_-vE§ = new §_-fo§();
            lobby_canvas.addChild(this.§_-vE§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            _loc4_;
            §_-vR§ = false;
            _loc4_;
            _loc3_;
            (this.§_-po§[SafeGlobal.selected_level.§_-p2§] as LevelSelectDisplay).§_-My§();
            _loc3_;
            if(this.§_-po§.length > 1)
            {
               _loc3_;
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
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     _loc3_;
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc3_;
                  }
                  _loc2_++;
                  _loc3_;
                  _loc3_;
               }
               _loc3_;
            }
            else
            {
               §_-vR§ = true;
               §_-Yc§(null);
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-4y§();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(Global.page_dir_clicked == 2)
                  {
                     §_-eY§();
                  }
                  else
                  {
                     §_-eY§();
                     _loc3_;
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc3_;
               _loc3_;
               §_-4y§();
            }
            else
            {
               §_-eY§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.§_-Sg§ != null)
         {
            _loc3_;
            _loc3_;
            lobby_canvas.removeChild(this.§_-Sg§);
            this.§_-Sg§ = null;
         }
         if(this.§_-vE§ != null)
         {
            lobby_canvas.removeChild(this.§_-vE§);
            _loc2_;
            this.§_-vE§ = null;
         }
      }
   }
}
