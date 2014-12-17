package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §_-Cv§.§_-Wh§;
   import flash.utils.Timer;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.events.TimerEvent;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class TutorialItemDisplay extends MovieClip
   {
      
      public function TutorialItemDisplay(param1:§_-Wh§, param2:*)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.§_-sb§ = param2;
         this.§_-cZ§ = param1;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-cZ§.panel_pos == this.§_-TL§)
         {
            _loc3_;
            _loc3_;
            x = 5;
            y = -155;
            _loc4_;
            _loc4_;
            this.§_-9J§ = true;
         }
         else
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.§_-cZ§.panel_pos == this.§_-Fy§)
            {
               x = 355;
               _loc4_;
               _loc4_;
               y = -155;
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(this.§_-cZ§.panel_pos == this.§_-bm§)
               {
                  x = 5;
                  _loc4_;
                  _loc4_;
                  y = 610;
                  this.§_-9J§ = true;
               }
               else if(this.§_-cZ§.panel_pos == this.§_-VN§)
               {
                  _loc3_;
                  _loc3_;
                  x = 355;
                  y = 610;
               }
               
            }
         }
         this.§_-iQ§();
      }
      
      public var §_-tj§:MovieClip;
      
      public var §_-GY§:TextField;
      
      private var §_-sb§;
      
      private var §_-cZ§:§_-Wh§;
      
      private var §_-hw§:String;
      
      private var §_-UU§:String;
      
      private var §_-Xh§:int = 1;
      
      private var §_-8b§:Timer;
      
      private var §_-TL§:int = 0;
      
      private var §_-Fy§:int = 1;
      
      private var §_-bm§:int = 2;
      
      private var §_-VN§:int = 3;
      
      private var y_tween:Tween;
      
      private var §_-9J§:Boolean = false;
      
      private var §_-9a§:Timer;
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-cZ§.panel_pos == this.§_-TL§)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
         }
         else
         {
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-cZ§.panel_pos == this.§_-Fy§)
            {
               _loc1_;
               _loc1_;
               this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               if(this.§_-cZ§.panel_pos == this.§_-bm§)
               {
                  _loc1_;
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,450,1,true);
                  _loc2_;
               }
               else if(this.§_-cZ§.panel_pos == this.§_-VN§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,450,1,true);
                  _loc1_;
                  _loc1_;
               }
               
            }
         }
         _loc1_;
         this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn,false,0,true);
         this.y_tween.start();
      }
      
      public function finishTweenOn(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn);
         this.y_tween = null;
         this.§_-hw§ = this.§_-cZ§.main_text;
         this.§_-UU§ = "";
         _loc3_;
         this.§_-9a§ = new Timer(10);
         _loc3_;
         _loc3_;
         this.§_-9a§.addEventListener(TimerEvent.TIMER,this.§_-F3§,false,0,true);
         this.§_-9a§.start();
      }
      
      public function §_-F3§(param1:TimerEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-Xh§ <= this.§_-hw§.length)
         {
            _loc5_;
            this.§_-UU§ = this.§_-hw§.slice(0,this.§_-Xh§);
            this.§_-GY§.text = this.§_-UU§;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-Xh§++;
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-9a§.removeEventListener(TimerEvent.TIMER,this.§_-F3§);
            _loc4_;
            _loc4_;
            this.§_-9a§.stop();
            this.§_-9a§ = null;
            _loc5_;
            _loc5_;
            if(this.§_-cZ§.dismiss_type == 0)
            {
               this.§_-8b§ = new Timer(3000,1);
               this.§_-8b§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-bR§,false,0,true);
               _loc5_;
               this.§_-8b§.start();
            }
         }
      }
      
      public function §_-bR§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-8b§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-bR§);
         _loc3_;
         this.§_-8b§ = null;
         _loc2_;
         this.tweenOff();
      }
      
      public function tweenOff(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.y_tween != null)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn);
            _loc3_;
            _loc3_;
            this.y_tween.stop();
            _loc3_;
            this.y_tween = null;
         }
         if(this.§_-8b§ != null)
         {
            this.§_-8b§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-bR§);
            _loc3_;
            this.§_-8b§.stop();
            this.§_-8b§ = null;
            _loc2_;
         }
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(this.§_-cZ§.panel_pos == this.§_-TL§)
         {
            _loc3_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.§_-cZ§.panel_pos == this.§_-Fy§)
            {
               this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
               _loc2_;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(this.§_-cZ§.panel_pos == this.§_-bm§)
               {
                  _loc2_;
                  this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
               }
               else if(this.§_-cZ§.panel_pos == this.§_-VN§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
               }
               
            }
         }
         if(param1)
         {
            _loc3_;
            _loc2_;
            this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-tB§,false,0,true);
         }
         else
         {
            _loc2_;
            this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         }
         this.y_tween.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.y_tween != null)
         {
            _loc2_;
            _loc2_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
            _loc2_;
            _loc2_;
            this.y_tween = null;
            _loc2_;
         }
         this.§_-sb§.finishDismissTutorialItem();
      }
      
      public function §_-tB§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.y_tween != null)
         {
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-tB§);
            _loc2_;
            this.y_tween = null;
            _loc2_;
            _loc2_;
         }
         SafeGlobal.TIMELINE.finishHideTutorialItemDisplay();
      }
      
      private function §_-iQ§() : void
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         var _loc5_:* = 0;
         var _loc6_:MovieClip = new §_-1C§();
         var _loc7_:Class = getDefinitionByName("HeadClip" + _loc1_) as Class;
         var _loc8_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc6_.head.addChild(_loc8_);
         _loc15_;
         if(_loc6_.body is §_-8J§)
         {
            _loc7_ = getDefinitionByName("BodyClip" + _loc2_) as Class;
         }
         else
         {
            _loc7_ = getDefinitionByName("BodyClipNew" + _loc2_) as Class;
         }
         var _loc9_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.body.addChild(_loc9_);
         _loc7_ = getDefinitionByName("HandClip" + _loc3_) as Class;
         var _loc10_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.righthand.addChild(_loc10_);
         var _loc11_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.lefthand.addChild(_loc11_);
         _loc7_ = getDefinitionByName("FootClip" + _loc4_) as Class;
         var _loc12_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc6_.rightfoot.addChild(_loc12_);
         var _loc13_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc6_.leftfoot.addChild(_loc13_);
         var _loc14_:ColorTransform = new ColorTransform();
         _loc14_.color = SafeGlobal.colour_hex[_loc5_];
         _loc15_;
         _loc8_.inside.transform.colorTransform = _loc14_;
         _loc16_;
         _loc16_;
         _loc9_.inside.transform.colorTransform = _loc14_;
         _loc16_;
         _loc16_;
         _loc11_.inside.transform.colorTransform = _loc14_;
         _loc16_;
         _loc16_;
         _loc13_.inside.transform.colorTransform = _loc14_;
         _loc10_.inside.transform.colorTransform = _loc14_;
         _loc15_;
         _loc15_;
         _loc12_.inside.transform.colorTransform = _loc14_;
         if(this.§_-9J§)
         {
            _loc6_.scaleX = -4;
         }
         else
         {
            _loc6_.scaleX = 4;
         }
         _loc6_.scaleY = 4;
         _loc15_;
         _loc15_;
         this.§_-tj§.addChild(_loc6_);
      }
   }
}
