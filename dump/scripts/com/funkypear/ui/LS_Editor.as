package com.funkypear.ui
{
   import §_-HM§.Editor;
   import fl.transitions.Tween;
   import §_-8Y§.SoundManager;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class LS_Editor extends LobbyScreen
   {
      
      public function LS_Editor()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var editor:Editor;
      
      private var §_-Hk§:Tween;
      
      private var y_tween:Tween;
      
      private var §_-9n§:Tween;
      
      private var §_-ZS§:Tween;
      
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
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         _loc4_;
         SoundManager.§_-pL§();
         _loc4_;
         _loc4_;
         if(param1 == Global.SCREEN_EDITOR_GAME)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc4_;
            _loc4_;
            this.editor = new Editor(Global.editor_test_map,Global.editor_game_x,Global.editor_game_y);
            SafeGlobal.GAME.finalDestroy();
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_ = -200;
            _loc5_;
            _loc3_ = -300;
            _loc4_;
            if(Global.custom_maps[Global.selected_map_slot] == null)
            {
               this.editor = new Editor("",_loc2_,_loc3_);
            }
            else
            {
               this.editor = new Editor(Global.custom_maps[Global.selected_map_slot].mapData,_loc2_,_loc3_);
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.editor.scaleX = 0.14;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            this.editor.scaleY = 0.14;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.editor.x = SafeGlobal.selected_level.start_x - 600 * 0.14;
            _loc4_;
            _loc4_;
            _loc4_;
            this.editor.y = SafeGlobal.selected_level.start_y - 600 * 0.14;
         }
         addChild(this.editor);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 == Global.SCREEN_EDITOR_GAME)
         {
            _loc3_;
            this.§_-ry§(null);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Hk§ = new Tween(this.editor,"x",Strong.easeOut,this.editor.x,0,1,true);
            this.y_tween = new Tween(this.editor,"y",Strong.easeOut,this.editor.y,0,1,true);
            this.§_-9n§ = new Tween(this.editor,"scaleX",Strong.easeOut,this.editor.scaleX,1,1,true);
            _loc2_;
            this.§_-ZS§ = new Tween(this.editor,"scaleY",Strong.easeOut,this.editor.scaleY,1,1,true);
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-ry§,false,0,true);
            _loc3_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
            this.§_-Hk§.start();
            this.y_tween.start();
            _loc2_;
            _loc2_;
            this.§_-9n§.start();
            _loc3_;
            this.§_-ZS§.start();
         }
      }
      
      override protected function updateStarMap(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.editor.x,0 - this.editor.y);
      }
      
      public function §_-ry§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         this.editor.finishTweenOn();
         _loc2_;
         _loc2_;
         this.editor.§_-Qi§.tweenOn();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc2_;
         Global.lobby_display.logo.tweenOut();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc7_;
         _loc7_;
         if(param1 == Global.SCREEN_EDITOR_GAME)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            this.editor.§_-SH§();
            _loc6_;
            this.editor.cleanUp();
            _loc6_;
            this.editor.visible = false;
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc6_;
            this.editor.§_-SH§();
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc2_ = SafeGlobal.selected_level.start_x - 600 * 0.14;
            _loc7_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc3_ = SafeGlobal.selected_level.start_y - 600 * 0.14;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_ - this.editor.screen.x * 0.15;
            _loc7_;
            _loc7_;
            _loc3_ = _loc3_ - this.editor.screen.y * 0.15;
            _loc7_;
            _loc7_;
            _loc4_ = this.editor.x;
            _loc7_;
            _loc7_;
            _loc5_ = this.editor.y;
            this.§_-Hk§ = new Tween(this.editor,"x",Strong.easeOut,_loc4_,_loc2_,1,true);
            this.y_tween = new Tween(this.editor,"y",Strong.easeOut,_loc5_,_loc3_,1,true);
            this.§_-9n§ = new Tween(this.editor,"scaleX",Strong.easeOut,this.editor.scaleX,0.14,1,true);
            this.§_-ZS§ = new Tween(this.editor,"scaleY",Strong.easeOut,this.editor.scaleY,0.14,1,true);
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§while§,false,0,true);
            _loc6_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
            this.§_-Hk§.start();
            _loc6_;
            _loc6_;
            this.y_tween.start();
            this.§_-9n§.start();
            _loc7_;
            this.§_-ZS§.start();
         }
      }
      
      private function §while§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.editor.cleanUp();
         _loc3_;
         §_-TO§(null);
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(param1 == Global.SCREEN_EDITOR_GAME) && !(param1 == Global.SCREEN_VERSIONCONTROL))
         {
            _loc3_;
            Global.lobby_display.lobby_menu.tweenIn();
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_nav.tweenIn();
            _loc3_;
            Global.lobby_display.lobby_stats.tweenIn();
            _loc2_;
            Global.lobby_display.logo.tweenIn();
         }
      }
   }
}
