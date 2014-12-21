package §_-JH§
{
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.display.Bitmap;
   import fl.transitions.Tween;
   import flash.geom.Point;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import flash.geom.Matrix;
   import flash.display.StageQuality;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import flash.filters.*;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.net.URLRequestMethod;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import §_-bk§.§_-Em§;
   import fl.transitions.TweenEvent;
   import §_-bk§.§_-pM§;
   
   public class Planet extends Sprite
   {
      
      public function Planet(param1:Number, param2:Number, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:Boolean = false, param9:Boolean = false)
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc10_:* = NaN;
         _loc12_;
         this.§_-f§ = [];
         this.§_-mU§ = [];
         this.§_-oY§ = new §_-wj§();
         this.§_-8h§ = new §_-Af§();
         this.§_-I2§ = new Sprite();
         this.§_-9e§ = [new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)];
         _loc12_;
         _loc12_;
         this.shieldGFX1 = new Sprite();
         _loc13_;
         this.shieldGFX2 = new Sprite();
         _loc13_;
         _loc13_;
         this.shieldGFX3 = new Sprite();
         this.§_-XI§ = new Point(0,0);
         _loc12_;
         super();
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         if(param8)
         {
            this.sun = true;
            _loc12_;
            _loc12_;
         }
         else
         {
            _loc12_;
            if(param9)
            {
               this.blackHole = true;
            }
         }
         x = Math.floor(param1);
         y = Math.floor(param2);
         _loc12_;
         this.radius = param3;
         this.gfxID = param4;
         addChild(this.shieldGFX1);
         this.shieldGFX1.visible = false;
         _loc12_;
         _loc12_;
         this.shieldGFX1.width = this.shieldGFX1.height = (this.radius + 50) * 2;
         addChild(this.shieldGFX2);
         _loc12_;
         _loc12_;
         this.shieldGFX2.visible = false;
         _loc12_;
         _loc12_;
         this.shieldGFX2.width = this.shieldGFX2.height = (this.radius + 45) * 2;
         addChild(this.shieldGFX3);
         this.shieldGFX3.visible = false;
         this.shieldGFX3.width = this.shieldGFX3.height = (this.radius + 40) * 2;
         this.§_-Ld§ = y - (this.radius + 1);
         _loc13_;
         this.§_-5L§ = y + (this.radius + 1);
         this.§_-wN§ = x - (this.radius + 1);
         _loc13_;
         this.§_-lx§ = x + (this.radius + 1);
         _loc13_;
         this.§_-9e§[0].x = this.§_-wN§;
         this.§_-9e§[0].y = this.§_-Ld§;
         _loc13_;
         this.§_-9e§[1].x = this.§_-lx§;
         _loc12_;
         _loc13_;
         _loc13_;
         this.§_-9e§[1].y = this.§_-Ld§;
         _loc12_;
         this.§_-9e§[2].x = this.§_-lx§;
         this.§_-9e§[2].y = this.§_-5L§;
         this.§_-9e§[3].x = this.§_-wN§;
         _loc13_;
         this.§_-9e§[3].y = this.§_-5L§;
         _loc13_;
         if(param7)
         {
            _loc13_;
            this.§_-fh§();
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc13_;
            _loc12_;
            _loc13_;
            this.initialMass = this.mass = this.§_-cl§(1.3 * this.PI * this.radius * this.radius * this.radius);
            _loc13_;
            _loc13_;
            _loc10_ = 0;
            _loc12_;
            _loc12_;
            this.initialArea = this.area = this.getArea();
            _loc12_;
            _loc12_;
            this.shapes[0].mass = this.initialMass;
            this.§_-2b§ = param1;
            _loc13_;
            this.§_-ie§ = param2;
            _loc12_;
            _loc12_;
            this.§_-PU§ = param3;
            this.init();
            _loc12_;
            _loc12_;
            _loc12_;
            if(param5 > 0)
            {
               this.activateRadioactivity(param5);
            }
            if(param6 == 1)
            {
               this.activateShield(3,false,true);
            }
         }
         cacheAsBitmap = true;
      }
      
      public var shapes:Array;
      
      public var radius:int;
      
      public var gfxID:int;
      
      public var §_-f§:Array;
      
      public var §_-mU§:Array;
      
      public var mass:Number;
      
      public var area:Number;
      
      public var initialMass:Number;
      
      public var initialArea:Number;
      
      public var §_-fr§:uint;
      
      public var §_-oY§:§_-wj§;
      
      public var §_-73§:BitmapData;
      
      public var §_-jt§:Rectangle;
      
      public var decalBMD:BitmapData;
      
      public var §_-Hz§:Bitmap;
      
      public var §_-8h§:§_-Af§;
      
      public var §_-r6§:Rectangle;
      
      public var gfx:BitmapData;
      
      public var §_-O1§:Bitmap;
      
      public var §_-T3§:BitmapData;
      
      public var blank:BitmapData;
      
      public var §_-I2§:Sprite;
      
      public var §_-7I§:Boolean = false;
      
      public var PI:Number = 3.1415926;
      
      public var §_-Ld§:int;
      
      public var §_-5L§:int;
      
      public var §_-wN§:int;
      
      public var §_-lx§:int;
      
      public var §_-9e§:Array;
      
      public var shieldHealth:int = 0;
      
      public var testShieldHealth:int = 0;
      
      public var shieldShootOut:Boolean = false;
      
      public var radioactive:int = 0;
      
      public var sun:Boolean = false;
      
      public var blackHole:Boolean = false;
      
      public var shieldGFX1:Sprite;
      
      public var shieldGFX2:Sprite;
      
      public var shieldGFX3:Sprite;
      
      public var §_-qe§:Tween;
      
      public var shieldGFX1TweenX:Tween;
      
      public var shieldGFX1TweenY:Tween;
      
      public var shieldGFX1TweenA:Tween;
      
      public var shieldGFX2TweenX:Tween;
      
      public var shieldGFX2TweenY:Tween;
      
      public var shieldGFX2TweenA:Tween;
      
      public var shieldGFX3TweenX:Tween;
      
      public var shieldGFX3TweenY:Tween;
      
      public var shieldGFX3TweenA:Tween;
      
      public var rebuilt:Boolean = false;
      
      public var §_-on§:Boolean = false;
      
      public var §_-2b§:Number;
      
      public var §_-ie§:Number;
      
      public var §_-PU§:Number;
      
      public var §_-XI§:Point;
      
      public var turnStartRotation:Number = 0;
      
      public function init() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(stage)
         {
            _loc2_;
            this.addedToStage();
            _loc2_;
            _loc2_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
      }
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Class = null;
         _loc6_;
         if(param1)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
         this.§_-jT§();
         _loc6_;
         _loc6_;
         _loc7_;
         if(this.sun)
         {
            this.gfx = new BitmapData(this.radius * 1.4 * 2,this.radius * 1.4 * 2,true,0);
            _loc7_;
            this.§_-r6§ = new Rectangle(0,0,this.radius * 1.4 * 2,this.radius * 1.4 * 2);
         }
         else
         {
            _loc6_;
            if(this.blackHole)
            {
               this.gfx = new BitmapData(this.radius * 1.06 * 2,this.radius * 1.06 * 2,true,0);
               this.§_-r6§ = new Rectangle(0,0,this.radius * 1.06 * 2,this.radius * 1.06 * 2);
            }
            else
            {
               this.gfx = new BitmapData(this.radius * 2,this.radius * 2,true,0);
               this.§_-r6§ = new Rectangle(0,0,this.radius * 2,this.radius * 2);
            }
         }
         this.decalBMD = new BitmapData(this.gfx.width,this.gfx.height,true,0);
         this.gfx.lock();
         this.§_-O1§ = new Bitmap(this.gfx);
         _loc6_;
         _loc6_;
         this.§_-Hz§ = new Bitmap(this.decalBMD);
         addChild(this.§_-I2§);
         _loc6_;
         addChild(this.§_-O1§);
         addChild(this.§_-Hz§);
         this.§_-Hz§.alpha = 0.5;
         addChild(new Bitmap(this.blank));
         _loc7_;
         _loc7_;
         if(this.sun)
         {
            _loc6_;
            _loc6_;
            this.§_-O1§.x = 0 - this.radius * 1.4;
            _loc6_;
            _loc6_;
            this.§_-O1§.y = 0 - this.radius * 1.4;
         }
         else
         {
            _loc7_;
            _loc7_;
            if(this.blackHole)
            {
               this.§_-O1§.x = 0 - this.radius * 1.06;
               this.§_-O1§.y = 0 - this.radius * 1.06;
            }
            else
            {
               this.§_-O1§.x = 0 - this.radius;
               this.§_-O1§.y = 0 - this.radius;
               _loc7_;
               this.§_-Hz§.x = this.§_-O1§.x;
               this.§_-Hz§.y = this.§_-O1§.y;
            }
         }
         if(this.blackHole)
         {
            _loc2_ = getDefinitionByName("AssetBlackHole") as Class;
         }
         else
         {
            _loc2_ = getDefinitionByName("Planet" + (this.gfxID + 1)) as Class;
         }
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc7_;
         _loc3_.scaleX = this.radius * 2 / 100;
         _loc6_;
         _loc3_.scaleY = this.radius * 2 / 100;
         var _loc4_:Matrix = new Matrix();
         _loc4_.a = this.radius * 2 / 100;
         _loc4_.d = this.radius * 2 / 100;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         if(this.sun)
         {
            _loc4_.tx = this.radius * 0.4;
            _loc4_.ty = this.radius * 0.4;
            _loc6_;
            _loc6_;
         }
         else if(this.blackHole)
         {
            _loc7_;
            _loc4_.tx = this.radius * 0.06;
            _loc7_;
            _loc7_;
            _loc4_.ty = this.radius * 0.06;
         }
         
         stage.quality = StageQuality.HIGH;
         _loc7_;
         this.gfx.draw(_loc3_,_loc4_);
         _loc7_;
         _loc7_;
         this.gfx.unlock();
         _loc6_;
         this.§_-fr§ = this.gfx.getPixel32(this.radius,this.radius);
         var _loc5_:ColorTransform = new ColorTransform();
         _loc5_.color = this.§_-fr§;
         this.§_-oY§.inside.transform.colorTransform = _loc5_;
         _loc7_;
         this.§_-73§ = new BitmapData(this.§_-oY§.width,this.§_-oY§.height,true,16777215);
         this.§_-73§.draw(this.§_-oY§);
         _loc6_;
         this.§_-jt§ = new Rectangle(0,0,this.§_-73§.width,this.§_-73§.height);
         this.§_-T3§ = new BitmapData(this.gfx.width,this.gfx.height,true,0);
         this.§_-T3§.draw(this.gfx);
         _loc6_;
         _loc6_;
         this.blank = new BitmapData(this.gfx.width,this.gfx.height,true,0);
         this.blank.copyPixels(this.§_-T3§,this.§_-T3§.rect,this.§_-XI§,null,null,true);
         this.blank.threshold(this.blank,this.blank.rect,this.§_-XI§,">",0,4.29490176E9);
         _loc6_;
         this.blank.threshold(this.blank,this.blank.rect,this.§_-XI§,"!=",4.29490176E9,4.294967295E9);
         _loc7_;
         _loc7_;
         this.blank.threshold(this.blank,this.blank.rect,this.§_-XI§,"==",4.29490176E9,0);
         _loc6_;
         addChild(this.§_-8h§);
         if(this.radioactive > 0)
         {
            this.§default§();
            _loc7_;
         }
         else
         {
            this.§_-aJ§();
         }
      }
      
      public function cutOut(param1:Explosion, param2:Boolean = false) : *
      {
         var _loc42_:* = true;
         var _loc43_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Shape = null;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         var _loc9_:Shape = null;
         var _loc10_:Shape = null;
         var _loc11_:Shape = null;
         var _loc12_:Shape = null;
         var _loc13_:* = 0;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Point = null;
         var _loc18_:Array = null;
         var _loc19_:* = 0;
         var _loc20_:Shape = null;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:§_-QR§ = null;
         var _loc24_:* = 0;
         var _loc25_:Array = null;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:§_-QR§ = null;
         var _loc29_:* = false;
         var _loc30_:§_-QR§ = null;
         var _loc31_:* = 0;
         var _loc32_:* = false;
         var _loc33_:Point = null;
         var _loc34_:Point = null;
         var _loc35_:Array = null;
         var _loc36_:* = 0;
         var _loc37_:* = 0;
         var _loc38_:Point = null;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         _loc42_;
         _loc43_;
         _loc42_;
         if(!this.sun && !this.blackHole)
         {
            _loc43_;
            _loc43_;
            _loc3_ = getTimer();
            _loc5_ = param1.shape;
            _loc43_;
            _loc43_;
            _loc6_ = false;
            _loc43_;
            _loc43_;
            _loc7_ = 0;
            while(_loc7_ < this.shapes.length)
            {
               _loc42_;
               if(this.shapes[_loc7_].exploInShape(_loc5_))
               {
                  _loc43_;
                  _loc42_;
                  _loc6_ = true;
               }
               _loc7_++;
               _loc42_;
               _loc42_;
            }
            if(this.shapes.length == 0)
            {
               _loc43_;
               _loc42_;
               _loc42_;
               _loc6_ = true;
            }
            if(!_loc6_)
            {
               _loc8_ = [];
               _loc42_;
               _loc42_;
               _loc7_ = 0;
               while(true)
               {
                  _loc42_;
                  _loc42_;
                  if(_loc7_ >= this.shapes.length)
                  {
                     break;
                  }
                  _loc9_ = this.shapes[_loc7_];
                  _loc10_ = new Shape();
                  _loc10_.init(-1,-1,-1);
                  _loc11_ = new Shape();
                  _loc11_.init(-1,-1,-1);
                  _loc12_ = new Shape();
                  _loc12_.init(-1,-1,-1);
                  _loc42_;
                  _loc42_;
                  _loc12_.§_-0N§(_loc5_);
                  _loc13_ = 0;
                  while(true)
                  {
                     _loc42_;
                     if(_loc13_ >= _loc9_.curves.length)
                     {
                        break;
                     }
                     _loc22_ = 0;
                     _loc43_;
                     _loc43_;
                     _loc11_.curves.splice(0);
                     _loc42_;
                     _loc42_;
                     _loc42_;
                     _loc42_;
                     _loc23_ = _loc9_.curves[_loc13_];
                     _loc42_;
                     _loc24_ = 0;
                     while(true)
                     {
                        _loc42_;
                        if(_loc24_ >= _loc12_.curves.length)
                        {
                           break;
                        }
                        _loc25_ = this.§_-1L§(_loc23_,_loc12_.curves[_loc24_]);
                        _loc42_;
                        if((_loc25_) && _loc25_.length > 0)
                        {
                           _loc42_;
                           _loc42_;
                           _loc42_;
                           _loc42_;
                           _loc42_;
                           if(_loc23_.startAngle == -1 && _loc23_.endAngle == -1)
                           {
                              _loc42_;
                              _loc43_;
                              _loc43_;
                              _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc25_[0].curve1Angle,_loc25_[1].curve1Angle,_loc23_.origCurve));
                              _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc25_[1].curve1Angle,_loc25_[0].curve1Angle,_loc23_.origCurve));
                              _loc22_++;
                              _loc42_;
                              _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc5_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc25_[1].curve2Angle,false));
                              _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc5_.curves[_loc24_].radius,_loc25_[1].curve2Angle,_loc25_[0].curve2Angle,false));
                              _loc43_;
                           }
                           else
                           {
                              _loc42_;
                              _loc42_;
                              _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc23_.startAngle,_loc25_[0].curve1Angle,_loc23_.origCurve));
                              _loc43_;
                              _loc4_ = 1;
                              while(_loc4_ < _loc25_.length)
                              {
                                 _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc25_[_loc4_ - 1].curve1Angle,_loc25_[_loc4_].curve1Angle,_loc23_.origCurve));
                                 _loc4_++;
                                 _loc43_;
                              }
                              _loc43_;
                              _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc25_[_loc25_.length - 1].curve1Angle,_loc23_.endAngle,_loc23_.origCurve));
                              _loc43_;
                              _loc43_;
                              _loc22_++;
                              if(_loc25_.length == 1 && _loc12_.curves[_loc24_].startAngle == -1)
                              {
                                 _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc25_[0].curve2Angle,false));
                              }
                              else if(_loc25_.length == 1)
                              {
                                 _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc12_.curves[_loc24_].startAngle,_loc25_[0].curve2Angle,false));
                                 _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc12_.curves[_loc24_].endAngle,false));
                                 _loc43_;
                                 _loc43_;
                              }
                              else if(_loc25_.length == 2)
                              {
                                 if(_loc12_.curves[_loc24_].startAngle == -1)
                                 {
                                    _loc43_;
                                    _loc42_;
                                    _loc42_;
                                    _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[1].curve2Angle,_loc25_[0].curve2Angle,false));
                                    _loc42_;
                                    _loc42_;
                                    _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc25_[1].curve2Angle,false));
                                 }
                                 else
                                 {
                                    _loc43_;
                                    _loc43_;
                                    _loc26_ = _loc25_[0].curve2Angle - _loc12_.curves[_loc24_].startAngle;
                                    _loc43_;
                                    _loc27_ = _loc25_[1].curve2Angle - _loc12_.curves[_loc24_].startAngle;
                                    _loc42_;
                                    _loc42_;
                                    if(_loc25_[0].curve2Angle < _loc12_.curves[_loc24_].startAngle)
                                    {
                                       _loc43_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc26_ = _loc26_ + this.PI * 2;
                                    }
                                    if(_loc25_[1].curve2Angle < _loc12_.curves[_loc24_].startAngle)
                                    {
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc42_;
                                       _loc43_;
                                       _loc27_ = _loc27_ + this.PI * 2;
                                    }
                                    if(_loc26_ < _loc27_)
                                    {
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc12_.curves[_loc24_].startAngle,_loc25_[0].curve2Angle,false));
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc25_[1].curve2Angle,false));
                                       _loc42_;
                                       _loc42_;
                                       _loc43_;
                                       _loc43_;
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[1].curve2Angle,_loc12_.curves[_loc24_].endAngle,false));
                                       _loc43_;
                                       _loc43_;
                                    }
                                    else
                                    {
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc12_.curves[_loc24_].startAngle,_loc25_[1].curve2Angle,false));
                                       _loc43_;
                                       _loc43_;
                                       _loc42_;
                                       _loc42_;
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[1].curve2Angle,_loc25_[0].curve2Angle,false));
                                       _loc42_;
                                       _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc25_[0].curve2Angle,_loc12_.curves[_loc24_].endAngle,false));
                                       _loc42_;
                                    }
                                 }
                              }
                              
                              
                           }
                        }
                        else
                        {
                           _loc11_.curves.push(new §_-QR§(_loc12_.curves[_loc24_].x,_loc12_.curves[_loc24_].y,_loc12_.curves[_loc24_].radius,_loc12_.curves[_loc24_].startAngle,_loc12_.curves[_loc24_].endAngle,false));
                        }
                        _loc24_++;
                     }
                     if(_loc22_ == 0)
                     {
                        _loc42_;
                        _loc42_;
                        _loc10_.curves.push(new §_-QR§(_loc23_.x,_loc23_.y,_loc23_.radius,_loc23_.startAngle,_loc23_.endAngle,_loc23_.origCurve));
                     }
                     _loc12_.§_-0N§(_loc11_);
                     _loc11_.curves.splice(0);
                     _loc43_;
                     _loc43_;
                     _loc13_++;
                  }
                  _loc43_;
                  _loc42_;
                  _loc42_;
                  _loc42_;
                  _loc42_;
                  _loc42_;
                  _loc13_ = _loc10_.curves.length - 1;
                  while(true)
                  {
                     _loc42_;
                     _loc42_;
                     _loc43_;
                     if(_loc13_ < 0)
                     {
                        break;
                     }
                     _loc43_;
                     _loc43_;
                     _loc43_;
                     if(_loc10_.curves[_loc13_].startAngle < _loc10_.curves[_loc13_].endAngle)
                     {
                        _loc43_;
                        _loc16_ = this.§_-cl§((_loc10_.curves[_loc13_].startAngle + _loc10_.curves[_loc13_].endAngle) / 2);
                        _loc42_;
                     }
                     else
                     {
                        _loc16_ = this.§_-cl§((_loc10_.curves[_loc13_].startAngle + (_loc10_.curves[_loc13_].endAngle + this.PI * 2)) / 2);
                        _loc42_;
                     }
                     _loc43_;
                     _loc43_;
                     _loc43_;
                     _loc43_;
                     if(_loc16_ > this.PI * 2)
                     {
                        _loc42_;
                        _loc42_;
                        _loc42_;
                        _loc42_;
                        _loc42_;
                        _loc42_;
                        _loc16_ = this.§_-cl§(_loc16_ - this.PI * 2);
                        _loc43_;
                        _loc43_;
                     }
                     _loc42_;
                     _loc17_ = _loc10_.curves[_loc13_].curvePos(_loc16_);
                     _loc42_;
                     _loc42_;
                     if(param1.pointInside(_loc17_))
                     {
                        _loc42_;
                        _loc42_;
                        _loc10_.curves.splice(_loc13_,1);
                        _loc43_;
                     }
                     _loc42_;
                     _loc13_--;
                  }
                  _loc42_;
                  _loc42_;
                  _loc43_;
                  _loc43_;
                  _loc43_;
                  _loc43_;
                  _loc13_ = _loc12_.curves.length - 1;
                  while(_loc13_ >= 0)
                  {
                     _loc42_;
                     _loc42_;
                     if(_loc12_.curves[_loc13_].startAngle < _loc12_.curves[_loc13_].endAngle)
                     {
                        _loc42_;
                        _loc43_;
                        _loc43_;
                        _loc16_ = this.§_-cl§((_loc12_.curves[_loc13_].startAngle + _loc12_.curves[_loc13_].endAngle) / 2);
                        _loc42_;
                        _loc42_;
                     }
                     else
                     {
                        _loc42_;
                        _loc16_ = this.§_-cl§((_loc12_.curves[_loc13_].startAngle + (_loc12_.curves[_loc13_].endAngle + this.PI * 2)) / 2);
                     }
                     _loc43_;
                     _loc42_;
                     _loc42_;
                     if(_loc16_ > this.PI * 2)
                     {
                        _loc42_;
                        _loc42_;
                        _loc43_;
                        _loc42_;
                        _loc42_;
                        _loc16_ = this.§_-cl§(_loc16_ - this.PI * 2);
                     }
                     _loc17_ = _loc12_.curves[_loc13_].curvePos(_loc16_);
                     _loc42_;
                     _loc42_;
                     if(!_loc9_.pointInside(_loc17_))
                     {
                        _loc42_;
                        _loc12_.curves.splice(_loc13_,1);
                        _loc43_;
                     }
                     _loc42_;
                     _loc42_;
                     _loc13_--;
                  }
                  _loc18_ = [];
                  _loc43_;
                  _loc43_;
                  _loc13_ = 0;
                  while(true)
                  {
                     _loc42_;
                     if(_loc13_ >= _loc10_.curves.length)
                     {
                        break;
                     }
                     _loc43_;
                     _loc43_;
                     _loc43_;
                     _loc10_.curves[_loc13_].joinedStart = false;
                     _loc42_;
                     _loc42_;
                     _loc42_;
                     _loc42_;
                     _loc10_.curves[_loc13_].joinedEnd = false;
                     _loc13_++;
                  }
                  _loc42_;
                  _loc42_;
                  _loc13_ = 0;
                  while(true)
                  {
                     _loc42_;
                     if(_loc13_ >= _loc12_.curves.length)
                     {
                        break;
                     }
                     _loc43_;
                     _loc43_;
                     _loc42_;
                     _loc42_;
                     _loc12_.curves[_loc13_].joinedStart = false;
                     _loc42_;
                     _loc42_;
                     _loc12_.curves[_loc13_].joinedEnd = false;
                     _loc13_++;
                     _loc43_;
                     _loc43_;
                  }
                  _loc42_;
                  _loc42_;
                  _loc43_;
                  _loc19_ = 0;
                  _loc43_;
                  _loc19_ = 0 + _loc12_.§_-p4§("runningExplo");
                  _loc19_ = (0 + _loc12_.§_-p4§("runningExplo")) + _loc10_.§_-p4§("tempShape");
                  _loc21_ = 0;
                  _loc42_;
                  if(_loc12_.curves.length > 0)
                  {
                     while(_loc19_ > 0)
                     {
                        _loc21_++;
                        _loc43_;
                        _loc43_;
                        if(_loc21_ == 50)
                        {
                           _loc42_;
                           this.§_-wI§(param1,this);
                        }
                        _loc20_ = new Shape();
                        _loc20_.init(-1,-1,-1);
                        _loc28_ = _loc10_.§_-sp§();
                        _loc43_;
                        _loc29_ = false;
                        _loc30_ = _loc28_;
                        _loc32_ = true;
                        _loc36_ = 0;
                        _loc42_;
                        _loc37_ = 0;
                        while(true)
                        {
                           _loc43_;
                           _loc42_;
                           _loc42_;
                           if(!(!(_loc30_ == _loc28_) || !_loc29_))
                           {
                              break;
                           }
                           _loc20_.curves.push(_loc30_.§_-0N§());
                           _loc29_ = true;
                           _loc42_;
                           _loc43_;
                           _loc43_;
                           if(!_loc30_.joinedEnd)
                           {
                              _loc34_ = _loc30_.endAnglePos();
                              _loc42_;
                              _loc42_;
                              _loc30_.joinedEnd = true;
                              _loc35_ = this.findJoinFor(_loc34_,_loc10_,_loc12_,_loc30_);
                              if(_loc35_[2] == 1)
                              {
                                 _loc43_;
                                 _loc43_;
                                 _loc30_ = _loc10_.curves[_loc35_[0]];
                                 _loc42_;
                                 _loc36_++;
                                 _loc42_;
                                 if(_loc35_[1] == 1)
                                 {
                                    _loc43_;
                                    _loc30_.joinedStart = true;
                                    _loc43_;
                                 }
                                 else
                                 {
                                    _loc30_.joinedEnd = true;
                                 }
                              }
                              else
                              {
                                 _loc30_ = _loc12_.curves[_loc35_[0]];
                                 _loc43_;
                                 _loc43_;
                                 _loc37_++;
                                 _loc42_;
                                 if(_loc35_[1] == 1)
                                 {
                                    _loc42_;
                                    _loc42_;
                                    _loc30_.joinedStart = true;
                                    _loc43_;
                                 }
                                 else
                                 {
                                    _loc30_.joinedEnd = true;
                                 }
                              }
                           }
                           else if(!_loc30_.joinedStart)
                           {
                              _loc42_;
                              _loc33_ = _loc30_.startAnglePos();
                              _loc43_;
                              _loc43_;
                              _loc30_.joinedStart = true;
                              _loc35_ = this.findJoinFor(_loc33_,_loc10_,_loc12_,_loc30_);
                              if(_loc35_[2] == 1)
                              {
                                 _loc42_;
                                 _loc42_;
                                 _loc37_++;
                                 _loc42_;
                                 _loc42_;
                                 _loc30_ = _loc10_.curves[_loc35_[0]];
                                 _loc43_;
                                 _loc43_;
                                 if(_loc35_[1] == 1)
                                 {
                                    _loc43_;
                                    _loc43_;
                                    _loc30_.joinedStart = true;
                                    _loc43_;
                                 }
                                 else
                                 {
                                    _loc30_.joinedEnd = true;
                                 }
                              }
                              else
                              {
                                 _loc30_ = _loc12_.curves[_loc35_[0]];
                                 _loc43_;
                                 _loc43_;
                                 _loc36_++;
                                 _loc43_;
                                 _loc43_;
                                 if(_loc35_[1] == 1)
                                 {
                                    _loc43_;
                                    _loc43_;
                                    _loc30_.joinedStart = true;
                                    _loc42_;
                                    _loc42_;
                                 }
                                 else
                                 {
                                    _loc30_.joinedEnd = true;
                                 }
                              }
                           }
                           
                        }
                        _loc42_;
                        _loc42_;
                        if(_loc20_.getArea() > 0)
                        {
                           _loc42_;
                           _loc42_;
                           _loc8_.push(_loc20_);
                           _loc43_;
                        }
                        _loc43_;
                        _loc43_;
                        _loc43_;
                        _loc19_ = 0;
                        _loc43_;
                        _loc19_ = 0 + _loc12_.§_-p4§("runningExplo");
                        _loc19_ = _loc19_ + _loc10_.§_-p4§("tempShape");
                     }
                     _loc43_;
                     _loc43_;
                  }
                  else
                  {
                     _loc38_ = _loc9_.curves[0].curvePos(_loc9_.curves[0].startAngle);
                     _loc42_;
                     _loc42_;
                     _loc42_;
                     _loc43_;
                     _loc39_ = param1.iX - _loc38_.x;
                     _loc42_;
                     _loc42_;
                     _loc43_;
                     _loc43_;
                     _loc40_ = param1.iY - _loc38_.y;
                     _loc42_;
                     _loc43_;
                     _loc43_;
                     _loc43_;
                     _loc41_ = Math.sqrt(_loc39_ * _loc39_ + _loc40_ * _loc40_);
                     if((Math.sqrt(_loc39_ * _loc39_ + _loc40_ * _loc40_)) < param1.rad)
                     {
                        _loc43_;
                        _loc43_;
                     }
                     else
                     {
                        _loc8_.push(_loc9_);
                     }
                  }
                  _loc7_++;
               }
               this.shapes = _loc8_;
               this.area = this.getArea();
               this.§_-lY§();
               this.area = this.getArea();
               this.updateMass();
               _loc42_;
               this.§_-Gz§(param1.iX,param1.iY,param1.rad);
               _loc42_;
               SafeGlobal.GAME.jiggleUnits(this,param1.time);
               _loc42_;
               if(this.radioactive)
               {
                  _loc42_;
                  _loc42_;
                  this.§_-Cf§();
               }
            }
         }
      }
      
      public function §_-wI§(param1:Explosion, param2:Planet) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:* = 0;
         var _loc3_:* = "";
         _loc10_;
         _loc10_;
         _loc3_ = _loc3_ + "NEW  Explosion: ";
         _loc11_;
         _loc11_;
         _loc4_ = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc4_ >= param1.shape.curves.length)
            {
               break;
            }
            _loc10_;
            if(_loc4_ > 0)
            {
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + ",";
               _loc10_;
               _loc10_;
            }
            _loc10_;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc3_ = _loc3_ + ("(" + param1.shape.curves[_loc4_].x + "," + param1.shape.curves[_loc4_].y + "," + param1.shape.curves[_loc4_].radius + "," + param1.shape.curves[_loc4_].startAngle + "," + param1.shape.curves[_loc4_].endAngle + ")");
            _loc11_;
            _loc4_++;
            _loc10_;
         }
         _loc10_;
         _loc3_ = _loc3_ + "  Planet: ";
         var _loc5_:* = 0;
         _loc11_;
         _loc11_;
         while(_loc5_ < param2.shapes.length)
         {
            _loc10_;
            _loc10_;
            _loc4_ = 0;
            while(true)
            {
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               if(_loc4_ >= param2.shapes[_loc5_].curves.length)
               {
                  break;
               }
               _loc11_;
               _loc10_;
               if(_loc4_ > 0)
               {
                  _loc11_;
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc3_ = _loc3_ + ",";
               }
               else
               {
                  _loc11_;
                  if(_loc5_ != 0)
                  {
                     _loc10_;
                     _loc10_;
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     _loc3_ = _loc3_ + "|";
                     _loc11_;
                  }
               }
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + ("(" + param2.shapes[_loc5_].curves[_loc4_].x + "," + param2.shapes[_loc5_].curves[_loc4_].y + "," + param2.shapes[_loc5_].curves[_loc4_].radius + "," + param2.shapes[_loc5_].curves[_loc4_].startAngle + "," + param2.shapes[_loc5_].curves[_loc4_].endAngle + ")");
               _loc4_++;
               _loc10_;
            }
            _loc5_++;
         }
         var _loc6_:* = "http://www.graviteewarsonline.com/planetbugtrack.php";
         var _loc7_:URLRequest = new URLRequest(_loc6_);
         var _loc8_:URLVariables = new URLVariables();
         _loc8_.log = _loc3_;
         _loc10_;
         _loc10_;
         _loc7_.data = _loc8_;
         _loc10_;
         _loc7_.method = URLRequestMethod.POST;
         var _loc9_:URLLoader = new URLLoader();
         _loc9_ = new URLLoader();
         _loc9_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc10_;
         _loc10_;
         _loc9_.addEventListener(Event.COMPLETE,this.§_-h5§,false,0,true);
         _loc10_;
         _loc10_;
         _loc9_.load(_loc7_);
      }
      
      public function §_-h5§(param1:Event) : void
      {
      }
      
      public function §_-lY§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.shapes.length - 1;
         while(_loc1_ >= 0)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.shapes[_loc1_].area < 5)
            {
               _loc2_;
               _loc2_;
               this.shapes.splice(_loc1_,1);
               _loc2_;
               _loc2_;
            }
            _loc3_;
            _loc2_;
            _loc2_;
            _loc1_--;
            _loc2_;
         }
      }
      
      public function §_-aP§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == SafeGlobal.§_-0v§)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            if(!(this.shieldGFX1 is §_-Jp§))
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_ = [null,this.shieldGFX1,this.shieldGFX2,this.shieldGFX3];
               _loc4_;
               removeChild(this.shieldGFX1);
               removeChild(this.shieldGFX2);
               removeChild(this.shieldGFX3);
               this.shieldGFX1 = Sprite(new §_-Jp§());
               _loc4_;
               this.shieldGFX2 = Sprite(new §_-Jp§());
               this.shieldGFX3 = Sprite(new §_-Jp§());
               _loc3_;
               _loc3_;
               addChild(this.shieldGFX1);
               addChild(this.shieldGFX2);
               addChild(this.shieldGFX3);
               this.shieldGFX1.visible = _loc2_[1].visible;
               _loc3_;
               this.shieldGFX1.x = _loc2_[1].x;
               this.shieldGFX1.y = _loc2_[1].y;
               this.shieldGFX1.width = _loc2_[1].width;
               _loc4_;
               _loc4_;
               this.shieldGFX1.height = _loc2_[1].height;
               this.shieldGFX2.visible = _loc2_[2].visible;
               this.shieldGFX2.x = _loc2_[2].x;
               _loc4_;
               _loc4_;
               this.shieldGFX2.y = _loc2_[2].y;
               _loc3_;
               this.shieldGFX2.width = _loc2_[2].width;
               _loc4_;
               this.shieldGFX2.height = _loc2_[2].height;
               this.shieldGFX3.visible = _loc2_[3].visible;
               this.shieldGFX3.x = _loc2_[3].x;
               this.shieldGFX3.y = _loc2_[3].y;
               _loc4_;
               _loc4_;
               this.shieldGFX3.width = _loc2_[3].width;
               this.shieldGFX3.height = _loc2_[3].height;
            }
         }
         else if(param1 == SafeGlobal.§_-ib§)
         {
            _loc4_;
            if(!(this.shieldGFX1 is AssetPlanetShield2))
            {
               _loc2_ = [null,this.shieldGFX1,this.shieldGFX2,this.shieldGFX3];
               removeChild(this.shieldGFX1);
               removeChild(this.shieldGFX2);
               _loc4_;
               removeChild(this.shieldGFX3);
               this.shieldGFX1 = Sprite(new AssetPlanetShield2());
               _loc4_;
               _loc4_;
               this.shieldGFX2 = Sprite(new AssetPlanetShield2());
               _loc4_;
               this.shieldGFX3 = Sprite(new AssetPlanetShield2());
               _loc4_;
               addChild(this.shieldGFX1);
               addChild(this.shieldGFX2);
               addChild(this.shieldGFX3);
               this.shieldGFX1.visible = _loc2_[1].visible;
               this.shieldGFX1.x = _loc2_[1].x;
               _loc3_;
               _loc3_;
               this.shieldGFX1.y = _loc2_[1].y;
               _loc4_;
               this.shieldGFX1.width = _loc2_[1].width;
               _loc4_;
               _loc4_;
               this.shieldGFX1.height = _loc2_[1].height;
               _loc3_;
               _loc3_;
               this.shieldGFX2.visible = _loc2_[2].visible;
               _loc3_;
               _loc3_;
               this.shieldGFX2.x = _loc2_[2].x;
               this.shieldGFX2.y = _loc2_[2].y;
               _loc3_;
               this.shieldGFX2.width = _loc2_[2].width;
               this.shieldGFX2.height = _loc2_[2].height;
               _loc3_;
               this.shieldGFX3.visible = _loc2_[3].visible;
               _loc3_;
               this.shieldGFX3.x = _loc2_[3].x;
               this.shieldGFX3.y = _loc2_[3].y;
               this.shieldGFX3.width = _loc2_[3].width;
               this.shieldGFX3.height = _loc2_[3].height;
            }
         }
         
      }
      
      public function findJoinFor(param1:Point, param2:Shape, param3:Shape, param4:§_-QR§) : *
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc5_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Point = null;
         var _loc14_:Point = null;
         _loc15_;
         var _loc6_:Number = 1.0E13;
         _loc15_;
         _loc5_ = 0;
         while(true)
         {
            _loc16_;
            _loc15_;
            if(_loc5_ >= param2.curves.length)
            {
               break;
            }
            _loc16_;
            _loc16_;
            _loc16_;
            if(param2.curves[_loc5_] != param4)
            {
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc13_ = param2.curves[_loc5_].startAnglePos();
               _loc14_ = param2.curves[_loc5_].endAnglePos();
               _loc16_;
               _loc16_;
               _loc10_ = _loc13_.x - param1.x;
               _loc16_;
               _loc16_;
               _loc11_ = _loc13_.y - param1.y;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
               _loc15_;
               _loc15_;
               _loc16_;
               if(_loc12_ < _loc6_ && !param2.curves[_loc5_].joinedStart)
               {
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc6_ = _loc12_;
                  _loc16_;
                  _loc15_;
                  _loc7_ = _loc5_;
                  _loc9_ = 1;
                  _loc15_;
                  _loc8_ = 1;
               }
               else if(_loc12_ < _loc6_)
               {
                  _loc16_;
               }
               
               _loc16_;
               _loc16_;
               _loc10_ = _loc14_.x - param1.x;
               _loc16_;
               _loc11_ = _loc14_.y - param1.y;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc15_;
               _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
               _loc16_;
               if((_loc10_ * _loc10_ + _loc11_ * _loc11_) < _loc6_ && !param2.curves[_loc5_].joinedEnd)
               {
                  _loc16_;
                  _loc6_ = _loc12_;
                  _loc7_ = _loc5_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc9_ = 2;
                  _loc8_ = 1;
                  _loc15_;
                  _loc15_;
               }
               else if(_loc12_ < _loc6_)
               {
               }
               
            }
            _loc5_++;
         }
         _loc16_;
         _loc16_;
         _loc5_ = 0;
         _loc16_;
         _loc16_;
         while(true)
         {
            _loc16_;
            _loc16_;
            if(_loc5_ >= param3.curves.length)
            {
               break;
            }
            _loc16_;
            _loc15_;
            _loc15_;
            if(param3.curves[_loc5_] != param4)
            {
               _loc13_ = param3.curves[_loc5_].startAnglePos();
               _loc14_ = param3.curves[_loc5_].endAnglePos();
               _loc15_;
               _loc10_ = _loc13_.x - param1.x;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc11_ = _loc13_.y - param1.y;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               if(_loc12_ < _loc6_ && !param3.curves[_loc5_].joinedStart)
               {
                  _loc6_ = _loc12_;
                  _loc7_ = _loc5_;
                  _loc15_;
                  _loc9_ = 1;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  _loc8_ = 2;
               }
               else
               {
                  _loc16_;
                  _loc16_;
                  if(_loc12_ < _loc6_)
                  {
                  }
               }
               _loc10_ = _loc14_.x - param1.x;
               _loc11_ = _loc14_.y - param1.y;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc16_;
               if(_loc12_ < _loc6_ && !param3.curves[_loc5_].joinedEnd)
               {
                  _loc16_;
                  _loc16_;
                  _loc6_ = _loc12_;
                  _loc16_;
                  _loc15_;
                  _loc7_ = _loc5_;
                  _loc9_ = 2;
                  _loc8_ = 2;
               }
               else if(_loc12_ < _loc6_)
               {
               }
               
            }
            _loc5_++;
            _loc15_;
         }
         return [_loc7_,_loc9_,_loc8_];
      }
      
      public function §_-1L§(param1:§_-QR§, param2:§_-QR§) : *
      {
         var _loc23_:* = true;
         var _loc24_:* = false;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:§_-Em§ = null;
         _loc24_;
         _loc24_;
         _loc24_;
         var _loc3_:Number = param2.x - param1.x;
         _loc23_;
         _loc23_;
         _loc23_;
         var _loc4_:Number = param2.y - param1.y;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc23_;
         var _loc5_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         var _loc6_:Number = Math.sqrt(_loc5_);
         _loc23_;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc23_;
         if(param1.radius == param2.radius && param1.x == param2.x && param1.y == param2.y)
         {
            _loc23_;
            _loc23_;
            return null;
         }
         _loc24_;
         _loc24_;
         _loc23_;
         if(_loc6_ > param1.radius + param2.radius || _loc6_ < Math.abs(param1.radius - param2.radius))
         {
            _loc23_;
            _loc23_;
            return null;
         }
         _loc23_;
         _loc23_;
         _loc23_;
         _loc23_;
         var _loc7_:Number = (param1.radius * param1.radius - param2.radius * param2.radius + _loc5_) / (2 * _loc6_);
         var _loc8_:Number = Math.sqrt(param1.radius * param1.radius - _loc7_ * _loc7_);
         _loc24_;
         _loc24_;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         var _loc9_:Number = param1.x + _loc7_ * (param2.x - param1.x) / _loc6_;
         _loc24_;
         _loc23_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         _loc23_;
         _loc24_;
         var _loc10_:Number = param1.y + _loc7_ * (param2.y - param1.y) / _loc6_;
         var _loc11_:Point = new Point(_loc9_,_loc10_);
         _loc24_;
         _loc24_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         _loc24_;
         _loc23_;
         _loc23_;
         var _loc12_:§_-Em§ = new §_-Em§(this.§_-cl§(_loc9_ + _loc8_ * (param2.y - param1.y) / _loc6_),this.§_-cl§(_loc10_ - _loc8_ * (param2.x - param1.x) / _loc6_));
         _loc24_;
         _loc24_;
         _loc23_;
         _loc24_;
         _loc24_;
         _loc24_;
         _loc24_;
         _loc23_;
         _loc23_;
         var _loc13_:§_-Em§ = new §_-Em§(this.§_-cl§(_loc9_ - _loc8_ * (param2.y - param1.y) / _loc6_),this.§_-cl§(_loc10_ + _loc8_ * (param2.x - param1.x) / _loc6_));
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         _loc23_;
         _loc24_;
         _loc24_;
         if(_loc12_.x == _loc13_.x && _loc12_.y == _loc13_.y)
         {
            _loc24_;
            return null;
         }
         var _loc14_:Number = this.§_-cl§(Math.atan2(_loc12_.y - param1.y,_loc12_.x - param1.x));
         var _loc15_:Number = this.§_-cl§(Math.atan2(_loc13_.y - param1.y,_loc13_.x - param1.x));
         var _loc16_:Number = this.§_-cl§(Math.atan2(_loc12_.y - param2.y,_loc12_.x - param2.x));
         var _loc17_:Number = this.§_-cl§(Math.atan2(_loc13_.y - param2.y,_loc13_.x - param2.x));
         _loc24_;
         _loc24_;
         if(_loc14_ < 0)
         {
            _loc24_;
            _loc23_;
            _loc23_;
            _loc14_ = this.§_-cl§(_loc14_ + this.PI * 2);
            _loc24_;
            _loc24_;
         }
         _loc23_;
         _loc23_;
         _loc24_;
         if(_loc15_ < 0)
         {
            _loc23_;
            _loc23_;
            _loc24_;
            _loc23_;
            _loc15_ = this.§_-cl§(_loc15_ + this.PI * 2);
            _loc23_;
            _loc23_;
         }
         _loc24_;
         if(_loc16_ < 0)
         {
            _loc24_;
            _loc23_;
            _loc23_;
            _loc24_;
            _loc24_;
            _loc16_ = this.§_-cl§(_loc16_ + this.PI * 2);
         }
         if(_loc17_ < 0)
         {
            _loc23_;
            _loc24_;
            _loc24_;
            _loc17_ = this.§_-cl§(_loc17_ + this.PI * 2);
         }
         var _loc18_:Array = [];
         _loc24_;
         _loc23_;
         _loc24_;
         if(param1.startAngle == -1 || (this.§_-ag§(_loc14_,param1.startAngle,param1.endAngle)) && (this.§_-ag§(_loc16_,param2.startAngle,param2.endAngle)))
         {
            _loc12_.§_-RL§(_loc14_,_loc16_);
            _loc18_.push(_loc12_);
            _loc24_;
            _loc24_;
         }
         _loc23_;
         _loc23_;
         _loc23_;
         if(param1.startAngle == -1 || (this.§_-ag§(_loc15_,param1.startAngle,param1.endAngle)) && (this.§_-ag§(_loc17_,param2.startAngle,param2.endAngle)))
         {
            _loc23_;
            _loc23_;
            _loc13_.§_-RL§(_loc15_,_loc17_);
            _loc23_;
            _loc23_;
            _loc18_.push(_loc13_);
         }
         if(_loc18_.length == 2)
         {
            _loc23_;
            _loc23_;
            _loc19_ = param1.startAngle;
            _loc20_ = _loc18_[0].curve1Angle;
            _loc24_;
            _loc24_;
            _loc21_ = _loc18_[1].curve1Angle;
            if(_loc19_ == -1)
            {
               _loc19_ = 0;
            }
            _loc23_;
            _loc23_;
            _loc23_;
            if(_loc20_ < _loc19_)
            {
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc20_ = this.§_-cl§(_loc20_ + this.PI * 2);
            }
            _loc24_;
            _loc23_;
            if(_loc21_ < _loc19_)
            {
               _loc24_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc21_ = this.§_-cl§(_loc21_ + this.PI * 2);
               _loc23_;
               _loc23_;
            }
            if(_loc20_ >= _loc21_)
            {
               _loc22_ = _loc18_[1];
               _loc23_;
               _loc18_[1] = _loc18_[0];
               _loc24_;
               _loc18_[0] = _loc22_;
            }
         }
         return _loc18_;
      }
      
      public function §_-ag§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         if(param2 == param3)
         {
            _loc5_;
            return true;
         }
         _loc4_;
         if(param3 < param2)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            var param3:Number = this.§_-cl§(param3 + this.PI * 2);
         }
         _loc4_;
         _loc5_;
         _loc5_;
         if(param1 >= param2 && param1 <= param3 || param1 + this.PI * 2 >= param2 && param1 + this.PI * 2 <= param3)
         {
            return true;
         }
         return false;
      }
      
      public function getArea() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:* = 0;
         while(_loc3_ < this.shapes.length)
         {
            _loc4_ = this.shapes[_loc3_].generatePointsFromCurves();
            _loc6_;
            _loc5_;
            _loc2_ = this.shapes[_loc3_].getArea();
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc1_ = _loc1_ + _loc2_;
            _loc6_;
            _loc6_;
            _loc3_++;
         }
         return this.§_-cl§(_loc1_);
      }
      
      public function §_-fh§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.shapes = new Array(new Shape());
         _loc1_;
         if(this.blackHole)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.shapes[0].init(this.§_-cl§(this.radius / 4),x,y);
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.shapes[0].area = this.§_-cl§(this.shapes[0].area * 16);
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc1_;
            this.shapes[0].init(this.radius,x,y);
            _loc2_;
            _loc2_;
         }
         this.shapes[0].curves[0].origCurve = true;
      }
      
      public function findIntersects(param1:Point, param2:Point) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = undefined;
         var _loc6_:* = 0;
         var _loc3_:Array = [];
         var _loc4_:* = 0;
         while(_loc4_ < this.shapes.length)
         {
            _loc5_ = this.shapes[_loc4_].findIntersects(param1,param2,_loc4_);
            if(_loc5_.length > 0)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_ = 0;
               _loc8_;
               while(_loc6_ < _loc5_.length)
               {
                  _loc3_.push(_loc5_[_loc6_]);
                  _loc8_;
                  _loc8_;
                  _loc6_++;
                  _loc7_;
                  _loc7_;
               }
               _loc7_;
               _loc7_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §_-kl§(param1:Point, param2:Point) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1.x >= this.§_-wN§ && param1.x <= this.§_-lx§ && param1.y >= this.§_-Ld§ && param1.y <= this.§_-5L§ || param2.x >= this.§_-wN§ && param2.x <= this.§_-lx§ && param2.y >= this.§_-Ld§ && param2.y <= this.§_-5L§)
         {
            _loc4_;
            _loc4_;
            return true;
         }
         _loc4_;
         _loc4_;
         if((this.§_-Ow§(param1,param2,this.§_-9e§[0],this.§_-9e§[1],true)) || (this.§_-Ow§(param1,param2,this.§_-9e§[1],this.§_-9e§[2],true)) || (this.§_-Ow§(param1,param2,this.§_-9e§[2],this.§_-9e§[3],true)) || (this.§_-Ow§(param1,param2,this.§_-9e§[3],this.§_-9e§[0],true)))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function §_-bD§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.§_-mU§.push([param1,param2,param3]);
      }
      
      public function §_-eE§() : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc1_:Point = new Point(0,0);
         var _loc2_:Point = new Point(0,0);
         var _loc3_:* = 0;
         while(_loc3_ < this.shapes.length)
         {
            _loc4_ = this.shapes[_loc3_].generatePointsFromCurves();
            _loc7_;
            _loc5_ = 0;
            _loc7_;
            while(_loc5_ < _loc4_.length)
            {
               _loc1_.x = _loc4_[_loc5_].x - x;
               _loc1_.y = _loc4_[_loc5_].y - y;
               _loc7_;
               _loc7_;
               _loc2_.x = _loc4_[(_loc5_ + 1) % _loc4_.length].x - x;
               _loc7_;
               _loc7_;
               _loc2_.y = _loc4_[(_loc5_ + 1) % _loc4_.length].y - y;
               _loc7_;
               _loc5_++;
               _loc6_;
               _loc6_;
            }
            _loc7_;
            _loc3_++;
         }
      }
      
      public function §_-Uc§(param1:Array) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Point = new Point(0,0);
         var _loc3_:Point = new Point(0,0);
         var _loc4_:int = param1.length;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_.x = param1[_loc5_].x - x;
            _loc6_;
            _loc6_;
            _loc2_.y = param1[_loc5_].y - y;
            _loc6_;
            _loc6_;
            _loc3_.x = param1[(_loc5_ + 1) % param1.length].x - x;
            _loc7_;
            _loc7_;
            _loc3_.y = param1[(_loc5_ + 1) % param1.length].y - y;
            _loc6_;
            _loc6_;
            _loc5_++;
            _loc6_;
         }
      }
      
      public function §_-Qm§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-I2§.graphics.clear();
      }
      
      public function §_-Cf§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         this.§_-Qm§();
         _loc6_;
         _loc6_;
         this.§_-I2§.cacheAsBitmap = false;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(this.radioactive == 0)
         {
            _loc6_;
            _loc6_;
            this.§_-I2§.graphics.lineStyle(4,10092288,0);
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.radioactive <= 5)
            {
               this.§_-I2§.graphics.lineStyle(4,10092288,0.5);
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               if(this.radioactive <= 10)
               {
                  this.§_-I2§.graphics.lineStyle(6,10092288,0.6);
               }
               else
               {
                  this.§_-I2§.graphics.lineStyle(8,10092288,0.7);
                  _loc5_;
               }
            }
         }
         _loc2_ = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(_loc2_ >= this.shapes.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc3_ = this.shapes[_loc2_].generatePointsFromCurves();
            _loc6_;
            _loc1_ = _loc3_.length;
            _loc5_;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < _loc1_ + 1)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc4_ == 0)
               {
                  this.§_-I2§.graphics.moveTo(_loc3_[_loc4_ % _loc1_].x - x,_loc3_[_loc4_ % _loc1_].y - y);
                  _loc6_;
                  _loc6_;
               }
               else
               {
                  this.§_-I2§.graphics.lineTo(_loc3_[_loc4_ % _loc1_].x - x,_loc3_[_loc4_ % _loc1_].y - y);
               }
               _loc4_++;
               _loc5_;
            }
            _loc2_++;
         }
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         if(this.radioactive == 0)
         {
            this.§_-I2§.graphics.lineStyle(10,10092288,0);
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.radioactive <= 5)
            {
               this.§_-I2§.graphics.lineStyle(10,10092288,0.25);
               _loc6_;
            }
            else
            {
               _loc5_;
               if(this.radioactive <= 10)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-I2§.graphics.lineStyle(14,10092288,0.35);
                  _loc5_;
               }
               else
               {
                  this.§_-I2§.graphics.lineStyle(18,10092288,0.45);
                  _loc5_;
                  _loc5_;
               }
            }
         }
         _loc6_;
         _loc2_ = 0;
         _loc6_;
         while(_loc2_ < this.shapes.length)
         {
            _loc3_ = this.shapes[_loc2_].generatePointsFromCurves();
            _loc6_;
            _loc6_;
            _loc5_;
            _loc1_ = _loc3_.length;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            _loc6_;
            _loc6_;
            while(_loc4_ < _loc1_ + 1)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               if(_loc4_ == 0)
               {
                  this.§_-I2§.graphics.moveTo(_loc3_[_loc4_ % _loc1_].x - x,_loc3_[_loc4_ % _loc1_].y - y);
               }
               else
               {
                  this.§_-I2§.graphics.lineTo(_loc3_[_loc4_ % _loc1_].x - x,_loc3_[_loc4_ % _loc1_].y - y);
                  _loc5_;
                  _loc5_;
               }
               _loc4_++;
            }
            _loc2_++;
         }
         this.§_-I2§.cacheAsBitmap = true;
      }
      
      public function §_-jT§() : *
      {
      }
      
      public function cutoutShapes() : *
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:Array = null;
         var _loc13_:* = 0;
         var _loc1_:Sprite = new Sprite();
         _loc14_;
         _loc1_.graphics.beginFill(4.29490176E9,1);
         _loc14_;
         _loc14_;
         _loc1_.graphics.lineStyle(0,16711680,0);
         _loc15_;
         _loc2_ = 0;
         while(_loc2_ < this.shapes.length)
         {
            _loc12_ = this.shapes[_loc2_].generatePointsFromCurves();
            _loc14_;
            _loc9_ = _loc12_.length;
            _loc1_.graphics.moveTo(_loc12_[_loc9_ - 1].x - x + this.radius,_loc12_[_loc9_ - 1].y - y + this.radius);
            _loc15_;
            _loc13_ = 0;
            _loc14_;
            _loc14_;
            while(_loc13_ < _loc9_)
            {
               _loc1_.graphics.lineTo(_loc12_[_loc13_].x - x + this.radius,_loc12_[_loc13_].y - y + this.radius);
               _loc13_++;
            }
            _loc14_;
            _loc2_++;
         }
         _loc15_;
         _loc15_;
         _loc1_.graphics.moveTo(0,0);
         _loc1_.graphics.lineTo(this.gfx.width,0);
         _loc14_;
         _loc14_;
         _loc1_.graphics.lineTo(this.gfx.width,this.gfx.height);
         _loc1_.graphics.lineTo(0,this.gfx.height);
         _loc1_.graphics.lineTo(0,0);
         _loc15_;
         _loc1_.graphics.endFill();
         var _loc3_:Sprite = new Sprite();
         _loc3_.graphics.lineStyle(10,0,1);
         _loc14_;
         _loc15_;
         _loc2_ = 0;
         _loc14_;
         while(_loc2_ < this.shapes.length)
         {
            _loc12_ = this.shapes[_loc2_].generatePointsFromCurves();
            _loc9_ = _loc12_.length;
            _loc14_;
            _loc14_;
            _loc13_ = 0;
            while(_loc13_ < _loc9_)
            {
               _loc4_ = _loc13_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc5_ = (_loc13_ + 1) % _loc9_;
               _loc15_;
               _loc14_;
               _loc6_ = _loc12_[_loc4_].x - x;
               _loc15_;
               _loc7_ = _loc12_[_loc4_].y - y;
               _loc15_;
               _loc15_;
               _loc14_;
               _loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
               _loc14_;
               _loc14_;
               _loc15_;
               _loc15_;
               if((Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_)) + 1 < this.radius)
               {
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  _loc10_ = false;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  _loc10_ = true;
               }
               _loc15_;
               _loc6_ = _loc12_[_loc5_].x - x;
               _loc14_;
               _loc14_;
               _loc7_ = _loc12_[_loc5_].y - y;
               _loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
               _loc14_;
               _loc14_;
               if(_loc8_ + 1 < this.radius)
               {
                  _loc15_;
                  _loc11_ = false;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  _loc11_ = true;
                  _loc15_;
               }
               _loc15_;
               if(!_loc10_ || !_loc11_)
               {
                  _loc3_.graphics.moveTo(_loc12_[_loc4_].x - x + this.radius,_loc12_[_loc4_].y - y + this.radius);
                  _loc3_.graphics.lineTo(_loc12_[_loc5_].x - x + this.radius,_loc12_[_loc5_].y - y + this.radius);
               }
               _loc13_++;
               _loc15_;
            }
            _loc15_;
            _loc2_++;
         }
         stage.quality = StageQuality.LOW;
         this.blank = new BitmapData(this.gfx.width,this.gfx.height,true,0);
         _loc14_;
         _loc14_;
         this.blank.draw(_loc1_);
         _loc15_;
         this.blank.threshold(this.blank,this.blank.rect,this.§_-XI§,"==",4.29490176E9,4.294967295E9);
         _loc15_;
         this.gfx.draw(_loc1_);
         this.gfx.threshold(this.gfx,this.gfx.rect,this.§_-XI§,"==",4.29490176E9,0);
         stage.quality = StageQuality.HIGH;
         _loc14_;
         _loc14_;
         this.decalBMD.draw(_loc3_);
         stage.quality = StageQuality.LOW;
         this.decalBMD.draw(_loc1_);
         this.decalBMD.threshold(this.decalBMD,this.decalBMD.rect,this.§_-XI§,"==",4.29490176E9,0);
         stage.quality = StageQuality.HIGH;
      }
      
      public function §_-Gz§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:BitmapData = null;
         var _loc10_:Rectangle = null;
         var _loc11_:Point = null;
         var _loc12_:Rectangle = null;
         var _loc13_:Point = null;
         if(!SafeGlobal.GAME.simOnly)
         {
            _loc15_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc4_ = param1 - (x - this.gfx.width / 2);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc5_ = param2 - (y - this.gfx.height / 2);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc6_ = _loc4_ - param3;
            _loc15_;
            _loc15_;
            _loc7_ = _loc5_ - param3;
            this.gfx.lock();
            if(!SafeGlobal.GAME.explosionBitmaps[param3])
            {
               SafeGlobal.GAME.generateExplosionBitmap(param3);
            }
            _loc8_ = SafeGlobal.GAME.explosionBitmaps[param3];
            _loc9_ = SafeGlobal.GAME.burnBitmaps[param3 + 5];
            _loc10_ = new Rectangle(0,0,_loc8_.width,_loc8_.height);
            _loc11_ = new Point(_loc6_,_loc7_);
            _loc12_ = new Rectangle(0,0,_loc9_.width,_loc9_.height);
            _loc13_ = new Point(_loc6_ - 5,_loc7_ - 5);
            this.blank.copyPixels(_loc8_,_loc10_,_loc11_,null,null,true);
            this.decalBMD.copyPixels(_loc9_,_loc12_,_loc13_,null,null,true);
            this.decalBMD.copyPixels(this.blank,this.gfx.rect,this.§_-XI§,null,null,true);
            this.decalBMD.threshold(this.decalBMD,this.decalBMD.rect,this.§_-XI§,"==",4.294967295E9,0);
            this.gfx.copyPixels(this.blank,this.gfx.rect,this.§_-XI§,null,null,true);
            _loc15_;
            _loc15_;
            this.gfx.threshold(this.gfx,this.gfx.rect,this.§_-XI§,"==",4.294967295E9,0);
            this.gfx.unlock();
         }
      }
      
      public function updateMass() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = NaN;
         _loc4_;
         _loc4_;
         this.area = this.getArea();
         _loc5_;
         _loc5_;
         _loc5_;
         var _loc1_:Number = this.area / this.initialArea;
         _loc4_;
         _loc4_;
         _loc4_;
         this.mass = this.§_-cl§(this.initialMass * _loc1_);
         var _loc2_:* = 0;
         while(_loc2_ < this.shapes.length)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = this.shapes[_loc2_].area / this.initialArea;
            _loc5_;
            _loc5_;
            this.shapes[_loc2_].mass = this.§_-cl§(this.initialMass * _loc3_);
            _loc5_;
            _loc2_++;
            _loc5_;
            _loc5_;
         }
      }
      
      public function activateShield(param1:int, param2:Boolean, param3:Boolean) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(param2)
         {
            _loc5_;
            _loc5_;
            this.§_-aP§(SafeGlobal.§_-ib§);
            _loc4_;
         }
         else
         {
            this.§_-aP§(SafeGlobal.§_-0v§);
         }
         this.shieldHealth = param1;
         this.shieldShootOut = param2;
         this.§_-Mt§(param3);
      }
      
      public function hideShield() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.shieldGFX1.visible = false;
         _loc1_;
         this.shieldGFX2.visible = false;
         _loc1_;
         this.shieldGFX3.visible = false;
      }
      
      public function activateRadioactivity(param1:int, param2:Boolean = true) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.radioactive <= param1)
         {
            this.§_-I2§.alpha = 1;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.radioactive == 0 && param1 > 0)
            {
               if(param2)
               {
                  this.§_-I2§.alpha = 0;
                  this.§_-uP§();
                  _loc4_;
               }
            }
            this.radioactive = param1;
            _loc3_;
            _loc3_;
            SafeGlobal.GAME.allSickBobOnPlanet(this);
            _loc4_;
            _loc4_;
            this.§default§();
            _loc4_;
            _loc4_;
            this.§_-Cf§();
         }
      }
      
      public function §_-uP§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-qe§ = new Tween(this.§_-I2§,"alpha",null,this.§_-I2§.alpha,1,30,false);
         _loc1_;
         this.§_-qe§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-ij§);
      }
      
      public function §_-Mc§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-qe§ = new Tween(this.§_-I2§,"alpha",null,this.§_-I2§.alpha,0,30,false);
         _loc2_;
         _loc2_;
         this.§_-qe§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-x7§);
      }
      
      public function §_-ij§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-qe§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-ij§);
      }
      
      public function §_-x7§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-qe§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-x7§);
      }
      
      public function §default§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-8h§.visible = true;
         var _loc1_:GlowFilter = new GlowFilter(10092288,0.4,20,20,2,2,true,false);
         _loc2_;
         _loc2_;
         filters = [_loc1_];
      }
      
      public function §_-aJ§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-8h§.visible = false;
         _loc1_;
         filters = [];
      }
      
      public function healRadioactivity() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.radioactive > 0)
         {
            _loc1_;
            this.§_-Mc§();
            _loc2_;
         }
         this.radioactive = 0;
         _loc1_;
         _loc1_;
         this.§_-aJ§();
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.allSickBobOnPlanet(this);
      }
      
      public function §_-Ay§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         if(this.radioactive > 0)
         {
            _loc2_;
            _loc2_;
            this.radioactive = this.radioactive - 2;
            _loc2_;
            _loc2_;
            if(this.radioactive < 0)
            {
               _loc1_;
               this.radioactive = 0;
               _loc1_;
               this.§_-aJ§();
            }
         }
      }
      
      public function §_-RI§(param1:String) : *
      {
      }
      
      public function §_-Ow§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Boolean = true) : §_-pM§
      {
         var _loc27_:* = false;
         var _loc28_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         _loc28_;
         if(param1.x > param2.x)
         {
            _loc27_;
            _loc6_ = param2.x;
            _loc28_;
            _loc7_ = param1.x;
         }
         else
         {
            _loc27_;
            _loc27_;
            _loc6_ = param1.x;
            _loc27_;
            _loc7_ = param2.x;
         }
         if(param3.x > param4.x)
         {
            _loc28_;
            _loc28_;
            _loc10_ = param4.x;
            _loc27_;
            _loc11_ = param3.x;
         }
         else
         {
            _loc10_ = param3.x;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc11_ = param4.x;
            _loc28_;
            _loc28_;
         }
         if(param1.y > param2.y)
         {
            _loc8_ = param2.y;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc9_ = param1.y;
         }
         else
         {
            _loc28_;
            _loc28_;
            _loc8_ = param1.y;
            _loc9_ = param2.y;
         }
         if(param3.y > param4.y)
         {
            _loc27_;
            _loc27_;
            _loc27_;
            _loc12_ = param4.y;
            _loc13_ = param3.y;
            _loc28_;
            _loc28_;
         }
         else
         {
            _loc28_;
            _loc28_;
            _loc12_ = param3.y;
            _loc13_ = param4.y;
            _loc27_;
            _loc27_;
         }
         _loc28_;
         _loc27_;
         _loc27_;
         _loc28_;
         _loc28_;
         if(_loc7_ < _loc10_ || _loc11_ < _loc6_ || _loc9_ < _loc12_ || _loc13_ < _loc8_)
         {
            return null;
         }
         _loc27_;
         _loc27_;
         _loc14_ = param2.y - param1.y;
         _loc16_ = param1.x - param2.x;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc18_ = param2.x * param1.y - param1.x * param2.y;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc15_ = param4.y - param3.y;
         _loc27_;
         _loc27_;
         _loc28_;
         _loc17_ = param3.x - param4.x;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc19_ = param4.x * param3.y - param3.x * param4.y;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc28_;
         _loc28_;
         var _loc20_:Number = _loc14_ * _loc17_ - _loc15_ * _loc16_;
         _loc28_;
         if(_loc20_ == 0)
         {
            _loc28_;
            return null;
         }
         _loc27_;
         _loc27_;
         var _loc21_:Number = Math.floor((_loc16_ * _loc19_ - _loc17_ * _loc18_) / _loc20_ * 100000) / 100000;
         _loc28_;
         var _loc22_:Number = Math.floor((_loc15_ * _loc18_ - _loc14_ * _loc19_) / _loc20_ * 100000) / 100000;
         _loc27_;
         _loc27_;
         if(param5)
         {
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            if((_loc21_ - param2.x) * (_loc21_ - param2.x) + (_loc22_ - param2.y) * (_loc22_ - param2.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc28_;
               _loc28_;
               return null;
            }
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            if((_loc21_ - param1.x) * (_loc21_ - param1.x) + (_loc22_ - param1.y) * (_loc22_ - param1.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc28_;
               _loc28_;
               return null;
            }
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param4.x) * (_loc21_ - param4.x) + (_loc22_ - param4.y) * (_loc22_ - param4.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               _loc27_;
               _loc27_;
               return null;
            }
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param3.x) * (_loc21_ - param3.x) + (_loc22_ - param3.y) * (_loc22_ - param3.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               return null;
            }
         }
         var _loc23_:Number = param2.x - param1.x;
         _loc28_;
         var _loc24_:Number = param2.y - param1.y;
         _loc27_;
         _loc27_;
         var _loc25_:Number = Math.floor(Math.atan2(_loc24_,_loc23_) * 100000) / 100000;
         var _loc26_:§_-pM§ = new §_-pM§();
         _loc26_.x = _loc21_;
         _loc28_;
         _loc28_;
         _loc26_.y = _loc22_;
         _loc27_;
         _loc26_.angle = _loc25_;
         return _loc26_;
      }
      
      public function placeBump(param1:Projectile, param2:Boolean = false) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Point = null;
         var _loc6_:* = true;
         while(_loc6_)
         {
            _loc14_;
            _loc6_ = false;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            if(param1.§_-n5§ == -1 && param1.§_-Tb§ == -1)
            {
               _loc13_;
               _loc6_ = true;
            }
            else
            {
               _loc3_ = param1.§_-n5§ - param1.iX;
               _loc14_;
               _loc13_;
               _loc13_;
               _loc4_ = param1.§_-Tb§ - param1.iY;
               _loc13_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               _loc13_;
               if((Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) >= 8)
               {
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc6_ = true;
               }
            }
            if(_loc6_)
            {
               _loc14_;
               _loc3_ = param1.iX - param1.§_-gh§;
               _loc13_;
               _loc13_;
               _loc14_;
               _loc14_;
               _loc4_ = param1.iY - param1.§_-uE§;
               _loc13_;
               _loc7_ = Math.atan2(_loc4_,_loc3_);
               _loc14_;
               _loc13_;
               if(param1.§_-n5§ == -1 && param1.§_-Tb§ == -1)
               {
                  _loc10_ = param1.iX;
                  _loc11_ = param1.iY;
               }
               else
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc10_ = param1.§_-n5§ + 8 * Math.cos(_loc7_);
                  _loc14_;
                  _loc11_ = param1.§_-Tb§ + 8 * Math.sin(_loc7_);
                  _loc13_;
                  _loc13_;
               }
               _loc13_;
               _loc13_;
               if(param1.§_-jo§)
               {
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc8_ = 2 * Math.cos(_loc7_ + this.PI / 2);
                  _loc14_;
                  _loc14_;
                  _loc9_ = 2 * Math.sin(_loc7_ + this.PI / 2);
               }
               else
               {
                  _loc14_;
                  _loc8_ = 2 * Math.cos(_loc7_ - this.PI / 2);
                  _loc9_ = 2 * Math.sin(_loc7_ - this.PI / 2);
               }
               _loc14_;
               param1.§_-jo§ = !param1.§_-jo§;
               _loc14_;
               _loc12_ = new Point(_loc10_ - x - 7 + this.radius + _loc8_,_loc11_ - y - 7 + this.radius + _loc9_);
               _loc13_;
               this.gfx.copyPixels(this.§_-73§,this.§_-jt§,_loc12_,this.gfx,_loc12_,true);
               _loc14_;
               _loc14_;
               param1.§_-n5§ = _loc10_;
               _loc13_;
               _loc13_;
               param1.§_-Tb§ = _loc11_;
            }
         }
      }
      
      public function §_-cl§(param1:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         var _loc2_:Number = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function loseShieldHealth() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.shieldHealth == 3)
         {
            _loc3_;
            _loc3_;
            this.tweenOffShield3();
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(this.shieldHealth == 2)
            {
               _loc3_;
               this.tweenOffShield2();
            }
            else if(this.shieldHealth == 1)
            {
               this.tweenOffShield1();
               _loc4_;
            }
            
         }
         _loc3_;
         _loc4_;
         this.shieldHealth--;
      }
      
      public function §_-Mt§(param1:Boolean = true) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.shieldHealth >= 1)
         {
            if(!this.shieldGFX1.visible)
            {
               _loc3_;
               _loc3_;
               if(param1)
               {
                  this.shieldGFX1.visible = true;
                  this.shieldGFX1.width = this.radius * 2;
                  this.shieldGFX1.height = this.radius * 2;
                  _loc2_;
                  _loc2_;
                  this.shieldGFX1.alpha = 0;
                  this.tweenOnShield1();
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  this.shieldGFX1.visible = true;
                  this.shieldGFX1.width = (this.radius + 50) * 2;
                  this.shieldGFX1.height = (this.radius + 50) * 2;
                  this.shieldGFX1.alpha = 1;
                  _loc3_;
               }
            }
         }
         else
         {
            this.shieldGFX1.visible = false;
            _loc2_;
         }
         _loc2_;
         _loc2_;
         _loc3_;
         if(this.shieldHealth >= 2)
         {
            _loc3_;
            if(!this.shieldGFX2.visible)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(param1)
               {
                  this.shieldGFX2.visible = true;
                  this.shieldGFX2.width = this.radius * 2;
                  this.shieldGFX2.height = this.radius * 2;
                  _loc2_;
                  _loc2_;
                  this.shieldGFX2.alpha = 0;
                  this.tweenOnShield2();
               }
               else
               {
                  this.shieldGFX2.visible = true;
                  this.shieldGFX2.width = (this.radius + 45) * 2;
                  _loc3_;
                  _loc3_;
                  this.shieldGFX2.height = (this.radius + 45) * 2;
                  _loc3_;
                  this.shieldGFX2.alpha = 1;
                  _loc3_;
                  _loc3_;
               }
            }
         }
         else
         {
            this.shieldGFX2.visible = false;
         }
         if(this.shieldHealth >= 3)
         {
            _loc3_;
            if(!this.shieldGFX3.visible)
            {
               if(param1)
               {
                  this.shieldGFX3.visible = true;
                  this.shieldGFX3.width = this.radius * 2;
                  this.shieldGFX3.height = this.radius * 2;
                  this.shieldGFX3.alpha = 0;
                  this.tweenOnShield3();
               }
               else
               {
                  this.shieldGFX3.visible = true;
                  this.shieldGFX3.width = (this.radius + 40) * 2;
                  _loc3_;
                  this.shieldGFX3.height = (this.radius + 40) * 2;
                  this.shieldGFX3.alpha = 1;
               }
            }
         }
         else
         {
            this.shieldGFX3.visible = false;
         }
      }
      
      public function tweenOnShield1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.shieldGFX1TweenX = new Tween(this.shieldGFX1,"width",null,this.shieldGFX1.width,(this.radius + 50) * 2,10,false);
         _loc2_;
         this.shieldGFX1TweenY = new Tween(this.shieldGFX1,"height",null,this.shieldGFX1.height,(this.radius + 50) * 2,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX1TweenA = new Tween(this.shieldGFX1,"alpha",null,this.shieldGFX1.alpha,1,10,false);
         _loc1_;
         this.shieldGFX1TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield1);
      }
      
      public function tweenOffShield1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.shieldGFX1TweenX = new Tween(this.shieldGFX1,"width",null,this.shieldGFX1.width,(this.radius + 100) * 2,10,false);
         _loc2_;
         this.shieldGFX1TweenY = new Tween(this.shieldGFX1,"height",null,this.shieldGFX1.height,(this.radius + 100) * 2,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX1TweenA = new Tween(this.shieldGFX1,"alpha",null,this.shieldGFX1.alpha,0,10,false);
         _loc1_;
         _loc1_;
         this.shieldGFX1TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield1);
      }
      
      public function finishTweenOnShield1(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.shieldGFX1TweenA)
         {
            _loc3_;
            _loc3_;
            this.shieldGFX1TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield1);
            _loc3_;
            this.shieldGFX1TweenX = null;
            _loc2_;
            _loc2_;
            this.shieldGFX1TweenY = null;
            _loc3_;
            _loc3_;
            this.shieldGFX1TweenA = null;
         }
      }
      
      public function finishTweenOffShield1(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.shieldGFX1TweenA)
         {
            _loc2_;
            _loc2_;
            this.shieldGFX1TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield1);
            _loc2_;
            _loc2_;
            this.shieldGFX1.visible = false;
            this.shieldGFX1TweenX = null;
            this.shieldGFX1TweenY = null;
            _loc2_;
            _loc2_;
            this.shieldGFX1TweenA = null;
         }
      }
      
      public function tweenOnShield2() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.shieldGFX2TweenX = new Tween(this.shieldGFX2,"width",null,this.shieldGFX2.width,(this.radius + 45) * 2,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX2TweenY = new Tween(this.shieldGFX2,"height",null,this.shieldGFX2.height,(this.radius + 45) * 2,10,false);
         _loc2_;
         this.shieldGFX2TweenA = new Tween(this.shieldGFX2,"alpha",null,this.shieldGFX2.alpha,1,10,false);
         _loc2_;
         this.shieldGFX2TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield2);
      }
      
      public function tweenOffShield2() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.shieldGFX2TweenX = new Tween(this.shieldGFX2,"width",null,this.shieldGFX2.width,(this.radius + 95) * 2,10,false);
         _loc2_;
         this.shieldGFX2TweenY = new Tween(this.shieldGFX2,"height",null,this.shieldGFX2.height,(this.radius + 95) * 2,10,false);
         _loc1_;
         _loc1_;
         this.shieldGFX2TweenA = new Tween(this.shieldGFX2,"alpha",null,this.shieldGFX2.alpha,0,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX2TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield2);
      }
      
      public function finishTweenOnShield2(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.shieldGFX2TweenA)
         {
            _loc2_;
            _loc2_;
            this.shieldGFX2TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield2);
            _loc2_;
            _loc2_;
            this.shieldGFX2TweenX = null;
            _loc3_;
            this.shieldGFX2TweenY = null;
            _loc2_;
            this.shieldGFX2TweenA = null;
         }
      }
      
      public function finishTweenOffShield2(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.shieldGFX2TweenA)
         {
            _loc2_;
            this.shieldGFX2TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield2);
            _loc2_;
            _loc2_;
            this.shieldGFX2.visible = false;
            _loc3_;
            this.shieldGFX2TweenX = null;
            this.shieldGFX2TweenY = null;
            this.shieldGFX2TweenA = null;
         }
      }
      
      public function tweenOnShield3() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.shieldGFX3TweenX = new Tween(this.shieldGFX3,"width",null,this.shieldGFX3.width,(this.radius + 40) * 2,10,false);
         _loc1_;
         this.shieldGFX3TweenY = new Tween(this.shieldGFX3,"height",null,this.shieldGFX3.height,(this.radius + 40) * 2,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX3TweenA = new Tween(this.shieldGFX3,"alpha",null,this.shieldGFX3.alpha,1,10,false);
         _loc1_;
         this.shieldGFX3TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield3);
      }
      
      public function tweenOffShield3() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.shieldGFX3TweenX = new Tween(this.shieldGFX3,"width",null,this.shieldGFX3.width,(this.radius + 90) * 2,10,false);
         _loc1_;
         this.shieldGFX3TweenY = new Tween(this.shieldGFX3,"height",null,this.shieldGFX3.height,(this.radius + 90) * 2,10,false);
         _loc2_;
         this.shieldGFX3TweenA = new Tween(this.shieldGFX3,"alpha",null,this.shieldGFX3.alpha,0,10,false);
         _loc2_;
         _loc2_;
         this.shieldGFX3TweenA.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield3);
      }
      
      public function finishTweenOnShield3(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.shieldGFX3TweenA)
         {
            _loc2_;
            _loc2_;
            this.shieldGFX3TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOnShield3);
            _loc3_;
            _loc3_;
            this.shieldGFX3TweenX = null;
            _loc2_;
            this.shieldGFX3TweenY = null;
            _loc3_;
            _loc3_;
            this.shieldGFX3TweenA = null;
         }
      }
      
      public function finishTweenOffShield3(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.shieldGFX3TweenA)
         {
            this.shieldGFX3TweenA.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOffShield3);
            _loc3_;
            _loc3_;
            this.shieldGFX3.visible = false;
            this.shieldGFX3TweenX = null;
            this.shieldGFX3TweenY = null;
            this.shieldGFX3TweenA = null;
         }
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.gfx.dispose();
         this.§_-O1§ = null;
         this.§_-T3§.dispose();
         _loc2_;
         this.blank.dispose();
         _loc1_;
         this.§_-9e§.splice(0);
         _loc2_;
         this.§_-9e§ = null;
         this.§_-XI§ = null;
      }
      
      public function RandomAngleOnCurve(param1:int, param2:int) : Number
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:§_-QR§ = null;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         _loc7_;
         if(this.shapes.length > 0)
         {
            _loc3_ = this.shapes[param1].curves[param2];
            _loc6_;
            _loc6_;
            _loc7_;
            if(_loc3_.startAngle == _loc3_.endAngle)
            {
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc4_ = Math.random() * Math.PI * 2;
               _loc7_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc4_ = Math.random() * Math.PI * 2;
               _loc7_;
               _loc5_ = 0;
               while(!this.§_-ag§(_loc4_,_loc3_.startAngle,_loc3_.endAngle))
               {
                  _loc5_++;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc4_ = Math.random() * Math.PI * 2;
                  if(_loc5_ > 500)
                  {
                     _loc6_;
                     _loc6_;
                     _loc7_;
                     if(_loc3_.startAngle < _loc3_.endAngle)
                     {
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc4_ = (_loc3_.startAngle + _loc3_.endAngle) / 2;
                     }
                     else
                     {
                        _loc6_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc4_ = (_loc3_.startAngle + this.PI * 2 + _loc3_.endAngle) / 2;
                        _loc6_;
                        _loc6_;
                        _loc7_;
                        if(_loc4_ > this.PI * 2)
                        {
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           _loc6_;
                           _loc6_;
                           _loc4_ = _loc4_ - this.PI * 2;
                        }
                     }
                  }
               }
            }
            _loc4_ = this.§_-cl§(_loc4_);
            return _loc4_;
         }
         return 0;
      }
   }
}
