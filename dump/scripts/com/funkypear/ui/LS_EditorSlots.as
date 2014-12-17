package com.funkypear.ui
{
   import §_-ZN§.§_-Kh§;
   import §_-ZN§.§_-e§;
   
   public class LS_EditorSlots extends LobbyScreen
   {
      
      public function LS_EditorSlots()
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         super();
         _loc4_;
         _loc4_;
         if(Global.custom_maps.length == 1)
         {
            _loc4_;
            if(Global.custom_maps[0] == null)
            {
               _loc4_;
               _loc4_;
               _loc1_ = 1;
            }
            else
            {
               _loc5_;
               _loc4_;
               _loc1_ = Global.custom_maps.length + 1;
            }
         }
         else
         {
            _loc4_;
            _loc1_ = Global.custom_maps.length + 1;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         if(_loc1_ % 5 != 0)
         {
            _loc4_;
            _loc2_ = 0;
            while(true)
            {
               _loc5_;
               _loc4_;
               _loc4_;
               if(_loc2_ >= 5)
               {
                  break;
               }
               _loc1_++;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc1_ % 5 == 0)
               {
                  _loc5_;
                  break;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
         _loc4_;
         var _loc3_:int = _loc1_ / 5;
         _loc5_;
         if(_loc3_ > 2)
         {
            _loc4_;
            _loc4_;
            Global.page_max_editorslots = 2;
            _loc4_;
         }
         else
         {
            Global.page_max_editorslots = _loc3_;
         }
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc2_;
            x = 0;
            _loc3_;
            y = 0;
            _loc3_;
         }
         else
         {
            x = 800;
            _loc3_;
            _loc3_;
            y = 0;
         }
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:LevelSelectDisplay = null;
         var _loc6_:String = null;
         this.§_-Uy§ = new Array();
         _loc8_;
         this.§_-ag§ = false;
         _loc7_;
         this.§_-8f§ = false;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         if(Global.custom_maps.length == 1)
         {
            if(Global.custom_maps[0] == null)
            {
               _loc8_;
               this.map_count = 1;
            }
            else
            {
               this.map_count = Global.custom_maps.length + 1;
               _loc7_;
               _loc7_;
            }
         }
         else
         {
            this.map_count = Global.custom_maps.length + 1;
            _loc8_;
         }
         this.§_-H2§ = Global.page_id_editorslots * 5;
         _loc7_;
         _loc7_;
         this.§_-AQ§ = 5;
         _loc8_;
         _loc8_;
         _loc8_;
         if(this.map_count > this.§_-H2§ + this.§_-AQ§)
         {
            _loc7_;
            _loc7_;
            _loc8_;
            if(this.§_-H2§ + this.§_-AQ§ != 10)
            {
               _loc7_;
               this.§_-ag§ = true;
            }
         }
         if(Global.page_id_editorslots > 0)
         {
            _loc8_;
            _loc8_;
            this.§_-8f§ = true;
         }
         var _loc3_:* = false;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         if(this.map_count > 0)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc4_ = -1;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc2_ = this.§_-H2§;
            while(true)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               if(_loc2_ >= this.§_-H2§ + this.§_-AQ§)
               {
                  break;
               }
               _loc4_++;
               _loc7_;
               _loc6_ = "";
               _loc8_;
               _loc8_;
               if(_loc2_ >= Global.custom_maps.length)
               {
                  _loc8_;
                  if(!_loc3_)
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(param1 == Global.SCREEN_EDITOR)
                     {
                        _loc7_;
                        _loc7_;
                        _loc5_ = new LevelSelectDisplay("",_loc4_,true,false,false);
                        _loc5_.§_-rE§();
                        _loc8_;
                        _loc5_.§_-V9§(Global.positions[this.§_-AQ§][_loc4_].x,Global.positions[this.§_-AQ§][_loc4_].y,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].y);
                        _loc8_;
                        _loc8_;
                     }
                     else
                     {
                        _loc5_ = new LevelSelectDisplay("",_loc4_,true);
                        _loc5_.§_-rE§();
                        _loc7_;
                        _loc7_;
                        _loc5_.x = Global.positions[this.§_-AQ§][_loc4_].x;
                        _loc8_;
                        _loc8_;
                        _loc5_.y = Global.positions[this.§_-AQ§][_loc4_].y;
                     }
                     _loc3_ = true;
                  }
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  if(Global.custom_maps[_loc2_] == null)
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     if(!_loc3_)
                     {
                        _loc7_;
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        if(param1 == Global.SCREEN_EDITOR)
                        {
                           _loc5_ = new LevelSelectDisplay("",_loc4_,true,false,false);
                           _loc5_.§_-rE§();
                           _loc8_;
                           _loc8_;
                           _loc5_.§_-V9§(Global.positions[this.§_-AQ§][_loc4_].x,Global.positions[this.§_-AQ§][_loc4_].y,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].y);
                           _loc8_;
                        }
                        else
                        {
                           _loc5_ = new LevelSelectDisplay("",_loc4_,true);
                           _loc5_.§_-rE§();
                           _loc8_;
                           _loc5_.x = Global.positions[this.§_-AQ§][_loc4_].x;
                           _loc8_;
                           _loc5_.y = Global.positions[this.§_-AQ§][_loc4_].y;
                        }
                        _loc3_ = true;
                     }
                  }
                  else
                  {
                     _loc8_;
                     _loc6_ = Global.custom_maps[_loc2_].mapData;
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     if(param1 == Global.SCREEN_EDITOR)
                     {
                        _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true,false,false);
                        _loc5_.§_-xL§(_loc2_,true);
                        _loc8_;
                        _loc8_;
                        _loc5_.§_-V9§(Global.positions[this.§_-AQ§][_loc4_].x,Global.positions[this.§_-AQ§][_loc4_].y,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].y);
                     }
                     else
                     {
                        _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true);
                        _loc5_.§_-xL§(_loc2_,true);
                        _loc8_;
                        _loc5_.x = Global.positions[this.§_-AQ§][_loc4_].x;
                        _loc7_;
                        _loc7_;
                        _loc5_.y = Global.positions[this.§_-AQ§][_loc4_].y;
                     }
                  }
               }
               if(_loc5_ != null)
               {
                  _loc5_.§_-Ua§();
                  _loc5_.cacheAsBitmap = true;
                  addChild(_loc5_);
                  this.§_-Uy§.push(_loc5_);
                  _loc7_;
                  _loc7_;
               }
               _loc5_ = null;
               _loc8_;
               _loc2_++;
            }
            _loc8_;
         }
         else if(!_loc3_)
         {
            _loc7_;
            if(param1 == Global.SCREEN_EDITOR)
            {
               _loc5_ = new LevelSelectDisplay("",0,true,false,false);
               _loc5_.§_-rE§();
               _loc8_;
               _loc8_;
               _loc5_.§_-V9§(Global.positions[this.§_-AQ§][0].x,Global.positions[this.§_-AQ§][0].y,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].x,Global.positions[this.§_-AQ§][SafeGlobal.selected_level.§_-Tv§].y);
            }
            else
            {
               _loc5_ = new LevelSelectDisplay("",0,true);
               _loc5_.§_-rE§();
               _loc7_;
               _loc7_;
               _loc5_.x = Global.positions[this.§_-AQ§][0].x;
               _loc8_;
               _loc5_.y = Global.positions[this.§_-AQ§][0].y;
            }
            _loc5_.§_-Ua§();
            _loc5_.cacheAsBitmap = true;
            _loc8_;
            addChild(_loc5_);
            _loc8_;
            _loc8_;
            this.§_-Uy§.push(_loc5_);
            _loc3_ = true;
         }
         
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-kR§ = param1;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_EDITOR)
         {
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
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
               {
                  (this.§_-Uy§[_loc2_] as LevelSelectDisplay).§_-iX§(Global.positions[this.§_-AQ§][_loc2_].x,Global.positions[this.§_-AQ§][_loc2_].y);
                  _loc3_;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(param1 == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-QO§();
               }
               else if(Global.page_dir_clicked == 2)
               {
                  _loc4_;
                  _loc4_;
                  §_-1I§();
               }
               else
               {
                  §_-QO§();
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
         _loc4_;
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-Uy§.length)
         {
            _loc2_ = this.§_-Uy§[_loc1_] as LevelSelectDisplay;
            _loc4_;
            _loc4_;
            if(_loc2_ != null)
            {
               _loc4_;
               if(this.§_-kR§ == Global.SCREEN_EDITOR)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_.§_-HQ§();
                  _loc3_;
                  _loc3_;
               }
               _loc2_.§_-QE§();
               _loc3_;
               _loc3_;
            }
            _loc1_++;
         }
         _loc3_;
         _loc4_;
         if(this.§_-ag§ == true)
         {
            this.§_-HU§ = new §_-Kh§();
            lobby_canvas.addChild(this.§_-HU§);
            _loc4_;
         }
         if(this.§_-8f§ == true)
         {
            this.§_-SL§ = new §_-e§();
            lobby_canvas.addChild(this.§_-SL§);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc3_;
            _loc3_;
            §_-sm§ = false;
            _loc4_;
            _loc4_;
            (this.§_-Uy§[SafeGlobal.selected_level.§_-Tv§] as LevelSelectDisplay).§_-Vy§();
            _loc3_;
            if(this.§_-Uy§.length > 1)
            {
               _loc4_;
               _loc2_ = 0;
               while(true)
               {
                  _loc3_;
                  if(_loc2_ >= this.§_-Uy§.length)
                  {
                     break;
                  }
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-Tv§)
                  {
                     (this.§_-Uy§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                  }
                  _loc2_++;
                  _loc4_;
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
            if(param1 == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc3_;
                  _loc3_;
                  §_-j6§();
               }
               else if(Global.page_dir_clicked == 2)
               {
                  §_-hf§();
                  _loc4_;
               }
               else
               {
                  §_-hf§();
                  _loc3_;
                  _loc3_;
               }
               
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
            _loc2_;
            _loc2_;
            lobby_canvas.removeChild(this.§_-HU§);
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
