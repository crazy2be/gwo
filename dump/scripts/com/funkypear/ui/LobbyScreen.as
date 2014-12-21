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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      private var §_-h4§:Tween;
      
      private var y_tween:Tween;
      
      private var §_-6W§:Tween;
      
      private var §_-TC§:Tween;
      
      private var §_-KZ§:Tween;
      
      public var §_-0B§:Boolean = false;
      
      protected var lobby_canvas:Sprite;
      
      protected var td:ThumbnailDisplay;
      
      protected var §_-NW§:MovieClip;
      
      protected var §_-vR§:Boolean = false;
      
      public function init(param1:Sprite, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.lobby_canvas = param1;
         _loc4_;
         _loc4_;
         this.setStartPosition(param2);
      }
      
      protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         x = 0;
         _loc3_;
         y = 0;
      }
      
      public function §_-4L§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.drawScreen(param1);
         _loc3_;
         this.tweenOn(param1);
         _loc2_;
         _loc2_;
         this.tweenOnExtras(param1);
      }
      
      public function §_-s-§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.tweenOff(param1);
         _loc3_;
         _loc3_;
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
      
      protected function §_-L0§(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc2_;
         x = 800;
         _loc3_;
         _loc3_;
         if(param1)
         {
            this.§_-h4§ = new Tween(this,"x",null,x,0,1,true);
            _loc2_;
         }
         else
         {
            this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
         }
         if(!param1)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
         }
         this.§_-h4§.start();
      }
      
      protected function §_-9U§(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         x = -800;
         _loc2_;
         _loc3_;
         if(param1)
         {
            _loc2_;
            this.§_-h4§ = new Tween(this,"x",null,x,0,1,true);
         }
         else
         {
            this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
         }
         if(!param1)
         {
            _loc3_;
            _loc3_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
         }
         this.§_-h4§.start();
      }
      
      protected function §_-4y§(param1:Number = -800) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Yc§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-h4§.start();
      }
      
      protected function §_-eY§(param1:Number = 800) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Yc§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-h4§.start();
      }
      
      protected function updateStarMap(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - x,0 - y);
      }
      
      protected function §_-Ur§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.td != null)
         {
            _loc3_;
            _loc3_;
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.td.x,0 - this.td.y);
         }
      }
      
      protected function §_-ND§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-NW§ != null)
         {
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.§_-NW§.x,0 - this.§_-NW§.y);
         }
      }
      
      protected function §_-ay§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
      }
      
      protected function §_-Yc§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc2_;
         _loc2_;
         Global.lobby_display.removeOldScreen();
      }
      
      public function §_-Wm§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-vR§)
         {
            _loc2_;
            Global.lobby_display.removeOldScreen();
            _loc1_;
            this.§_-vR§ = true;
         }
      }
      
      public function finishTweenOn() : void
      {
      }
      
      public function finishTweenOff() : void
      {
      }
      
      protected function §_-3j§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         this.y_tween = new Tween(this,"y",Strong.easeOut,y,param2,1,true);
         _loc6_;
         _loc6_;
         if(param3)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Yc§,false,0,true);
            _loc5_;
            _loc5_;
         }
         if(param4)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.updateStarMap,false,0,true);
         }
         this.§_-h4§.start();
         _loc6_;
         _loc6_;
         this.y_tween.start();
      }
      
      protected function §_-YP§(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-6W§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,param1,1,true);
         _loc2_;
         this.§_-TC§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,param1,1,true);
         _loc2_;
         this.§_-6W§.start();
         _loc3_;
         _loc3_;
         this.§_-TC§.start();
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
         if(this.td != null)
         {
            _loc4_;
            _loc4_;
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-6W§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            this.§_-TC§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = -200;
            _loc2_ = -300;
            _loc4_;
            this.§_-h4§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            _loc5_;
            _loc5_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc5_;
            _loc5_;
            this.§_-KZ§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc4_;
            _loc4_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-Ur§,false,0,true);
            _loc4_;
            _loc4_;
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-4c§,false,0,true);
         }
      }
      
      protected function §_-gi§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc4_;
         _loc4_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            this.§_-6W§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            _loc5_;
            this.§_-TC§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = -200;
            _loc5_;
            _loc5_;
            _loc2_ = -300;
            this.§_-h4§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            _loc4_;
            _loc4_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            _loc4_;
            this.§_-KZ§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc5_;
            _loc5_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-Ur§,false,0,true);
            _loc5_;
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-h§,false,0,true);
         }
      }
      
      protected function §_-xB§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc4_;
         if(this.td != null)
         {
            _loc4_;
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc5_;
            this.§_-6W§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            _loc4_;
            _loc4_;
            this.§_-TC§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc1_ = -200;
            _loc2_ = -300;
            _loc5_;
            _loc5_;
            this.§_-h4§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-KZ§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc4_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-Ur§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0X§,false,0,true);
         }
      }
      
      protected function §_-Jq§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc4_;
         _loc5_;
         if(this.td != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = -200;
            _loc2_ = -300;
            this.§_-h4§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,1,true);
            _loc5_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,1,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc4_;
            this.§_-KZ§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,1,true);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-Ur§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-LW§,false,0,true);
         }
      }
      
      protected function §in §() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:CircleBorder = null;
         _loc4_;
         _loc4_;
         if(this.td != null)
         {
            _loc4_;
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc4_;
            this.§_-6W§ = new Tween(this.td,"scaleX",Strong.easeOut,this.td.scaleX,1,2,true);
            this.§_-TC§ = new Tween(this.td,"scaleY",Strong.easeOut,this.td.scaleY,1,2,true);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = -200;
            _loc4_;
            _loc4_;
            _loc2_ = -300;
            this.§_-h4§ = new Tween(this.td,"x",Strong.easeOut,this.td.x,_loc1_,2,true);
            _loc4_;
            _loc4_;
            this.y_tween = new Tween(this.td,"y",Strong.easeOut,this.td.y,_loc2_,2,true);
            _loc3_ = this.td.getChildByName("circle_border") as CircleBorder;
            _loc5_;
            this.§_-KZ§ = new Tween(_loc3_,"alpha",Strong.easeOut,0.5,1,2,true);
            _loc5_;
            _loc5_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-Ur§,false,0,true);
            _loc5_;
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-f4§,false,0,true);
         }
      }
      
      protected function §_-4c§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_client.startGame();
         _loc2_;
         Global.lobby_display.addBlackBarTurnDisplay();
      }
      
      protected function §_-h§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.TIMELINE.startOfflineGame();
      }
      
      protected function §_-0X§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SafeGlobal.TIMELINE.startTutorialGame();
      }
      
      protected function §_-LW§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.startEditorGame(Global.editor_test_map);
      }
      
      protected function §_-f4§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.TIMELINE.startCustomWeaponGame(Global.cw_test_map);
      }
      
      protected function §_-QH§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(this.§_-NW§ != null)
         {
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = SafeGlobal.game_over_data.game_radius;
            _loc3_;
            _loc3_;
            _loc2_ = 182 / _loc1_;
            this.§_-6W§ = new Tween(this.§_-NW§,"scaleX",Strong.easeOut,this.§_-NW§.scaleX,_loc2_,1,true);
            this.§_-TC§ = new Tween(this.§_-NW§,"scaleY",Strong.easeOut,this.§_-NW§.scaleY,_loc2_,1,true);
            _loc4_;
            this.§_-h4§ = new Tween(this.§_-NW§,"x",Strong.easeOut,this.§_-NW§.x,0 - 600 * _loc2_,1,true);
            this.y_tween = new Tween(this.§_-NW§,"y",Strong.easeOut,this.§_-NW§.y,0 - 600 * _loc2_,1,true);
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-ND§,false,0,true);
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutOfGame,false,0,true);
         }
      }
      
      protected function finishTweenOutOfGame(param1:TweenEvent) : void
      {
      }
      
      protected function §_-6C§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(this.§_-NW§ != null)
         {
            _loc4_;
            _loc4_;
            SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = SafeGlobal.game_over_data.game_radius;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = 182 / _loc1_;
            this.§_-6W§ = new Tween(this.§_-NW§,"scaleX",Strong.easeOut,this.§_-NW§.scaleX,_loc2_,1,true);
            this.§_-TC§ = new Tween(this.§_-NW§,"scaleY",Strong.easeOut,this.§_-NW§.scaleY,_loc2_,1,true);
            _loc4_;
            this.§_-h4§ = new Tween(this.§_-NW§,"x",Strong.easeOut,this.§_-NW§.x,0 - 400 * _loc2_,1,true);
            this.y_tween = new Tween(this.§_-NW§,"y",Strong.easeOut,this.§_-NW§.y,0 - 600 * _loc2_,1,true);
            _loc4_;
            this.§_-h4§.addEventListener(TweenEvent.MOTION_CHANGE,this.§_-ND§,false,0,true);
            _loc3_;
            this.§_-6W§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutOfGame,false,0,true);
         }
      }
      
      public function refreshCampaignData() : void
      {
      }
   }
}
