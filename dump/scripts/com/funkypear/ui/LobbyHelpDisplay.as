package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §_-Ff§.§_-YS§;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class LobbyHelpDisplay extends Sprite
   {
      
      public function LobbyHelpDisplay(param1:§_-YS§, param2:*)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super();
         _loc3_;
         this.§_-Y4§ = param1;
         _loc4_;
         this.§_-BY§ = param2;
         this.§_-pL§ = 1;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-Y4§.panel_pos == this.§_-37§)
         {
            _loc4_;
            _loc4_;
            x = 25;
            _loc3_;
            y = -155;
            _loc4_;
            _loc4_;
            this.§_-61§ = true;
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.§_-Y4§.panel_pos == this.§_-mq§)
            {
               x = 355;
               _loc4_;
               _loc4_;
               y = -155;
            }
            else
            {
               _loc3_;
               _loc4_;
               _loc3_;
               if(this.§_-Y4§.panel_pos == this.§_-U9§)
               {
                  x = 25;
                  y = 610;
                  this.§_-61§ = true;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  if(this.§_-Y4§.panel_pos == this.§_-a9§)
                  {
                     x = 355;
                     _loc3_;
                     y = 610;
                  }
                  else if(this.§_-Y4§.panel_pos == this.§_-Vo§)
                  {
                     _loc3_;
                  }
                  
               }
            }
         }
         this.§_-44§();
      }
      
      public var §_-jx§:MovieClip;
      
      public var §_-Yr§:TextField;
      
      private var §_-BY§;
      
      public var §_-Y4§:§_-YS§;
      
      private var §_-LX§:String;
      
      private var §_-zJ§:String;
      
      private var §_-pL§:int = 1;
      
      private var §_-37§:int = 0;
      
      private var §_-mq§:int = 1;
      
      private var §_-U9§:int = 2;
      
      private var §_-a9§:int = 3;
      
      private var §_-Vo§:int = 4;
      
      private var y_tween:Tween;
      
      private var §_-61§:Boolean = false;
      
      private var §_-Yz§:LobbyHelpBackground;
      
      private var §_-rO§:Timer;
      
      private var §_-u9§:Boolean = false;
      
      private var §_-70§:Timer;
      
      private var §_-Zx§:Boolean = false;
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.§_-Y4§.panel_pos == this.§_-37§)
         {
            this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-Y4§.panel_pos == this.§_-mq§)
            {
               _loc2_;
               this.y_tween = new Tween(this,"y",Strong.easeOut,-155,5,1,true);
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.§_-Y4§.panel_pos == this.§_-U9§)
               {
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,420,1,true);
               }
               else if(this.§_-Y4§.panel_pos == this.§_-a9§)
               {
                  _loc2_;
                  _loc2_;
                  this.y_tween = new Tween(this,"y",Strong.easeOut,610,420,1,true);
               }
               
            }
         }
         _loc1_;
         this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn,false,0,true);
         _loc1_;
         this.y_tween.start();
      }
      
      public function finishTweenOn(param1:TweenEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         _loc4_;
         this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn);
         _loc5_;
         this.y_tween = null;
         _loc5_;
         _loc5_;
         if(this.§_-Y4§.help_id == 22)
         {
            _loc4_;
            _loc5_;
            _loc4_;
            _loc2_ = this.§_-Y4§.main_text;
            _loc5_;
            _loc5_;
            _loc3_ = _loc2_.split("|");
            if(Global.§_-HH§ == 0)
            {
               this.§_-LX§ = _loc3_[1];
               _loc5_;
            }
            else
            {
               this.§_-LX§ = _loc3_[0];
            }
         }
         else
         {
            this.§_-LX§ = this.§_-Y4§.main_text;
         }
         this.§_-zJ§ = "";
         this.§_-70§ = new Timer(10);
         this.§_-70§.addEventListener(TimerEvent.TIMER,this.§_-QS§,false,0,true);
         _loc5_;
         _loc5_;
         this.§_-70§.start();
      }
      
      public function §_-QS§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         if(this.§_-pL§ <= this.§_-LX§.length)
         {
            this.§_-zJ§ = this.§_-LX§.slice(0,this.§_-pL§);
            _loc5_;
            this.§_-Yr§.text = this.§_-zJ§;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-pL§++;
         }
         else
         {
            this.§_-70§.removeEventListener(TimerEvent.TIMER,this.§_-QS§);
            this.§_-70§.stop();
            this.§_-70§ = null;
            if(this.§_-Y4§.timer_length > 0)
            {
               if(this.§_-rO§ == null)
               {
                  _loc4_;
                  _loc4_;
                  this.§_-rO§ = new Timer(this.§_-Y4§.timer_length,1);
                  _loc4_;
                  this.§_-rO§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-ra§,false,0,true);
                  this.§_-rO§.start();
               }
            }
         }
      }
      
      public function §_-ra§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.§_-u9§)
         {
            _loc3_;
            _loc3_;
            this.tweenOff();
         }
         if(this.§_-rO§ != null)
         {
            this.§_-rO§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-ra§);
            this.§_-rO§.stop();
            _loc3_;
            this.§_-rO§ = null;
         }
      }
      
      public function §_-bi§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-u9§ = true;
         _loc1_;
         _loc1_;
         if(this.§_-rO§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-rO§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-ra§);
            _loc1_;
            _loc1_;
            this.§_-rO§.stop();
            _loc2_;
            _loc2_;
            this.§_-rO§ = null;
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.§_-Zx§)
         {
            _loc1_;
            if(hasEventListener(Event.ENTER_FRAME))
            {
               _loc2_;
               _loc2_;
               removeEventListener(Event.ENTER_FRAME,this.§_-QS§);
               _loc2_;
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            if(this.§_-Y4§.panel_pos == this.§_-37§)
            {
               _loc1_;
               _loc1_;
               this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
               _loc1_;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.§_-Y4§.panel_pos == this.§_-mq§)
               {
                  _loc2_;
                  _loc2_;
                  this.y_tween = new Tween(this,"y",Strong.easeOut,5,-155,1,true);
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  if(this.§_-Y4§.panel_pos == this.§_-U9§)
                  {
                     _loc1_;
                     _loc1_;
                     this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
                     _loc1_;
                  }
                  else if(this.§_-Y4§.panel_pos == this.§_-a9§)
                  {
                     _loc2_;
                     this.y_tween = new Tween(this,"y",Strong.easeOut,450,610,1,true);
                     _loc2_;
                     _loc2_;
                  }
                  
               }
            }
            _loc1_;
            this.y_tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
            _loc2_;
            _loc2_;
            this.y_tween.start();
            _loc2_;
            if(this.§_-Yz§ != null)
            {
               _loc2_;
               this.§_-Yz§.visible = false;
            }
            this.§_-Zx§ = true;
         }
      }
      
      public function §_-96§(param1:LobbyHelpBackground) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Yz§ = param1;
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.y_tween != null)
         {
            _loc3_;
            this.y_tween.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
            _loc3_;
            this.y_tween = null;
            _loc2_;
            _loc2_;
         }
         this.§_-BY§.finishTweenOffHelp();
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
         _loc16_;
         _loc6_.head.addChild(_loc8_);
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
         _loc16_;
         _loc6_.body.addChild(_loc9_);
         _loc7_ = getDefinitionByName("HandClip" + _loc3_) as Class;
         var _loc10_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc6_.righthand.addChild(_loc10_);
         var _loc11_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc6_.lefthand.addChild(_loc11_);
         _loc7_ = getDefinitionByName("FootClip" + _loc4_) as Class;
         var _loc12_:MovieClip = new _loc7_() as MovieClip;
         _loc15_;
         _loc6_.rightfoot.addChild(_loc12_);
         var _loc13_:MovieClip = new _loc7_() as MovieClip;
         _loc16_;
         _loc6_.leftfoot.addChild(_loc13_);
         var _loc14_:ColorTransform = new ColorTransform();
         _loc14_.color = SafeGlobal.colour_hex[_loc5_];
         _loc8_.inside.transform.colorTransform = _loc14_;
         _loc9_.inside.transform.colorTransform = _loc14_;
         _loc15_;
         _loc11_.inside.transform.colorTransform = _loc14_;
         _loc13_.inside.transform.colorTransform = _loc14_;
         _loc10_.inside.transform.colorTransform = _loc14_;
         _loc12_.inside.transform.colorTransform = _loc14_;
         if(this.§_-61§)
         {
            _loc6_.scaleX = -4;
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
