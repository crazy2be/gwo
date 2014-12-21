package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §_-Ff§.§_-H8§;
   import flash.utils.Timer;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.events.TimerEvent;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class TutorialItemDisplay extends MovieClip
   {
      
      public function TutorialItemDisplay(param1:§_-H8§, param2:*)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.§_-BY§ = param2;
         this.§_-Y4§ = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-Y4§.panel_pos == this.§_-37§)
         {
            x = 5;
            _loc3_;
            _loc3_;
            y = -155;
            this.§_-61§ = true;
            _loc3_;
         }
         else
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            if(this.§_-Y4§.panel_pos == this.§_-mq§)
            {
               _loc3_;
               _loc3_;
               x = 355;
               y = -155;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc4_;
               if(this.§_-Y4§.panel_pos == this.§_-U9§)
               {
                  _loc4_;
                  _loc4_;
                  x = 5;
                  y = 610;
                  _loc4_;
                  this.§_-61§ = true;
                  _loc3_;
               }
               else if(this.§_-Y4§.panel_pos == this.§_-a9§)
               {
                  x = 355;
                  _loc4_;
                  y = 610;
                  _loc4_;
                  _loc4_;
               }
               
            }
         }
         this.§_-44§();
      }
      
      public var §_-jx§:MovieClip;
      
      public var §_-Yr§:TextField;
      
      private var §_-BY§;
      
      private var §_-Y4§:§_-H8§;
      
      private var §_-LX§:String;
      
      private var §_-zJ§:String;
      
      private var §_-pL§:int = 1;
      
      private var §_-J3§:Timer;
      
      private var §_-37§:int = 0;
      
      private var §_-mq§:int = 1;
      
      private var §_-U9§:int = 2;
      
      private var §_-a9§:int = 3;
      
      private var y_tween:Tween;
      
      private var §_-61§:Boolean = false;
      
      private var §_-70§:Timer;
      
      public function tweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-Y4§.panel_pos == this.§_-37§)
         {
            _loc2_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
         }
         else
         {
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-Y4§.panel_pos == this.§_-mq§)
            {
               _loc2_;
               _loc2_;
               this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
               _loc1_;
               _loc1_;
            }
            else
            {
               _loc1_;
               _loc2_;
               _loc1_;
               if(this.§_-Y4§.panel_pos == this.§_-U9§)
               {
                  _loc2_;
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,450,1,true);
               }
               else if(this.§_-Y4§.panel_pos == this.§_-a9§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,450,1,true);
               }
               
            }
         }
         _loc1_;
         _loc1_;
         this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn,false,0,true);
         this.y_tween.start();
      }
      
      public function finishTweenOn(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn);
         _loc3_;
         _loc3_;
         this.y_tween = null;
         this.§_-LX§ = this.§_-Y4§.main_text;
         this.§_-zJ§ = "";
         this.§_-70§ = new Timer(10);
         this.§_-70§.addEventListener(TimerEvent.TIMER,this.§_-QS§,false,0,true);
         this.§_-70§.start();
      }
      
      public function §_-QS§(param1:TimerEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         if(this.§_-pL§ <= this.§_-LX§.length)
         {
            this.§_-zJ§ = this.§_-LX§.slice(0,this.§_-pL§);
            _loc5_;
            this.§_-Yr§.text = this.§_-zJ§;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-pL§++;
            _loc4_;
         }
         else
         {
            this.§_-70§.removeEventListener(TimerEvent.TIMER,this.§_-QS§);
            _loc5_;
            this.§_-70§.stop();
            this.§_-70§ = null;
            _loc5_;
            _loc5_;
            if(this.§_-Y4§.dismiss_type == 0)
            {
               this.§_-J3§ = new Timer(3000,1);
               this.§_-J3§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-tf§,false,0,true);
               this.§_-J3§.start();
            }
         }
      }
      
      public function §_-tf§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-J3§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-tf§);
         _loc2_;
         this.§_-J3§ = null;
         _loc3_;
         _loc3_;
         this.tweenOff();
      }
      
      public function tweenOff(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.y_tween != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
            _loc3_;
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn);
            _loc3_;
            this.y_tween.stop();
            this.y_tween = null;
         }
         if(this.§_-J3§ != null)
         {
            this.§_-J3§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-tf§);
            this.§_-J3§.stop();
            this.§_-J3§ = null;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.§_-Y4§.panel_pos == this.§_-37§)
         {
            this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-Y4§.panel_pos == this.§_-mq§)
            {
               _loc2_;
               this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
               _loc3_;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               if(this.§_-Y4§.panel_pos == this.§_-U9§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
               }
               else if(this.§_-Y4§.panel_pos == this.§_-a9§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
               }
               
            }
         }
         if(param1)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-dC§,false,0,true);
         }
         else
         {
            this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
            _loc2_;
            _loc2_;
         }
         this.y_tween.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.y_tween != null)
         {
            _loc2_;
            _loc2_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
            _loc2_;
            _loc2_;
            this.y_tween = null;
            _loc2_;
            _loc2_;
         }
         this.§_-BY§.finishDismissTutorialItem();
      }
      
      public function §_-dC§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.y_tween != null)
         {
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-dC§);
            _loc2_;
            this.y_tween = null;
            _loc2_;
            _loc2_;
         }
         SafeGlobal.TIMELINE.finishHideTutorialItemDisplay();
      }
      
      private function §_-44§() : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         var _loc5_:* = 0;
         var _loc6_:MovieClip = new §_-X5§();
         var _loc7_:Class = getDefinitionByName("HeadClip" + _loc1_) as Class;
         var _loc8_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc6_.head.addChild(_loc8_);
         _loc15_;
         _loc15_;
         if(_loc6_.body is §_-7w§)
         {
            _loc7_ = getDefinitionByName("BodyClip" + _loc2_) as Class;
         }
         else
         {
            _loc7_ = getDefinitionByName("BodyClipNew" + _loc2_) as Class;
         }
         var _loc9_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc6_.body.addChild(_loc9_);
         _loc7_ = getDefinitionByName("HandClip" + _loc3_) as Class;
         var _loc10_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.righthand.addChild(_loc10_);
         var _loc11_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc6_.lefthand.addChild(_loc11_);
         _loc7_ = getDefinitionByName("FootClip" + _loc4_) as Class;
         var _loc12_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.rightfoot.addChild(_loc12_);
         var _loc13_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc6_.leftfoot.addChild(_loc13_);
         var _loc14_:ColorTransform = new ColorTransform();
         _loc14_.color = SafeGlobal.colour_hex[_loc5_];
         _loc8_.inside.transform.colorTransform = _loc14_;
         _loc16_;
         _loc16_;
         _loc9_.inside.transform.colorTransform = _loc14_;
         _loc15_;
         _loc15_;
         _loc11_.inside.transform.colorTransform = _loc14_;
         _loc13_.inside.transform.colorTransform = _loc14_;
         _loc10_.inside.transform.colorTransform = _loc14_;
         _loc12_.inside.transform.colorTransform = _loc14_;
         if(this.§_-61§)
         {
            _loc6_.scaleX = -4;
            _loc15_;
         }
         else
         {
            _loc6_.scaleX = 4;
         }
         _loc6_.scaleY = 4;
         this.§_-jx§.addChild(_loc6_);
      }
   }
}
