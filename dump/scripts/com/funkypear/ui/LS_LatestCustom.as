package com.funkypear.ui
{
   import §_-ZN§.§_-Kh§;
   import §_-ZN§.§_-e§;
   
   public class LS_LatestCustom extends LobbyScreen
   {
      
      public function LS_LatestCustom()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-Uy§:Array;
      
      private var §_-HU§:§_-Kh§;
      
      private var §_-SL§:§_-e§;
      
      private var §_-ag§:Boolean = false;
      
      private var §_-8f§:Boolean = false;
      
      private var §_-kR§:int;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc2_;
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
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:LevelSelectDisplay = null;
         var _loc9_:§_-ht§ = null;
         var _loc2_:* = true;
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc11_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc2_ = false;
            _loc3_ = false;
            _loc4_ = true;
         }
         this.§_-Uy§ = new Array();
         var _loc5_:* = true;
         _loc10_;
         _loc10_;
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
               _loc10_;
               _loc10_;
               _loc10_;
               _loc6_ = Global.latest_maps.length;
               _loc11_;
               if((Global.latest_maps.length) > 5)
               {
                  _loc10_;
                  _loc10_;
                  _loc6_ = 5;
               }
               _loc7_ = 0;
               while(true)
               {
                  _loc10_;
                  _loc10_;
                  if(_loc7_ >= _loc6_)
                  {
                     break;
                  }
                  _loc8_ = new LevelSelectDisplay(Global.latest_maps[_loc7_].thumbnail,_loc7_,true,_loc2_,_loc3_);
                  _loc8_.§_-qr§(Global.latest_maps[_loc7_].created_by);
                  _loc11_;
                  _loc11_;
                  if(_loc4_)
                  {
                     _loc8_.§_-V9§(Global.positions[5][_loc7_].x,Global.positions[5][_loc7_].y,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y);
                     _loc10_;
                     _loc10_;
                  }
                  else
                  {
                     _loc8_.x = Global.positions[_loc6_][_loc7_].x;
                     _loc8_.y = Global.positions[_loc6_][_loc7_].y;
                  }
                  _loc8_.§_-Ua§();
                  _loc8_.cacheAsBitmap = true;
                  addChild(_loc8_);
                  this.§_-Uy§.push(_loc8_);
                  _loc7_++;
               }
               _loc10_;
               _loc10_;
            }
         }
         if(_loc5_)
         {
            _loc10_;
            _loc10_;
            _loc9_ = new §_-ht§();
            _loc9_.§_-Uo§.text = "NO MORE MAPS WERE FOUND";
            _loc11_;
            _loc9_.name = "lem";
            _loc10_;
            addChild(_loc9_);
            _loc11_;
            _loc11_;
            this.§_-ag§ = false;
            _loc10_;
         }
         else if(_loc6_ < 5)
         {
            _loc10_;
            _loc10_;
            this.§_-ag§ = false;
            _loc10_;
            _loc10_;
         }
         else
         {
            this.§_-ag§ = true;
         }
         
         if(Global.page_id_latest_custom > 0)
         {
            _loc11_;
            _loc11_;
            this.§_-8f§ = true;
         }
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-kR§ = param1;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA || param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_;
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
               if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
               {
                  (this.§_-Uy§[_loc2_] as LevelSelectDisplay).§_-iX§(Global.positions[5][_loc2_].x,Global.positions[5][_loc2_].y);
                  _loc3_;
               }
               _loc2_++;
            }
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc3_;
                  §_-QO§();
                  _loc3_;
                  _loc3_;
               }
               else if(Global.page_dir_clicked == 2)
               {
                  _loc3_;
                  §_-1I§();
               }
               else
               {
                  §_-QO§();
                  _loc3_;
                  _loc3_;
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
            if(_loc2_ != null)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(this.§_-kR§ == Global.SCREEN_WAITING_AREA || this.§_-kR§ == Global.SCREEN_GAME_END || this.§_-kR§ == Global.SCREEN_CUSTOM_GAME)
               {
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
            _loc3_;
            _loc3_;
            this.§_-HU§ = new §_-Kh§();
            lobby_canvas.addChild(this.§_-HU§);
         }
         if(this.§_-8f§ == true)
         {
            this.§_-SL§ = new §_-e§();
            lobby_canvas.addChild(this.§_-SL§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc4_;
         if(param1 == Global.SCREEN_CUSTOM_GAME)
         {
            _loc4_;
            _loc4_;
            §_-sm§ = false;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc3_;
            _loc3_;
            if(this.§_-Uy§.length > 1)
            {
               _loc4_;
               _loc2_ = 0;
               while(true)
               {
                  _loc3_;
                  _loc3_;
                  if(_loc2_ >= this.§_-Uy§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     _loc3_;
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                  }
                  _loc2_++;
               }
            }
            else
            {
               §_-sm§ = true;
               §_-TO§(null);
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-j6§();
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  if(Global.page_dir_clicked == 2)
                  {
                     §_-hf§();
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     §_-j6§();
                     _loc4_;
                     _loc4_;
                  }
               }
            }
            else if(param1 == Global.SCREEN_CUSTOM_SELECT)
            {
               _loc4_;
               §_-hf§();
               _loc3_;
               _loc3_;
            }
            else
            {
               §_-j6§();
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.§_-HU§ != null)
         {
            lobby_canvas.removeChild(this.§_-HU§);
            _loc2_;
            _loc2_;
            this.§_-HU§ = null;
            _loc2_;
            _loc2_;
         }
         if(this.§_-SL§ != null)
         {
            _loc2_;
            _loc2_;
            lobby_canvas.removeChild(this.§_-SL§);
            this.§_-SL§ = null;
         }
      }
   }
}
