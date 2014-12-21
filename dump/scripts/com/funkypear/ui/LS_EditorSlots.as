package com.funkypear.ui
{
   import §_-bY§.§_-V9§;
   import §_-bY§.§_-fo§;
   
   public class LS_EditorSlots extends LobbyScreen
   {
      
      public function LS_EditorSlots()
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         super();
         _loc5_;
         if(Global.custom_maps.length == 1)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(Global.custom_maps[0] == null)
            {
               _loc4_;
               _loc5_;
               _loc1_ = 1;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc1_ = Global.custom_maps.length + 1;
               _loc5_;
            }
         }
         else
         {
            _loc5_;
            _loc1_ = Global.custom_maps.length + 1;
            _loc4_;
            _loc4_;
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
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc2_ >= 5)
               {
                  break;
               }
               _loc1_++;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc1_ % 5 == 0)
               {
                  _loc4_;
                  _loc4_;
                  break;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
         _loc5_;
         _loc5_;
         var _loc3_:int = _loc1_ / 5;
         _loc4_;
         _loc4_;
         if(_loc3_ > 2)
         {
            _loc4_;
            Global.page_max_editorslots = 2;
            _loc5_;
            _loc5_;
         }
         else
         {
            Global.page_max_editorslots = _loc3_;
         }
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc2_;
            _loc2_;
            x = 0;
            _loc2_;
            _loc2_;
            y = 0;
            _loc2_;
         }
         else
         {
            x = 800;
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
         _loc8_;
         _loc8_;
         this.§_-po§ = new Array();
         _loc8_;
         _loc8_;
         this.§_-8L§ = false;
         _loc7_;
         this.§_-wF§ = false;
         _loc8_;
         _loc8_;
         if(Global.custom_maps.length == 1)
         {
            if(Global.custom_maps[0] == null)
            {
               this.map_count = 1;
               _loc8_;
            }
            else
            {
               this.map_count = Global.custom_maps.length + 1;
            }
         }
         else
         {
            this.map_count = Global.custom_maps.length + 1;
         }
         this.§_-P§ = Global.page_id_editorslots * 5;
         this.§_-zs§ = 5;
         _loc8_;
         _loc8_;
         _loc8_;
         if(this.map_count > this.§_-P§ + this.§_-zs§)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            if(this.§_-P§ + this.§_-zs§ != 10)
            {
               _loc8_;
               _loc8_;
               this.§_-8L§ = true;
               _loc8_;
            }
         }
         if(Global.page_id_editorslots > 0)
         {
            this.§_-wF§ = true;
         }
         var _loc3_:* = false;
         _loc7_;
         _loc7_;
         _loc8_;
         if(this.map_count > 0)
         {
            _loc8_;
            _loc7_;
            _loc7_;
            _loc4_ = -1;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc2_ = this.§_-P§;
            while(true)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc2_ >= this.§_-P§ + this.§_-zs§)
               {
                  break;
               }
               _loc4_++;
               _loc6_ = "";
               _loc8_;
               _loc8_;
               if(_loc2_ >= Global.custom_maps.length)
               {
                  _loc8_;
                  _loc8_;
                  if(!_loc3_)
                  {
                     _loc8_;
                     _loc8_;
                     if(param1 == Global.SCREEN_EDITOR)
                     {
                        _loc8_;
                        _loc8_;
                        _loc5_ = new LevelSelectDisplay("",_loc4_,true,false,false);
                        _loc5_.§_-Lx§();
                        _loc7_;
                        _loc7_;
                        _loc5_.§_-0-a§(Global.positions[this.§_-zs§][_loc4_].x,Global.positions[this.§_-zs§][_loc4_].y,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].x,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].y);
                        _loc7_;
                     }
                     else
                     {
                        _loc5_ = new LevelSelectDisplay("",_loc4_,true);
                        _loc5_.§_-Lx§();
                        _loc7_;
                        _loc7_;
                        _loc5_.x = Global.positions[this.§_-zs§][_loc4_].x;
                        _loc7_;
                        _loc5_.y = Global.positions[this.§_-zs§][_loc4_].y;
                     }
                     _loc3_ = true;
                  }
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  if(Global.custom_maps[_loc2_] == null)
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     if(!_loc3_)
                     {
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        if(param1 == Global.SCREEN_EDITOR)
                        {
                           _loc8_;
                           _loc8_;
                           _loc5_ = new LevelSelectDisplay("",_loc4_,true,false,false);
                           _loc5_.§_-Lx§();
                           _loc7_;
                           _loc7_;
                           _loc5_.§_-0-a§(Global.positions[this.§_-zs§][_loc4_].x,Global.positions[this.§_-zs§][_loc4_].y,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].x,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].y);
                           _loc7_;
                           _loc7_;
                        }
                        else
                        {
                           _loc5_ = new LevelSelectDisplay("",_loc4_,true);
                           _loc5_.§_-Lx§();
                           _loc8_;
                           _loc5_.x = Global.positions[this.§_-zs§][_loc4_].x;
                           _loc7_;
                           _loc5_.y = Global.positions[this.§_-zs§][_loc4_].y;
                        }
                        _loc3_ = true;
                     }
                  }
                  else
                  {
                     _loc7_;
                     _loc6_ = Global.custom_maps[_loc2_].mapData;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(param1 == Global.SCREEN_EDITOR)
                     {
                        _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true,false,false);
                        _loc5_.§_-7z§(_loc2_,true);
                        _loc7_;
                        _loc7_;
                        _loc5_.§_-0-a§(Global.positions[this.§_-zs§][_loc4_].x,Global.positions[this.§_-zs§][_loc4_].y,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].x,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].y);
                     }
                     else
                     {
                        _loc5_ = new LevelSelectDisplay(_loc6_,_loc4_,true);
                        _loc5_.§_-7z§(_loc2_,true);
                        _loc7_;
                        _loc5_.x = Global.positions[this.§_-zs§][_loc4_].x;
                        _loc7_;
                        _loc7_;
                        _loc5_.y = Global.positions[this.§_-zs§][_loc4_].y;
                     }
                  }
               }
               if(_loc5_ != null)
               {
                  _loc5_.§_-sG§();
                  _loc5_.cacheAsBitmap = true;
                  addChild(_loc5_);
                  this.§_-po§.push(_loc5_);
               }
               _loc5_ = null;
               _loc7_;
               _loc7_;
               _loc2_++;
            }
         }
         else if(!_loc3_)
         {
            _loc8_;
            _loc8_;
            if(param1 == Global.SCREEN_EDITOR)
            {
               _loc5_ = new LevelSelectDisplay("",0,true,false,false);
               _loc5_.§_-Lx§();
               _loc5_.§_-0-a§(Global.positions[this.§_-zs§][0].x,Global.positions[this.§_-zs§][0].y,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].x,Global.positions[this.§_-zs§][SafeGlobal.selected_level.§_-p2§].y);
            }
            else
            {
               _loc5_ = new LevelSelectDisplay("",0,true);
               _loc5_.§_-Lx§();
               _loc8_;
               _loc8_;
               _loc5_.x = Global.positions[this.§_-zs§][0].x;
               _loc8_;
               _loc8_;
               _loc5_.y = Global.positions[this.§_-zs§][0].y;
            }
            _loc5_.§_-sG§();
            _loc7_;
            _loc5_.cacheAsBitmap = true;
            _loc7_;
            _loc7_;
            addChild(_loc5_);
            _loc8_;
            _loc8_;
            this.§_-po§.push(_loc5_);
            _loc3_ = true;
         }
         
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-XT§ = param1;
         _loc4_;
         _loc4_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc4_;
            _loc4_;
            _loc2_ = 0;
            while(true)
            {
               _loc3_;
               if(_loc2_ >= this.§_-po§.length)
               {
                  break;
               }
               _loc4_;
               _loc3_;
               if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
               {
                  _loc3_;
                  _loc3_;
                  (this.§_-po§[_loc2_] as LevelSelectDisplay).§_-mH§(Global.positions[this.§_-zs§][_loc2_].x,Global.positions[this.§_-zs§][_loc2_].y);
                  _loc4_;
                  _loc4_;
               }
               _loc2_++;
               _loc3_;
            }
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               if(Global.page_dir_clicked == 1)
               {
                  §_-L0§();
               }
               else if(Global.page_dir_clicked == 2)
               {
                  §_-9U§();
                  _loc3_;
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
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.§_-po§.length)
         {
            _loc2_ = this.§_-po§[_loc1_] as LevelSelectDisplay;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc4_;
               if(this.§_-XT§ == Global.SCREEN_EDITOR)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_.§_-En§();
                  _loc4_;
                  _loc4_;
               }
               _loc2_.§_-Kv§();
               _loc3_;
               _loc3_;
            }
            _loc1_++;
         }
         _loc4_;
         _loc3_;
         if(this.§_-8L§ == true)
         {
            this.§_-Sg§ = new §_-V9§();
            lobby_canvas.addChild(this.§_-Sg§);
         }
         if(this.§_-wF§ == true)
         {
            _loc4_;
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
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc3_;
            _loc3_;
            §_-vR§ = false;
            _loc4_;
            _loc4_;
            (this.§_-po§[SafeGlobal.selected_level.§_-p2§] as LevelSelectDisplay).§_-My§();
            _loc3_;
            _loc3_;
            if(this.§_-po§.length > 1)
            {
               _loc3_;
               _loc3_;
               _loc2_ = 0;
               while(true)
               {
                  _loc3_;
                  if(_loc2_ >= this.§_-po§.length)
                  {
                     break;
                  }
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  if(_loc2_ != SafeGlobal.selected_level.§_-p2§)
                  {
                     (this.§_-po§[_loc2_] as LevelSelectDisplay).moveAway(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y);
                     _loc4_;
                  }
                  _loc2_++;
               }
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
            if(param1 == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               if(Global.page_dir_clicked == 1)
               {
                  _loc4_;
                  §_-4y§();
               }
               else if(Global.page_dir_clicked == 2)
               {
                  _loc3_;
                  §_-eY§();
               }
               else
               {
                  §_-eY§();
               }
               
            }
            else
            {
               §_-eY§();
            }
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-Sg§ != null)
         {
            lobby_canvas.removeChild(this.§_-Sg§);
            _loc3_;
            this.§_-Sg§ = null;
            _loc2_;
            _loc2_;
         }
         if(this.§_-vE§ != null)
         {
            lobby_canvas.removeChild(this.§_-vE§);
            _loc3_;
            this.§_-vE§ = null;
         }
      }
   }
}
