package §_-zO§
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-ZN§.§_-ow§;
   import §_-ZN§.§_-iY§;
   import flash.events.MouseEvent;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-kE§ extends Sprite
   {
      
      public function §_-kE§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      private var §_-3v§:Array;
      
      private var §_-GL§:Tween;
      
      private var §_-wj§:Tween;
      
      private var §_-OE§:Tween;
      
      private var §_-uK§:Tween;
      
      private var §_-XC§:Tween;
      
      private var §_-ex§:Tween;
      
      private var §_-0L§:Tween;
      
      private var §_-FI§:Tween;
      
      private var §_-My§:Tween;
      
      private var §_-wT§:Tween;
      
      private var §_-q0§:Tween;
      
      private var §_-nN§:§_-AR§;
      
      private var §_-yZ§:§_-Ms§;
      
      private var §_-iA§:§_-Na§;
      
      private var §_-QZ§:§_-ow§;
      
      private var back_button:§_-iY§;
      
      private var §_-Yz§:Sprite;
      
      private var §_-bW§:Sprite;
      
      private var §_-VH§:Sprite;
      
      private var §_-eS§:int = 0;
      
      private var §_-vn§:Boolean = false;
      
      private var §_-cu§:int = 0;
      
      public function init(param1:int, param2:Array, param3:Array) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:§_-HH§ = null;
         this.§_-nN§ = new §_-AR§();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         this.§_-nN§.x = 400;
         this.§_-nN§.y = 900;
         _loc7_;
         addChild(this.§_-nN§);
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-nN§.mouseEnabled = true;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.§_-nN§.mouseChildren = false;
         _loc7_;
         this.§_-nN§.buttonMode = true;
         _loc6_;
         this.§_-nN§.addEventListener(MouseEvent.ROLL_OVER,this.§_-EL§,false,0,true);
         this.§_-nN§.addEventListener(MouseEvent.ROLL_OUT,this.§_-3S§,false,0,true);
         _loc6_;
         this.§_-nN§.addEventListener(MouseEvent.CLICK,this.§_-Ma§,false,0,true);
         _loc6_;
         _loc6_;
         this.§_-Yz§ = new Sprite();
         _loc6_;
         this.§_-3v§ = new Array();
         _loc6_;
         _loc4_ = 0;
         while(_loc4_ < param1)
         {
            _loc5_ = new §_-HH§();
            _loc5_.init(_loc4_,param2[_loc4_],param3[_loc4_]);
            _loc7_;
            _loc7_;
            _loc5_.x = 0;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc5_.y = _loc4_ * 49 + 22;
            _loc6_;
            this.§_-3v§.push(_loc5_);
            _loc7_;
            this.§_-Yz§.addChild(this.§_-3v§[this.§_-3v§.length - 1]);
            _loc7_;
            _loc4_++;
         }
         this.§_-Yz§.x = -150;
         this.§_-Yz§.y = 19;
         addChild(this.§_-Yz§);
         this.§_-yZ§ = new §_-Ms§();
         _loc6_;
         this.§_-yZ§.x = 50;
         _loc7_;
         this.§_-yZ§.y = -9;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-yZ§.mouseEnabled = true;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-yZ§.mouseChildren = false;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.§_-yZ§.buttonMode = true;
         this.§_-yZ§.addEventListener(MouseEvent.ROLL_OVER,this.§_-Fu§,false,0,true);
         _loc7_;
         _loc7_;
         this.§_-yZ§.addEventListener(MouseEvent.ROLL_OUT,this.§_-9A§,false,0,true);
         _loc7_;
         _loc6_;
         this.§_-yZ§.addEventListener(MouseEvent.CLICK,this.§_-cE§,false,0,true);
         this.§_-Yz§.addChild(this.§_-yZ§);
         this.§_-iA§ = new §_-Na§();
         _loc7_;
         _loc7_;
         this.§_-iA§.x = 50;
         this.§_-iA§.y = 494;
         _loc7_;
         _loc7_;
         _loc6_;
         this.§_-iA§.mouseEnabled = true;
         _loc6_;
         this.§_-iA§.mouseChildren = false;
         _loc6_;
         _loc7_;
         _loc7_;
         this.§_-iA§.buttonMode = true;
         _loc6_;
         _loc6_;
         this.§_-iA§.addEventListener(MouseEvent.ROLL_OVER,this.§_-S-§,false,0,true);
         _loc6_;
         this.§_-iA§.addEventListener(MouseEvent.ROLL_OUT,this.§_-qv§,false,0,true);
         _loc6_;
         this.§_-iA§.addEventListener(MouseEvent.CLICK,this.§_-PB§,false,0,true);
         this.§_-Yz§.addChild(this.§_-iA§);
         if(this.§_-3v§.length <= 10)
         {
            this.§_-yZ§.visible = false;
            this.§_-iA§.visible = false;
            _loc6_;
            _loc6_;
         }
         this.§_-Rp§(0);
         this.§_-tK§(0);
         _loc6_;
         this.§_-bW§ = new Sprite();
         this.§_-bW§.x = 0;
         _loc7_;
         this.§_-bW§.y = 930;
         _loc7_;
         _loc7_;
         addChild(this.§_-bW§);
         _loc7_;
         _loc7_;
         this.§_-QZ§ = new §_-ow§();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         this.§_-QZ§.x = -250;
         _loc7_;
         _loc7_;
         this.§_-QZ§.y = 518;
         addChild(this.§_-QZ§);
         this.back_button = new §_-iY§();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         this.back_button.x = 805;
         this.back_button.y = 518;
         addChild(this.back_button);
      }
      
      public function §_-Rp§(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.§_-cu§ = param1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc5_;
            if(_loc3_ >= this.§_-3v§.length)
            {
               break;
            }
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(_loc3_ < param1 || _loc3_ > param1 + 9)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-3v§[_loc3_].visible = false;
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-3v§[_loc3_].y = _loc2_ * 49 + 22;
               _loc5_;
               _loc5_;
               this.§_-3v§[_loc3_].visible = true;
               _loc2_++;
            }
            _loc3_++;
         }
         if(this.§_-3v§.length <= 10)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-yZ§.visible = false;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-iA§.visible = false;
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.§_-cu§ == 0)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               this.§_-yZ§.visible = false;
               _loc5_;
            }
            else
            {
               this.§_-yZ§.visible = true;
            }
            if(this.§_-cu§ + 9 == this.§_-3v§.length - 1)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               this.§_-iA§.visible = false;
               _loc4_;
               _loc4_;
            }
            else
            {
               this.§_-iA§.visible = true;
            }
         }
      }
      
      public function §_-tK§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-3v§[this.§_-eS§].setIsSelected(false);
         _loc3_;
         _loc3_;
         this.§_-3v§[param1].setIsSelected(true);
      }
      
      public function §_-RU§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc6_;
         _loc6_;
         if(this.§_-vn§)
         {
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            if(param1 > param2)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               var param1:int = param2;
               _loc6_;
            }
            _loc6_;
            _loc6_;
            _loc6_;
            if(param1 <= 0)
            {
               this.§_-bW§.graphics.clear();
               _loc7_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_ = param1 / param2;
               _loc7_;
               _loc5_ = 800 * _loc4_;
               this.§_-bW§.graphics.clear();
               this.§_-bW§.graphics.lineStyle(6,10079232,1,false,LineScaleMode.NORMAL,CapsStyle.SQUARE,JointStyle.MITER);
               _loc6_;
               this.§_-bW§.graphics.moveTo(0,0);
               _loc7_;
               _loc7_;
               this.§_-bW§.graphics.lineTo(_loc5_,0);
               _loc6_;
               _loc6_;
            }
         }
         else if(param3)
         {
            this.§_-bW§.graphics.clear();
         }
         
      }
      
      public function resetToTurnStart(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-vn§ = false;
         _loc3_;
         this.§_-eS§ = param1;
         _loc3_;
         _loc3_;
         SafeGlobal.§_-zE§.resetToTurnStart(param1);
         _loc2_;
         this.tweenOn();
      }
      
      public function playFromTurn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-vn§ = true;
         _loc3_;
         _loc3_;
         SafeGlobal.§_-zE§.playFromTurn(param1);
         _loc3_;
         this.tweenOff();
      }
      
      public function tweenOn(param1:Boolean = false) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-vn§ = false;
         this.§_-3S§(null);
         _loc2_;
         _loc2_;
         this.§_-GL§ = new Tween(this.§_-Yz§,"x",Strong.easeOut,this.§_-Yz§.x,5,1,true);
         this.§_-wj§ = new Tween(this.§_-QZ§,"x",Strong.easeOut,this.§_-QZ§.x,0,1,true);
         this.§_-OE§ = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,550,1,true);
         this.§_-GL§.start();
         _loc3_;
         this.§_-wj§.start();
         _loc2_;
         this.§_-OE§.start();
         if(param1)
         {
            _loc3_;
            _loc3_;
            this.§_-uK§ = new Tween(this.§_-nN§,"y",Strong.easeOut,this.§_-nN§.y,560,1,true);
            _loc3_;
            _loc3_;
            this.§_-XC§ = new Tween(this.§_-bW§,"y",Strong.easeOut,this.§_-bW§.y,597,1,true);
            _loc2_;
            _loc2_;
            this.§_-uK§.start();
            _loc2_;
            _loc2_;
            this.§_-XC§.start();
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-GL§ = new Tween(this.§_-Yz§,"x",Strong.easeOut,this.§_-Yz§.x,-150,1,true);
         _loc2_;
         _loc2_;
         this.§_-wj§ = new Tween(this.§_-QZ§,"x",Strong.easeOut,this.§_-QZ§.x,-300,1,true);
         this.§_-OE§ = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,805,1,true);
         this.§_-GL§.start();
         this.§_-wj§.start();
         this.§_-OE§.start();
      }
      
      public function §_-PU§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-GL§ = new Tween(this.§_-Yz§,"x",Strong.easeOut,this.§_-Yz§.x,-150,1,true);
         _loc2_;
         this.§_-GL§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-uq§,false,0,true);
         this.§_-wj§ = new Tween(this.§_-QZ§,"x",Strong.easeOut,this.§_-QZ§.x,-300,1,true);
         _loc2_;
         _loc2_;
         this.§_-OE§ = new Tween(this.back_button,"x",Strong.easeOut,this.back_button.x,805,1,true);
         this.§_-uK§ = new Tween(this.§_-nN§,"y",Strong.easeOut,this.§_-nN§.y,900,1,true);
         this.§_-XC§ = new Tween(this.§_-bW§,"y",Strong.easeOut,this.§_-bW§.y,930,1,true);
         this.§_-GL§.start();
         this.§_-wj§.start();
         _loc2_;
         _loc2_;
         this.§_-OE§.start();
         this.§_-uK§.start();
         this.§_-XC§.start();
      }
      
      public function §_-uq§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.§_-zE§.finishtweenOff();
      }
      
      public function §_-Ma§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-vn§)
         {
            _loc3_;
            this.resetToTurnStart(this.§_-eS§);
            _loc3_;
         }
         else
         {
            this.playFromTurn(this.§_-eS§);
            _loc2_;
            _loc2_;
         }
         this.§_-EL§(null);
      }
      
      public function §_-PB§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         var _loc2_:int = this.§_-cu§ + 10;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(_loc2_ + 9 >= this.§_-3v§.length)
         {
            _loc4_;
            _loc4_;
            _loc2_ = this.§_-3v§.length - 10;
            _loc3_;
            _loc3_;
         }
         this.§_-Rp§(_loc2_);
      }
      
      public function §_-cE§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var _loc2_:int = this.§_-cu§ - 10;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(_loc2_ < 0)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            _loc3_;
         }
         this.§_-Rp§(_loc2_);
      }
      
      public function §_-EL§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-vn§)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-nN§.gotoAndStop("pause_over");
            _loc3_;
         }
         else
         {
            this.§_-nN§.gotoAndStop("play_over");
            _loc3_;
            _loc3_;
         }
         this.§_-ak§();
      }
      
      public function §_-3S§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-vn§)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            this.§_-nN§.gotoAndStop("pause_up");
            _loc3_;
         }
         else
         {
            this.§_-nN§.gotoAndStop("play_up");
            _loc3_;
         }
         this.§_-Fn§();
      }
      
      public function §_-Fu§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         var _loc2_:Number = 1.1;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(!(this.§_-ex§ == null) && !(this.§_-0L§ == null))
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-ex§.isPlaying) || (this.§_-0L§.isPlaying))
            {
               _loc4_;
               _loc4_;
               _loc3_;
               this.§_-ex§.stop();
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-0L§.stop();
               _loc3_;
               _loc3_;
            }
            this.§_-ex§ = null;
            _loc4_;
            this.§_-0L§ = null;
         }
         this.§_-ex§ = new Tween(this.§_-yZ§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-0L§ = new Tween(this.§_-yZ§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc3_;
         _loc3_;
         this.§_-ex§.start();
         this.§_-0L§.start();
      }
      
      public function §_-9A§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-ex§ == null) && !(this.§_-0L§ == null))
         {
            _loc3_;
            _loc3_;
            _loc4_;
            if((this.§_-ex§.isPlaying) || (this.§_-0L§.isPlaying))
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-ex§.stop();
               _loc3_;
               _loc3_;
               this.§_-0L§.stop();
            }
            this.§_-ex§ = null;
            this.§_-0L§ = null;
         }
         this.§_-ex§ = new Tween(this.§_-yZ§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc3_;
         _loc3_;
         this.§_-0L§ = new Tween(this.§_-yZ§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-ex§.start();
         this.§_-0L§.start();
      }
      
      public function §_-S-§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var _loc2_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(!(this.§_-FI§ == null) && !(this.§_-My§ == null))
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if((this.§_-FI§.isPlaying) || (this.§_-My§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-FI§.stop();
               _loc3_;
               this.§_-My§.stop();
            }
            this.§_-FI§ = null;
            _loc3_;
            this.§_-My§ = null;
         }
         this.§_-FI§ = new Tween(this.§_-iA§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc3_;
         _loc3_;
         this.§_-My§ = new Tween(this.§_-iA§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-FI§.start();
         _loc3_;
         _loc3_;
         this.§_-My§.start();
      }
      
      public function §_-qv§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         _loc3_;
         if(!(this.§_-FI§ == null) && !(this.§_-My§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-FI§.isPlaying) || (this.§_-My§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-FI§.stop();
               _loc4_;
               _loc4_;
               this.§_-My§.stop();
            }
            this.§_-FI§ = null;
            _loc4_;
            this.§_-My§ = null;
            _loc3_;
         }
         this.§_-FI§ = new Tween(this.§_-iA§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-My§ = new Tween(this.§_-iA§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-FI§.start();
         this.§_-My§.start();
      }
      
      private function §_-ak§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         var _loc1_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(this.§_-wT§ == null) && !(this.§_-q0§ == null))
         {
            _loc2_;
            if((this.§_-wT§.isPlaying) || (this.§_-q0§.isPlaying))
            {
               _loc2_;
               this.§_-wT§.stop();
               _loc3_;
               this.§_-q0§.stop();
            }
            this.§_-wT§ = null;
            _loc3_;
            this.§_-q0§ = null;
         }
         this.§_-wT§ = new Tween(this.§_-nN§,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc3_;
         _loc3_;
         this.§_-q0§ = new Tween(this.§_-nN§,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-wT§.start();
         _loc2_;
         _loc2_;
         this.§_-q0§.start();
      }
      
      private function §_-Fn§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = 1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(this.§_-wT§ == null) && !(this.§_-q0§ == null))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            if((this.§_-wT§.isPlaying) || (this.§_-q0§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-wT§.stop();
               _loc3_;
               _loc3_;
               this.§_-q0§.stop();
            }
            this.§_-wT§ = null;
            _loc3_;
            _loc3_;
            this.§_-q0§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-wT§ = new Tween(this.§_-nN§,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-q0§ = new Tween(this.§_-nN§,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-wT§.start();
         _loc2_;
         this.§_-q0§.start();
      }
   }
}
