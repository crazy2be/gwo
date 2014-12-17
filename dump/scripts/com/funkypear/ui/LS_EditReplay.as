package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   
   public class LS_EditReplay extends LobbyScreen
   {
      
      public function LS_EditReplay()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var loading_graphic:Sprite;
      
      private var §_-Xu§:Timer;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         x = 0;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      public function §_-zu§(param1:Array) : void
      {
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc5_;
         _loc5_;
         _loc6_;
         this.lsd.x = 0;
         _loc5_;
         _loc5_;
         this.lsd.y = 0;
         _loc5_;
         _loc5_;
         this.lsd.name = "lsd";
         _loc5_;
         _loc5_;
         this.x = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x;
         _loc5_;
         _loc5_;
         this.y = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y;
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc6_;
            _loc5_;
            this.lsd.§_-Zy§(Global.replay_list[SafeGlobal.selected_level.§_-Tv§].date);
            this.lsd.§_-Nb§();
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
               _loc6_;
               _loc6_;
               _loc4_++;
               _loc6_;
            }
            _loc6_;
            this.§_-zu§(_loc2_);
         }
         addChild(this.lsd);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.lsd.§_-91§();
         _loc2_;
         §_-R3§(400,300);
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loading_graphic = new §_-lO§() as Sprite;
         _loc1_;
         _loc1_;
         this.loading_graphic.y = -50;
         this.loading_graphic.name = "loading_graphic";
         _loc2_;
         SafeGlobal.TIMELINE.timeline.addChild(this.loading_graphic);
         _loc2_;
         _loc2_;
         this.§_-Xu§ = new Timer(2000,1);
         _loc2_;
         this.§_-Xu§.addEventListener(TimerEvent.TIMER_COMPLETE,this.startReplayGame,false,0,true);
         this.§_-Xu§.start();
      }
      
      public function startReplayGame(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Xu§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.startReplayGame);
         _loc2_;
         _loc2_;
         this.§_-Xu§ = null;
         _loc2_;
         SafeGlobal.TIMELINE.startReplayGame();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc2_;
         _loc2_;
         Global.lobby_display.logo.tweenOut();
      }
      
      public function hideReplayLoading() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.loading_graphic.visible = false;
      }
      
      public function hideReplayCover() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.lsd.visible = false;
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.lsd.visible = true;
         _loc3_;
         SafeGlobal.§_-zE§.tweenOff();
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc2_;
            _loc2_;
            this.lsd.§_-dX§();
            _loc3_;
            _loc3_;
            §_-R3§(SafeGlobal.selected_level.start_x,SafeGlobal.selected_level.start_y,true,true);
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_SAVING_REPLAY)
            {
               §_-j6§(-1100);
            }
            else
            {
               §_-hf§(1100);
               _loc2_;
               _loc2_;
            }
         }
         if(param1 == Global.SCREEN_VIEW_REPLAYS)
         {
            _loc2_;
            _loc2_;
            this.lsd.§_-Zy§(Global.replay_list[SafeGlobal.selected_level.§_-Tv§].date);
            this.lsd.§_-Wa§();
         }
      }
   }
}
