package com.funkypear.ui
{
   public class LS_SaveReplaySuccess extends LobbyScreen
   {
      
      public function LS_SaveReplaySuccess()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-4b§:§_-PC§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = Global.large_thumbnail_x + 800;
         _loc3_;
         _loc3_;
         y = Global.large_thumbnail_y;
      }
      
      public function §_-zu§(param1:Array) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.lsd.§_-zu§(param1);
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc5_;
         _loc6_;
         this.lsd.§_-hZ§();
         _loc6_;
         _loc6_;
         _loc5_;
         this.lsd.x = 0;
         _loc6_;
         this.lsd.y = 0;
         _loc5_;
         _loc5_;
         this.lsd.name = "lsd";
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
         }
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc2_ = new Array();
            _loc3_ = SafeGlobal.selected_level.mods.split(",");
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_.push(int(_loc3_[_loc4_]));
               _loc6_;
               _loc6_;
               _loc4_++;
               _loc6_;
            }
            _loc5_;
            _loc5_;
            this.§_-zu§(_loc2_);
         }
         addChild(this.lsd);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-R3§(Global.large_thumbnail_x,Global.large_thumbnail_y,false,true);
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-4b§ = new §_-PC§();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-4b§.x = -220;
         _loc1_;
         this.§_-4b§.y = -190;
         _loc2_;
         addChild(this.§_-4b§);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc3_;
            _loc3_;
            this.lsd.§_-dX§();
            _loc2_;
            §_-R3§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
         }
         else
         {
            §_-hf§(1100);
         }
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc2_;
            _loc2_;
            this.lsd.§_-Zy§(Global.replay_list[SafeGlobal.selected_level.§_-Tv§].date);
            _loc3_;
            this.lsd.§_-Wa§();
            _loc2_;
         }
         if(this.§_-4b§ != null)
         {
            _loc2_;
            _loc2_;
            removeChild(this.§_-4b§);
            this.§_-4b§ = null;
         }
      }
   }
}
