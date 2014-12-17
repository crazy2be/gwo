package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.display.MovieClip;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class LobbyScreen extends Sprite
   {
      
      public function LobbyScreen()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-Hk§:Tween;
      
      private var y_tween:Tween;
      
      private var §_-7O§:Tween;
      
      private var §_-30§:Tween;
      
      private var §_-Gy§:Tween;
      
      public var §_-HF§:Boolean = false;
      
      protected var lobby_canvas:Sprite;
      
      protected var td:ThumbnailDisplay;
      
      protected var §_-dN§:MovieClip;
      
      protected var §_-sm§:Boolean = false;
      
      public function init(param1:Sprite, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.lobby_canvas = param1;
         _loc4_;
         _loc4_;
         this.setStartPosition(param2);
      }
      
      protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         x = 0;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      public function §_-35§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.drawScreen(param1);
         _loc3_;
         _loc3_;
         this.tweenOn(param1);
         _loc2_;
         this.tweenOnExtras(param1);
      }
      
      public function §_-dA§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.tweenOff(param1);
         _loc2_;
         _loc2_;
         this.tweenOffExtras(param1);
      }
      
      protected function drawScreen(param1:int) : void
      {
      }
      
      protected function tweenOn(param1:int) : void
      {
      }
      
      protected function tweenOnExtras(param1:int) : void
      {
      }
      
      protected function tweenOff(param1:int) : void
      {
      }
      
      protected function tweenOffExtras(param1:int) : void
      {
      }
      
      protected function §_-QO§(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc2_;
         _loc2_;
         x = 800;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc2_;
            _loc2_;
            this.§_-Hk§ = new Tween(this,"x",null,x,0,1,true);
         }
         else
         {
            this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
            _loc3_;
            _loc3_;
         }
         if(!param1)
         {
            _loc3_;
            _loc3_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
            _loc2_;
            _loc2_;
         }
         this.§_-Hk§.start();
      }
      
      protected function §_-1I§(param1:Boolean = false) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc3_;
         _loc3_;
         x = -800;
         _loc2_;
         _loc2_;
         if(param1)
         {
            this.§_-Hk§ = new Tween(this,"x",null,x,0,1,true);
         }
         else
         {
            this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
         }
         if(!param1)
         {
            _loc2_;
            _loc2_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
         }
         this.§_-Hk§.start();
      }
      
      protected function §_-j6§(param1:Number = -800) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-TO§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-Hk§.start();
      }
      
      protected function §_-hf§(param1:Number = 800) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-TO§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-Hk§.start();
      }
      
      protected function updateStarMap(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - x,0 - y);
      }
      
      protected function §_-tl§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.td != null)
         {
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.td.x,0 - this.td.y);
         }
      }
      
      protected function §_-og§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.§_-dN§ != null)
         {
            _loc3_;
            _loc3_;
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.§_-dN§.x,0 - this.§_-dN§.y);
         }
      }
      
      protected function §_-jF§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
      }
      
      protected function §_-TO§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc3_;
         Global.lobby_display.removeOldScreen();
      }
      
      public function §_-MA§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(!this.§_-sm§)
         {
            _loc2_;
            Global.lobby_display.removeOldScreen();
            _loc2_;
            this.§_-sm§ = true;
         }
      }
      
      public function finishTweenOn() : void
      {
      }
      
      public function finishTweenOff() : void
      {
      }
      
      protected function §_-R3§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc6_;
         _loc6_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         _loc5_;
         _loc5_;
         this.y_tween = new Tween(this,"y",Strong.easeOut,y,param2,1,true);
         _loc5_;
         _loc5_;
         if(param3)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-TO§,false,0,true);
         }
         if(param4)
         {
            _loc5_;
            _loc5_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
            _loc6_;
         }
         this.§_-Hk§.start();
         this.y_tween.start();
      }
      
      protected function §_-JL§(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-7O§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,param1,1,true);
         _loc3_;
         this.§_-30§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,param1,1,true);
         _loc3_;
         this.§_-7O§.start();
         _loc2_;
         _loc2_;
         this.§_-30§.start();
      }
      
      protected function tweenIntoGame() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-7O§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            _loc4_;
            _loc4_;
            this.§_-30§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = -200;
            _loc2_ = -300;
            _loc5_;
            this.§_-Hk§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            _loc5_;
            _loc5_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-Gy§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc5_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-tl§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-bB§,false,0,true);
         }
      }
      
      protected function §_-uV§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc5_;
         _loc5_;
         if(this.td != null)
         {
            _loc5_;
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-7O§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            _loc5_;
            _loc5_;
            this.§_-30§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = -200;
            _loc4_;
            _loc4_;
            _loc2_ = -300;
            this.§_-Hk§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc5_;
            _loc5_;
            this.§_-Gy§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc4_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-tl§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-lf§,false,0,true);
         }
      }
      
      protected function §_-uZ§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc5_;
         _loc5_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-7O§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            _loc4_;
            this.§_-30§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc1_ = -200;
            _loc2_ = -300;
            this.§_-Hk§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-Gy§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc4_;
            _loc4_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-tl§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Qb§,false,0,true);
         }
      }
      
      protected function §_-1a§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc5_;
            _loc5_;
            _loc4_;
            _loc1_ = -200;
            _loc2_ = -300;
            this.§_-Hk§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,1,true);
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,1,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-Gy§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,1,true);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-tl§,false,0,true);
            _loc5_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-wa§,false,0,true);
         }
      }
      
      protected function §_-BY§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc5_;
         _loc5_;
         _loc4_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-7O§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            this.§_-30§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc5_;
            _loc4_;
            _loc4_;
            _loc1_ = -200;
            _loc2_ = -300;
            _loc4_;
            _loc4_;
            this.§_-Hk§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            _loc4_;
            _loc4_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-Gy§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc5_;
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-tl§,false,0,true);
            _loc5_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-UG§,false,0,true);
         }
      }
      
      protected function §_-bB§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.lobby_client.startGame();
         _loc3_;
         Global.lobby_display.addBlackBarTurnDisplay();
      }
      
      protected function §_-lf§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.TIMELINE.startOfflineGame();
      }
      
      protected function §_-Qb§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.startTutorialGame();
      }
      
      protected function §_-wa§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         SafeGlobal.TIMELINE.startEditorGame(Global.editor_test_map);
      }
      
      protected function §_-UG§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.startCustomWeaponGame(Global.cw_test_map);
      }
      
      protected function §_-Hi§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(this.§_-dN§ != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = SafeGlobal.game_over_data.game_radius;
            _loc3_;
            _loc4_;
            _loc2_ = 182 / _loc1_;
            _loc4_;
            _loc4_;
            this.§_-7O§ = new Tween(this.§_-dN§,"scaleX",Strong.easeOut,this.§_-dN§.scaleX,_loc2_,1,true);
            _loc3_;
            this.§_-30§ = new Tween(this.§_-dN§,"scaleY",Strong.easeOut,this.§_-dN§.scaleY,_loc2_,1,true);
            _loc3_;
            _loc3_;
            this.§_-Hk§ = new Tween(this.§_-dN§,"x",Strong.easeOut,this.§_-dN§.x,0 - 600 * _loc2_,1,true);
            _loc4_;
            _loc4_;
            this.y_tween = new Tween(this.§_-dN§,"y",Strong.easeOut,this.§_-dN§.y,0 - 600 * _loc2_,1,true);
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-og§,false,0,true);
            _loc4_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutOfGame,false,0,true);
         }
      }
      
      protected function finishTweenOutOfGame(param1:TweenEvent) : void
      {
      }
      
      protected function §_-pH§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         _loc4_;
         if(this.§_-dN§ != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = SafeGlobal.game_over_data.game_radius;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = 182 / _loc1_;
            _loc4_;
            this.§_-7O§ = new Tween(this.§_-dN§,"scaleX",Strong.easeOut,this.§_-dN§.scaleX,_loc2_,1,true);
            this.§_-30§ = new Tween(this.§_-dN§,"scaleY",Strong.easeOut,this.§_-dN§.scaleY,_loc2_,1,true);
            this.§_-Hk§ = new Tween(this.§_-dN§,"x",Strong.easeOut,this.§_-dN§.x,0 - 400 * _loc2_,1,true);
            this.y_tween = new Tween(this.§_-dN§,"y",Strong.easeOut,this.§_-dN§.y,0 - 600 * _loc2_,1,true);
            this.§_-Hk§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-og§,false,0,true);
            _loc3_;
            _loc3_;
            this.§_-7O§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutOfGame,false,0,true);
         }
      }
      
      public function refreshCampaignData() : void
      {
      }
   }
}
