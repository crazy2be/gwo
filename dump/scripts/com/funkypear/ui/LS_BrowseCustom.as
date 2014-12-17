package com.funkypear.ui
{
   import §_-ZN§.§_-Kh§;
   import §_-ZN§.§_-e§;
   
   public class LS_BrowseCustom extends LobbyScreen
   {
      
      public function LS_BrowseCustom()
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         super();
         var _loc1_:int = Global.custom_maps.length;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(_loc1_ % 5 != 0)
         {
            _loc4_;
            _loc2_ = 0;
            while(true)
            {
               if(_loc2_ >= 5)
               {
                  _loc4_;
                  _loc4_;
                  break;
               }
               _loc1_++;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(_loc1_ % 5 == 0)
               {
                  _loc3_;
                  _loc3_;
                  break;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
         Global.page_max_your_custom = _loc1_ / 5;
      }
      
      private var map_count:int;
      
      private var §_-H2§:int;
      
      private var §_-AQ§:int = 5;
      
      private var §_-Uy§:Array;
      
      private var §_-kR§:int;
      
      private var §_-HU§:§_-Kh§;
      
      private var §_-SL§:§_-e§;
      
      private var §_-ag§:Boolean = false;
      
      private var §_-8f§:Boolean = false;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
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
         var _loc7_:§_-ht§ = null;
         this.§_-Uy§ = new Array();
         _loc8_;
         _loc8_;
         this.§_-ag§ = false;
         this.§_-8f§ = false;
         this.map_count = Global.custom_maps.length;
         this.§_-H2§ = Global.page_id_your_custom * 5;
         this.§_-AQ§ = Global.custom_maps.length;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if(this.§_-AQ§ > 5)
         {
            _loc9_;
            _loc9_;
            this.§_-AQ§ = 5;
         }
         _loc9_;
         _loc9_;
         _loc8_;
         if(this.map_count > this.§_-H2§ + this.§_-AQ§)
         {
            _loc9_;
            this.§_-ag§ = true;
         }
         _loc9_;
         if(Global.page_id_your_custom > 0)
         {
            _loc8_;
            this.§_-8f§ = true;
         }
         var _loc3_:* = 0;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         if(this.map_count > 0)
         {
            _loc8_;
            _loc9_;
            _loc9_;
            _loc4_ = -1;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc2_ = this.§_-H2§;
            while(true)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               if(_loc2_ >= this.§_-H2§ + this.§_-AQ§)
               {
                  break;
               }
               _loc4_++;
               _loc8_;
               _loc6_ = "";
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               if(Global.custom_maps[_loc2_] == null)
               {
                  _loc8_;
                  _loc8_;
               }
               else
               {
                  _loc8_;
                  _loc6_ = Global.custom_maps[_loc2_].mapData;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
                  {
                     _loc8_;
                     _loc8_;
                     _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true,false,false);
                     _loc5_.§_-xL§(_loc2_);
                     _loc9_;
                     _loc5_.§_-V9§(Global.positions[5][_loc4_].x,Global.positions[5][_loc4_].y,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y);
                  }
                  else
                  {
                     _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true);
                     _loc5_.§_-xL§(_loc2_);
                     _loc8_;
                     _loc5_.x = Global.positions[5][_loc4_].x;
                     _loc9_;
                     _loc5_.y = Global.positions[5][_loc4_].y;
                  }
               }
               if(_loc5_ != null)
               {
                  _loc8_;
                  _loc8_;
                  _loc5_.§_-Ua§();
                  _loc5_.cacheAsBitmap = true;
                  addChild(_loc5_);
                  _loc9_;
                  _loc9_;
                  this.§_-Uy§.push(_loc5_);
                  _loc9_;
                  _loc3_++;
                  _loc9_;
               }
               _loc5_ = null;
               _loc8_;
               _loc8_;
               _loc2_++;
            }
            _loc9_;
            _loc9_;
         }
         if(_loc3_ == 0)
         {
            _loc7_ = new §_-ht§();
            _loc7_.§_-Uo§.text = "NO MAPS WERE FOUND";
            _loc8_;
            _loc8_;
            _loc7_.name = "lem";
            _loc9_;
            addChild(_loc7_);
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-kR§ = param1;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(true)
            {
               _loc4_;
               _loc4_;
               if(_loc2_ >= this.§_-Uy§.length)
               {
                  break;
               }
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
               {
                  (this.§_-Uy§[_loc2_] as LevelSelectDisplay).§_-iX§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
                  _loc4_;
                  _loc4_;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            _loc3_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  _loc4_;
                  §_-QO§();
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc3_;
                     §_-1I§();
                     _loc4_;
                  }
                  else
                  {
                     §_-QO§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc3_;
               §_-1I§();
            }
            else
            {
               §_-QO§();
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
         _loc1_ = 0;
         while(_loc1_ < this.§_-Uy§.length)
         {
            _loc2_ = this.§_-Uy§[_loc1_] as LevelSelectDisplay;
            if(_loc2_ != null)
            {
               _loc4_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               if(this.§_-kR§ == Global.SCREEN_WAITING_AREA || this.§_-kR§ == Global.SCREEN_GAME_END || this.§_-kR§ == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc3_;
                  _loc2_.§_-HQ§();
               }
               _loc2_.§_-QE§();
            }
            _loc1_++;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-ag§ == true)
         {
            _loc4_;
            _loc4_;
            this.§_-HU§ = new §_-Kh§();
            _loc3_;
            lobby_canvas.addChild(this.§_-HU§);
            _loc4_;
            _loc4_;
         }
         if(this.§_-8f§ == true)
         {
            _loc4_;
            this.§_-SL§ = new §_-e§();
            _loc4_;
            _loc4_;
            lobby_canvas.addChild(this.§_-SL§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc4_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            §_-sm§ = false;
            _loc4_;
            _loc4_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc4_;
            _loc4_;
            if(this.§_-Uy§.length > 1)
            {
               _loc4_;
               _loc4_;
               _loc2_ = 0;
               while(true)
               {
                  _loc4_;
                  _loc4_;
                  if(_loc2_ >= this.§_-Uy§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                  }
                  _loc2_++;
                  _loc4_;
                  _loc4_;
               }
            }
            else
            {
               §_-sm§ = true;
               _loc4_;
               §_-TO§(null);
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  §_-j6§();
               }
               else
               {
                  _loc3_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     _loc3_;
                     _loc3_;
                     §_-hf§();
                  }
                  else
                  {
                     §_-hf§();
                  }
               }
            }
            else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               §_-j6§();
            }
            else
            {
               §_-hf§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-HU§ != null)
         {
            lobby_canvas.removeChild(this.§_-HU§);
            _loc3_;
            _loc3_;
            this.§_-HU§ = null;
         }
         if(this.§_-SL§ != null)
         {
            lobby_canvas.removeChild(this.§_-SL§);
            this.§_-SL§ = null;
         }
      }
   }
}
