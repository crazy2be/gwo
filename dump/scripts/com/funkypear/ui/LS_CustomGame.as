package com.funkypear.ui
{
   public class LS_CustomGame extends LobbyScreen
   {
      
      public function LS_CustomGame()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 0;
         _loc3_;
         y = 0;
      }
      
      public function §_-zu§(param1:Array) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.lsd.§_-zu§(param1);
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc6_;
         _loc6_;
         this.lsd.x = 0;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         this.lsd.y = 0;
         _loc7_;
         _loc6_;
         this.lsd.name = "lsd";
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc7_;
            this.lsd.§_-hZ§();
            _loc7_;
            _loc7_;
            this.x = Global.large_thumbnail_x;
            this.y = Global.large_thumbnail_y;
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc2_ = Global.custom_maps.length;
            _loc7_;
            _loc6_;
            if(_loc2_ > 5)
            {
               _loc7_;
               _loc7_;
               _loc2_ = 5;
            }
            this.x = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x;
            this.y = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y;
            _loc7_;
         }
         _loc6_;
         _loc7_;
         _loc7_;
         if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
         {
            _loc7_;
            _loc7_;
            this.lsd.§_-qr§(SafeGlobal.selected_level.created_by);
            _loc7_;
            _loc7_;
            _loc7_;
            this.lsd.§_-Nb§();
         }
         _loc7_;
         _loc7_;
         if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
         {
            _loc6_;
            _loc7_;
            _loc7_;
            this.lsd.§_-xL§(SafeGlobal.selected_level.slot_id);
            _loc7_;
            _loc7_;
            this.lsd.§_-Nb§();
            _loc7_;
         }
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            this.lsd.§_-Di§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            _loc6_;
            this.lsd.§_-Nb§();
         }
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc3_ = new Array();
            _loc4_ = SafeGlobal.selected_level.mods.split(",");
            _loc7_;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               _loc3_.push(int(_loc4_[_loc5_]));
               _loc7_;
               _loc7_;
               _loc5_++;
               _loc6_;
               _loc6_;
            }
            _loc6_;
            _loc6_;
            this.§_-zu§(_loc3_);
         }
         addChild(this.lsd);
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
         if(param1 == Global.SCREEN_GAME_END || param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc2_;
            _loc2_;
         }
         else
         {
            this.lsd.§_-Gn§();
            _loc2_;
            §_-R3§(Global.large_thumbnail_x,Global.large_thumbnail_y,false,true);
         }
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA)
         {
            §_-TO§(null);
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM || param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM || param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
            {
               _loc2_;
               this.lsd.§_-dX§();
               this.lsd.§_-zu§(new Array());
               §_-R3§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
            }
            else
            {
               §_-hf§(1100);
            }
         }
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            this.lsd.§_-qr§(SafeGlobal.selected_level.created_by);
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.lsd.§_-Wa§();
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.lsd.§_-xL§(SafeGlobal.selected_level.slot_id);
            _loc2_;
            this.lsd.§_-Wa§();
         }
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            _loc2_;
            this.lsd.§_-Di§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            this.lsd.§_-Wa§();
         }
      }
   }
}