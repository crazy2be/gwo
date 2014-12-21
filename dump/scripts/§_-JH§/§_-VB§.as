package §_-JH§
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-bY§.§_-d8§;
   import §_-bY§.§_-Pv§;
   import flash.events.MouseEvent;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-VB§ extends Sprite
   {
      
      public function §_-VB§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         x = 0;
         _loc1_;
         y = 0;
      }
      
      private var §_-dD§:Array;
      
      private var §_-aj§:Tween;
      
      private var §_-de§:Tween;
      
      private var static:Tween;
      
      private var §_-tg§:Tween;
      
      private var §_-84§:Tween;
      
      private var §_-dm§:Tween;
      
      private var §_-MY§:Tween;
      
      private var §_-ql§:Tween;
      
      private var §_-XA§:Tween;
      
      private var §_-7J§:Tween;
      
      private var §_-D2§:Tween;
      
      private var §_-8F§:§_-6i§;
      
      private var §_-rc§:§_-Lz§;
      
      private var §_-qh§:§_-2y§;
      
      private var §_-x3§:§_-d8§;
      
      private var back_button:§_-Pv§;
      
      private var §_-NB§:Sprite;
      
      private var §_-8O§:Sprite;
      
      private var §_-s2§:Sprite;
      
      private var §_-IW§:int = 0;
      
      private var §_-Y5§:Boolean = false;
      
      private var §_-fQ§:int = 0;
      
      public function init(param1:int, param2:Array, param3:Array) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:§_-dX§ = null;
         _loc6_;
         this.§_-8F§ = new §_-6i§();
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-8F§.x = 400;
         _loc7_;
         _loc7_;
         _loc6_;
         this.§_-8F§.y = 900;
         _loc6_;
         _loc6_;
         addChild(this.§_-8F§);
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-8F§.mouseEnabled = true;
         _loc6_;
         _loc6_;
         _loc6_;
         this.§_-8F§.mouseChildren = false;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         this.§_-8F§.buttonMode = true;
         this.§_-8F§.addEventListener(MouseEvent.ROLL_OVER,this.§_-pg§,false,0,true);
         this.§_-8F§.addEventListener(MouseEvent.ROLL_OUT,this.§_-MV§,false,0,true);
         _loc6_;
         _loc6_;
         this.§_-8F§.addEventListener(MouseEvent.CLICK,this.§_-wM§,false,0,true);
         this.§_-NB§ = new Sprite();
         this.§_-dD§ = new Array();
         _loc4_ = 0;
         while(_loc4_ < param1)
         {
            _loc5_ = new §_-dX§();
            _loc5_.init(_loc4_,param2[_loc4_],param3[_loc4_]);
            _loc7_;
            _loc5_.x = 0;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc5_.y = _loc4_ * 49 + 22;
            _loc6_;
            this.§_-dD§.push(_loc5_);
            _loc6_;
            _loc6_;
            this.§_-NB§.addChild(this.§_-dD§[this.§_-dD§.length - 1]);
            _loc6_;
            _loc4_++;
         }
         _loc6_;
         _loc6_;
         this.§_-NB§.x = -150;
         _loc7_;
         _loc7_;
         this.§_-NB§.y = 19;
         _loc7_;
         addChild(this.§_-NB§);
         this.§_-rc§ = new §_-Lz§();
         _loc6_;
         _loc7_;
         _loc6_;
         this.§_-rc§.x = 50;
         this.§_-rc§.y = -9;
         _loc6_;
         _loc7_;
         this.§_-rc§.mouseEnabled = true;
         _loc7_;
         this.§_-rc§.mouseChildren = false;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.§_-rc§.buttonMode = true;
         _loc6_;
         _loc6_;
         this.§_-rc§.addEventListener(MouseEvent.ROLL_OVER,this.§_-lo§,false,0,true);
         this.§_-rc§.addEventListener(MouseEvent.ROLL_OUT,this.§_-0S§,false,0,true);
         _loc7_;
         this.§_-rc§.addEventListener(MouseEvent.CLICK,this.§_-qY§,false,0,true);
         this.§_-NB§.addChild(this.§_-rc§);
         this.§_-qh§ = new §_-2y§();
         _loc6_;
         _loc6_;
         _loc6_;
         this.§_-qh§.x = 50;
         _loc6_;
         _loc6_;
         this.§_-qh§.y = 494;
         _loc6_;
         _loc6_;
         _loc6_;
         this.§_-qh§.mouseEnabled = true;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-qh§.mouseChildren = false;
         _loc6_;
         this.§_-qh§.buttonMode = true;
         this.§_-qh§.addEventListener(MouseEvent.ROLL_OVER,this.§while§,false,0,true);
         _loc7_;
         this.§_-qh§.addEventListener(MouseEvent.ROLL_OUT,this.§_-X3§,false,0,true);
         _loc7_;
         this.§_-qh§.addEventListener(MouseEvent.CLICK,this.§_-zE§,false,0,true);
         this.§_-NB§.addChild(this.§_-qh§);
         if(this.§_-dD§.length <= 10)
         {
            _loc6_;
            this.§_-rc§.visible = false;
            this.§_-qh§.visible = false;
         }
         this.§_-Ig§(0);
         this.§_-kO§(0);
         this.§_-8O§ = new Sprite();
         _loc6_;
         this.§_-8O§.x = 0;
         this.§_-8O§.y = 930;
         _loc7_;
         addChild(this.§_-8O§);
         this.§_-x3§ = new §_-d8§();
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.§_-x3§.x = -250;
         this.§_-x3§.y = 518;
         addChild(this.§_-x3§);
         _loc7_;
         _loc7_;
         this.back_button = new §_-Pv§();
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.back_button.x = 805;
         this.back_button.y = 518;
         addChild(this.back_button);
      }
      
      public function §_-Ig§(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.§_-fQ§ = param1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc3_ >= this.§_-dD§.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc3_ < param1 || _loc3_ > param1 + 9)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-dD§[_loc3_].visible = false;
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc4_;
               this.§_-dD§[_loc3_].y = _loc2_ * 49 + 22;
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-dD§[_loc3_].visible = true;
               _loc2_++;
            }
            _loc3_++;
         }
         _loc5_;
         if(this.§_-dD§.length <= 10)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            this.§_-rc§.visible = false;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-qh§.visible = false;
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc5_;
            if(this.§_-fQ§ == 0)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-rc§.visible = false;
               _loc4_;
               _loc4_;
            }
            else
            {
               this.§_-rc§.visible = true;
               _loc5_;
               _loc5_;
            }
            if(this.§_-fQ§ + 9 == this.§_-dD§.length - 1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-qh§.visible = false;
            }
            else
            {
               this.§_-qh§.visible = true;
            }
         }
      }
      
      public function §_-kO§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-dD§[this.§_-IW§].setIsSelected(false);
         _loc2_;
         this.§_-dD§[param1].setIsSelected(true);
      }
      
      public function §_-94§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc7_;
         if(this.§_-Y5§)
         {
            _loc6_;
            _loc7_;
            _loc7_;
            if(param1 > param2)
            {
               _loc6_;
               _loc6_;
               _loc7_;
               var param1:int = param2;
               _loc7_;
               _loc7_;
            }
            _loc6_;
            _loc6_;
            _loc6_;
            if(param1 <= 0)
            {
               _loc6_;
               _loc6_;
               this.§_-8O§.graphics.clear();
            }
            else
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc4_ = param1 / param2;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc5_ = 800 * _loc4_;
               this.§_-8O§.graphics.clear();
               _loc7_;
               this.§_-8O§.graphics.lineStyle(6,10079232,1,false,LineScaleMode.NORMAL,CapsStyle.SQUARE,JointStyle.MITER);
               this.§_-8O§.graphics.moveTo(0,0);
               _loc7_;
               this.§_-8O§.graphics.lineTo(_loc5_,0);
            }
         }
         else if(param3)
         {
            this.§_-8O§.graphics.clear();
         }
         
      }
      
      public function resetToTurnStart(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Y5§ = false;
         _loc2_;
         this.§_-IW§ = param1;
         _loc2_;
         _loc2_;
         SafeGlobal.§_-Rm§.resetToTurnStart(param1);
         _loc3_;
         _loc3_;
         this.tweenOn();
      }
      
      public function playFromTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Y5§ = true;
         _loc3_;
         _loc3_;
         SafeGlobal.§_-Rm§.playFromTurn(param1);
         _loc2_;
         _loc2_;
         this.tweenOff();
      }
      
      public function tweenOn(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-Y5§ = false;
         this.§_-MV§(null);
         this.§_-aj§ = new Tween(this.§_-NB§,"x",Strong.easeOut,this.§_-NB§.x,5,1,true);
         this.§_-de§ = new Tween(this.§_-x3§,"x",Strong.easeOut,this.§_-x3§.x,0,1,true);
         this.static = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,550,1,true);
         this.§_-aj§.start();
         this.§_-de§.start();
         _loc3_;
         this.static.start();
         _loc2_;
         if(param1)
         {
            _loc2_;
            this.§_-tg§ = new Tween(this.§_-8F§,"y",Strong.easeOut,this.§_-8F§.y,560,1,true);
            this.§_-84§ = new Tween(this.§_-8O§,"y",Strong.easeOut,this.§_-8O§.y,597,1,true);
            _loc3_;
            this.§_-tg§.start();
            this.§_-84§.start();
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-aj§ = new Tween(this.§_-NB§,"x",Strong.easeOut,this.§_-NB§.x,-150,1,true);
         _loc1_;
         this.§_-de§ = new Tween(this.§_-x3§,"x",Strong.easeOut,this.§_-x3§.x,-300,1,true);
         this.static = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,805,1,true);
         this.§_-aj§.start();
         _loc2_;
         this.§_-de§.start();
         _loc2_;
         this.static.start();
      }
      
      public function §_-TL§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-aj§ = new Tween(this.§_-NB§,"x",Strong.easeOut,this.§_-NB§.x,-150,1,true);
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-aj§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-rh§,false,0,true);
         _loc1_;
         this.§_-de§ = new Tween(this.§_-x3§,"x",Strong.easeOut,this.§_-x3§.x,-300,1,true);
         this.static = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,805,1,true);
         this.§_-tg§ = new Tween(this.§_-8F§,"y",Strong.easeOut,this.§_-8F§.y,900,1,true);
         this.§_-84§ = new Tween(this.§_-8O§,"y",Strong.easeOut,this.§_-8O§.y,930,1,true);
         _loc1_;
         _loc1_;
         this.§_-aj§.start();
         this.§_-de§.start();
         this.static.start();
         this.§_-tg§.start();
         _loc2_;
         _loc2_;
         this.§_-84§.start();
      }
      
      public function §_-rh§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.§_-Rm§.finishtweenOff();
      }
      
      public function §_-wM§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-Y5§)
         {
            _loc2_;
            this.resetToTurnStart(this.§_-IW§);
            _loc3_;
         }
         else
         {
            this.playFromTurn(this.§_-IW§);
            _loc2_;
            _loc2_;
         }
         this.§_-pg§(null);
      }
      
      public function §_-zE§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         var _loc2_:int = this.§_-fQ§ + 10;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(_loc2_ + 9 >= this.§_-dD§.length)
         {
            _loc4_;
            _loc2_ = this.§_-dD§.length - 10;
            _loc4_;
            _loc4_;
         }
         this.§_-Ig§(_loc2_);
      }
      
      public function §_-qY§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         var _loc2_:int = this.§_-fQ§ - 10;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(_loc2_ < 0)
         {
            _loc3_;
            _loc2_ = 0;
            _loc4_;
            _loc4_;
         }
         this.§_-Ig§(_loc2_);
      }
      
      public function §_-pg§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-Y5§)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-8F§.gotoAndStop("pause_over");
            _loc3_;
         }
         else
         {
            this.§_-8F§.gotoAndStop("play_over");
            _loc3_;
         }
         this.§_-3J§();
      }
      
      public function §_-MV§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-Y5§)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-8F§.gotoAndStop("pause_up");
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-8F§.gotoAndStop("play_up");
            _loc2_;
            _loc2_;
         }
         this.§_-xd§();
      }
      
      public function §_-lo§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var _loc2_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(this.§_-dm§ == null) && !(this.§_-MY§ == null))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-dm§.isPlaying) || (this.§_-MY§.isPlaying))
            {
               _loc3_;
               this.§_-dm§.stop();
               _loc4_;
               _loc4_;
               this.§_-MY§.stop();
            }
            this.§_-dm§ = null;
            this.§_-MY§ = null;
            _loc3_;
            _loc3_;
         }
         this.§_-dm§ = new Tween(this.§_-rc§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-MY§ = new Tween(this.§_-rc§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-dm§.start();
         this.§_-MY§.start();
      }
      
      public function §_-0S§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 1;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-dm§ == null) && !(this.§_-MY§ == null))
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if((this.§_-dm§.isPlaying) || (this.§_-MY§.isPlaying))
            {
               _loc3_;
               this.§_-dm§.stop();
               _loc4_;
               _loc4_;
               this.§_-MY§.stop();
               _loc4_;
            }
            this.§_-dm§ = null;
            _loc3_;
            this.§_-MY§ = null;
         }
         this.§_-dm§ = new Tween(this.§_-rc§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-MY§ = new Tween(this.§_-rc§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-dm§.start();
         this.§_-MY§.start();
      }
      
      public function §while§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         var _loc2_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(!(this.§_-ql§ == null) && !(this.§_-XA§ == null))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-ql§.isPlaying) || (this.§_-XA§.isPlaying))
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-ql§.stop();
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-XA§.stop();
               _loc3_;
            }
            this.§_-ql§ = null;
            _loc3_;
            this.§_-XA§ = null;
            _loc3_;
         }
         this.§_-ql§ = new Tween(this.§_-qh§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-XA§ = new Tween(this.§_-qh§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-ql§.start();
         this.§_-XA§.start();
      }
      
      public function §_-X3§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(this.§_-ql§ == null) && !(this.§_-XA§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-ql§.isPlaying) || (this.§_-XA§.isPlaying))
            {
               _loc4_;
               this.§_-ql§.stop();
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-XA§.stop();
            }
            this.§_-ql§ = null;
            _loc4_;
            this.§_-XA§ = null;
         }
         this.§_-ql§ = new Tween(this.§_-qh§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-XA§ = new Tween(this.§_-qh§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         _loc4_;
         this.§_-ql§.start();
         _loc3_;
         _loc3_;
         this.§_-XA§.start();
      }
      
      private function §_-3J§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         var _loc1_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!(this.§_-7J§ == null) && !(this.§_-D2§ == null))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-7J§.isPlaying) || (this.§_-D2§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-7J§.stop();
               _loc2_;
               _loc2_;
               this.§_-D2§.stop();
            }
            this.§_-7J§ = null;
            this.§_-D2§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-7J§ = new Tween(this.§_-8F§,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc2_;
         this.§_-D2§ = new Tween(this.§_-8F§,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-7J§.start();
         _loc2_;
         this.§_-D2§.start();
      }
      
      private function §_-xd§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = 1;
         _loc3_;
         _loc2_;
         _loc2_;
         if(!(this.§_-7J§ == null) && !(this.§_-D2§ == null))
         {
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            if((this.§_-7J§.isPlaying) || (this.§_-D2§.isPlaying))
            {
               _loc3_;
               this.§_-7J§.stop();
               _loc2_;
               _loc2_;
               this.§_-D2§.stop();
            }
            this.§_-7J§ = null;
            this.§_-D2§ = null;
            _loc3_;
            _loc3_;
         }
         this.§_-7J§ = new Tween(this.§_-8F§,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-D2§ = new Tween(this.§_-8F§,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-7J§.start();
         _loc3_;
         this.§_-D2§.start();
      }
   }
}
