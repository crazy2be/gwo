package com.funkypear.ui
{
   public class LS_SaveReplayFail extends LobbyScreen
   {
      
      public function LS_SaveReplayFail()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-de§:§_-Pk§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         x = Global.large_thumbnail_x + 800;
         _loc2_;
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
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc6_;
         _loc6_;
         this.lsd.§_-hZ§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         this.lsd.x = 0;
         _loc5_;
         _loc5_;
         this.lsd.y = 0;
         this.lsd.name = "lsd";
         _loc5_;
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
         }
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc2_ = new Array();
            _loc3_ = SafeGlobal.selected_level.mods.split(",");
            _loc5_;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_.push(int(_loc3_[_loc4_]));
               _loc5_;
               _loc4_++;
               _loc6_;
               _loc6_;
            }
            _loc5_;
            this.§_-zu§(_loc2_);
         }
         addChild(this.lsd);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-R3§(Global.large_thumbnail_x,Global.large_thumbnail_y,false,true);
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-de§ = new §_-Pk§();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-de§.x = -220;
         _loc1_;
         this.§_-de§.y = -180;
         _loc1_;
         _loc1_;
         addChild(this.§_-de§);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc3_;
            this.lsd.§_-dX§();
            §_-R3§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
            _loc2_;
         }
         else
         {
            §_-hf§(1100);
         }
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.lsd.§_-Zy§(Global.replay_list[SafeGlobal.selected_level.§_-Tv§].date);
            this.lsd.§_-Wa§();
            _loc2_;
         }
         if(this.§_-de§ != null)
         {
            removeChild(this.§_-de§);
            _loc3_;
            this.§_-de§ = null;
         }
      }
   }
}
