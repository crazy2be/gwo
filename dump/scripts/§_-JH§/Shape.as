package §_-JH§
{
   import flash.geom.Point;
   import §_-bk§.§_-pM§;
   
   public class Shape extends Object
   {
      
      public function Shape()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.curves = [];
         _loc2_;
         _loc2_;
         this.center = new Point(0,0);
         _loc2_;
         super();
      }
      
      public var curves:Array;
      
      public var planetX:Number;
      
      public var planetY:Number;
      
      public var center:Point;
      
      public var mass:Number;
      
      public var area:Number;
      
      public var PI:Number = 3.1415926;
      
      public function init(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(param2 == -1) || !(param3 == -1) || !(param1 == -1))
         {
            _loc5_;
            this.curves.push(new §_-QR§(param2,param3,param1,-1,-1,false));
            _loc6_;
         }
         this.planetX = this.center.x = param2;
         this.planetY = this.center.y = param3;
      }
      
      public function §_-cl§(param1:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         var _loc2_:Number = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function findIntersects(param1:Point, param2:Point, param3:* = null) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:§_-QR§ = null;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc4_:Array = [];
         var _loc5_:int = this.curves.length;
         var _loc7_:* = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = this.curves[_loc7_];
            _loc8_ = this.§_-2z§(_loc6_,param1.x,param1.y,param2.x,param2.y);
            _loc11_;
            _loc10_;
            _loc9_ = 0;
            _loc11_;
            _loc11_;
            while(_loc9_ < _loc8_.length)
            {
               _loc4_.push([new Point(_loc8_[_loc9_].x,_loc8_[_loc9_].y),_loc7_,param3]);
               _loc11_;
               _loc9_++;
               _loc11_;
            }
            _loc10_;
            _loc10_;
            _loc7_++;
         }
         return _loc4_;
      }
      
      public function §_-nm§(param1:Point, param2:Point) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:§_-QR§ = null;
         var _loc7_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:int = this.curves.length;
         var _loc6_:* = 0;
         while(true)
         {
            _loc8_;
            if(_loc6_ >= _loc4_)
            {
               break;
            }
            _loc5_ = this.curves[_loc6_];
            _loc7_ = this.§_-2z§(_loc5_,param1.x,param1.y,param2.x,param2.y);
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc3_ = _loc3_ + _loc7_.length;
            _loc9_;
            _loc9_;
            _loc6_++;
         }
         return _loc3_;
      }
      
      public function findJoinFor(param1:Point, param2:§_-QR§) : *
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc10_:Point = null;
         var _loc11_:Point = null;
         _loc12_;
         var _loc3_:Number = 1.0E14;
         var _loc9_:* = 0;
         while(true)
         {
            _loc13_;
            _loc13_;
            if(_loc9_ >= this.curves.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            if(this.curves[_loc9_] != param2)
            {
               _loc12_;
               _loc12_;
               _loc10_ = this.curves[_loc9_].curvePos(this.curves[_loc9_].startAngle);
               _loc11_ = this.curves[_loc9_].curvePos(this.curves[_loc9_].endAngle);
               _loc6_ = param1.x - _loc10_.x;
               _loc13_;
               _loc13_;
               _loc7_ = param1.y - _loc10_.y;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc8_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               if(_loc8_ < _loc3_)
               {
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc8_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  _loc4_ = _loc9_;
                  _loc12_;
                  _loc13_;
                  _loc13_;
                  _loc5_ = 1;
                  _loc13_;
                  _loc13_;
               }
               _loc6_ = param1.x - _loc11_.x;
               _loc7_ = param1.y - _loc11_.y;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc8_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
               if((_loc6_ * _loc6_ + _loc7_ * _loc7_) < _loc3_)
               {
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc8_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc13_;
                  _loc13_;
                  _loc4_ = _loc9_;
                  _loc5_ = 2;
               }
            }
            _loc9_++;
            _loc13_;
         }
         return [_loc4_,_loc5_];
      }
      
      public function findJoinForThisAngle(param1:Point, param2:Number) : *
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc11_:Point = null;
         var _loc12_:Point = null;
         var _loc10_:* = 0;
         while(_loc10_ < this.curves.length)
         {
            _loc14_;
            _loc13_;
            _loc13_;
            if(!this.curves[_loc10_].origCurve)
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc8_ = this.§_-cl§(this.§_-HM§(this.curves[_loc10_].startAngle - this.PI / 2));
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc9_ = this.§_-cl§(this.§_-HM§(this.curves[_loc10_].endAngle - this.PI / 2));
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc13_;
               _loc13_;
               _loc8_ = this.§_-cl§(this.§_-HM§(this.curves[_loc10_].startAngle + this.PI / 2));
               _loc14_;
               _loc14_;
               _loc9_ = this.§_-cl§(this.§_-HM§(this.curves[_loc10_].endAngle + this.PI / 2));
               _loc14_;
               _loc14_;
            }
            _loc11_ = this.curves[_loc10_].curvePos(this.curves[_loc10_].startAngle);
            _loc12_ = this.curves[_loc10_].curvePos(this.curves[_loc10_].endAngle);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc5_ = param1.x - _loc11_.x;
            _loc14_;
            _loc14_;
            _loc13_;
            _loc6_ = param1.y - _loc11_.y;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc7_ = _loc5_ * _loc5_ + _loc6_ * _loc6_;
            if(_loc7_ < 0.001)
            {
               if(Math.abs(_loc8_ - param2) < 0.001)
               {
                  _loc13_;
                  _loc13_;
                  _loc3_ = _loc10_;
                  _loc14_;
                  _loc4_ = 1;
                  break;
               }
            }
            _loc13_;
            _loc5_ = param1.x - _loc12_.x;
            _loc6_ = param1.y - _loc12_.y;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc7_ = _loc5_ * _loc5_ + _loc6_ * _loc6_;
            if(_loc7_ < 0.001)
            {
               if(Math.abs(_loc9_ - param2) < 0.001)
               {
                  _loc14_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc3_ = _loc10_;
                  _loc14_;
                  _loc14_;
                  _loc4_ = 2;
                  break;
               }
            }
            _loc10_++;
         }
         return [_loc3_,_loc4_];
      }
      
      public function §_-cS§(param1:String) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < this.curves.length)
         {
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-0N§(param1:Shape) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:§_-QR§ = null;
         _loc5_;
         _loc5_;
         this.curves = [];
         var _loc3_:* = 0;
         while(_loc3_ < param1.curves.length)
         {
            _loc2_ = param1.curves[_loc3_];
            _loc5_;
            _loc5_;
            this.curves.push(new §_-QR§(_loc2_.x,_loc2_.y,_loc2_.radius,_loc2_.startAngle,_loc2_.endAngle,_loc2_.origCurve));
            _loc5_;
            _loc5_;
            _loc3_++;
         }
      }
      
      public function exploInShape(param1:Shape) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < this.curves.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.curves[_loc2_].x == param1.curves[0].x && this.curves[_loc2_].y == param1.curves[0].y && this.curves[_loc2_].radius == param1.curves[0].radius)
            {
               _loc4_;
               return true;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         return false;
      }
      
      public function §_-p4§(param1:String = "") : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc3_ >= this.curves.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(!this.curves[_loc3_].joinedStart && !this.curves[_loc3_].joinedEnd)
            {
               _loc4_;
               _loc2_++;
               _loc4_;
               _loc4_;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         return _loc2_;
      }
      
      public function §_-sp§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:§_-QR§ = null;
         var _loc2_:* = 0;
         while(_loc2_ < this.curves.length)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(!this.curves[_loc2_].joinedStart && !this.curves[_loc2_].joinedEnd)
            {
               _loc3_;
               _loc1_ = this.curves[_loc2_];
               break;
            }
            _loc2_++;
            _loc4_;
         }
         return _loc1_;
      }
      
      public function pointInside(param1:Point) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:§_-QR§ = null;
         var _loc6_:Array = null;
         var _loc2_:Point = new Point(10000,10000);
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            if(_loc4_ >= this.curves.length)
            {
               break;
            }
            _loc5_ = this.curves[_loc4_];
            _loc6_ = this.§_-2z§(_loc5_,param1.x,param1.y,_loc2_.x,_loc2_.y);
            if(_loc6_.length == 0)
            {
               _loc8_;
            }
            else if(_loc6_.length == 1)
            {
               _loc7_;
               _loc7_;
            }
            else if(_loc6_.length == 2)
            {
               _loc7_;
               _loc7_;
            }
            
            
            _loc7_;
            _loc3_ = _loc3_ + _loc6_.length;
            _loc7_;
            _loc4_++;
         }
         _loc8_;
         _loc8_;
         if(_loc3_ % 2 == 0)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            return false;
         }
         return true;
      }
      
      public function §_-HM§(param1:Number) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 < 0)
         {
            while(param1 < 0)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               var param1:Number = param1 + this.PI * 2;
               _loc2_;
            }
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            if(param1 > this.PI * 2)
            {
               _loc2_;
               _loc2_;
               while(true)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  if(param1 <= this.PI * 2)
                  {
                     break;
                  }
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  param1 = param1 - this.PI * 2;
                  _loc3_;
               }
            }
         }
         return param1;
      }
      
      public function §_-ag§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2 == param3)
         {
            return true;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(param3 < param2)
         {
            _loc5_;
            _loc5_;
            var param3:Number = this.§_-cl§(param3 + this.PI * 2);
         }
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 >= param2 && param1 <= param3 || param1 + this.PI * 2 >= param2 && param1 + this.PI * 2 <= param3)
         {
            _loc4_;
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function §_-2z§(param1:§_-QR§, param2:Number, param3:Number, param4:Number, param5:Number) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc6_:Array = this.§_-YQ§(param1.x,param1.y,param1.radius,param2,param3,param4,param5);
         if(_loc6_.length > 0)
         {
            _loc9_;
            _loc9_;
            _loc7_ = _loc6_.length - 1;
            while(_loc7_ >= 0)
            {
               _loc9_;
               _loc9_;
               _loc8_ = this.§_-cl§(this.§_-HM§(Math.atan2(_loc6_[_loc7_].y - param1.y,_loc6_[_loc7_].x - param1.x)));
               if(param1.startAngle == -1 || (this.§_-ag§(_loc8_,param1.startAngle,param1.endAngle)))
               {
                  if(!((_loc6_[_loc7_].x <= param2 && _loc6_[_loc7_].x >= param4 || _loc6_[_loc7_].x >= param2 && _loc6_[_loc7_].x <= param4) && (_loc6_[_loc7_].y <= param3 && _loc6_[_loc7_].y >= param5 || _loc6_[_loc7_].y >= param3 && _loc6_[_loc7_].y <= param5)))
                  {
                     _loc6_.splice(_loc7_,1);
                  }
               }
               else
               {
                  _loc6_.splice(_loc7_,1);
                  _loc9_;
                  _loc9_;
               }
               _loc10_;
               _loc10_;
               _loc10_;
               _loc7_--;
            }
         }
         return _loc6_;
      }
      
      public function §_-YQ§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : *
      {
         var _loc19_:* = false;
         var _loc20_:* = true;
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
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc8_ = param6 - param4;
         _loc20_;
         _loc9_ = param7 - param5;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc10_ = _loc8_ * _loc8_ + _loc9_ * _loc9_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc11_ = 2 * (_loc8_ * (param4 - param1) + _loc9_ * (param5 - param2));
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc12_ = (param4 - param1) * (param4 - param1) + (param5 - param2) * (param5 - param2) - param3 * param3;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc13_ = _loc11_ * _loc11_ - 4 * _loc10_ * _loc12_;
         _loc20_;
         _loc19_;
         _loc19_;
         if(_loc10_ <= 1.0E-7 || _loc13_ < 0)
         {
            _loc20_;
            return [];
         }
         _loc20_;
         if(_loc13_ == 0)
         {
            _loc19_;
            _loc19_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc14_ = -_loc11_ / (2 * _loc10_);
            _loc19_;
            return [];
         }
         _loc20_;
         _loc20_;
         _loc20_;
         _loc14_ = (-_loc11_ + Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc15_ = param4 + _loc14_ * _loc8_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc16_ = param5 + _loc14_ * _loc9_;
         _loc20_;
         _loc19_;
         _loc14_ = (-_loc11_ - Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc19_;
         _loc20_;
         _loc20_;
         _loc17_ = param4 + _loc14_ * _loc8_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc18_ = param5 + _loc14_ * _loc9_;
         return [new Point(_loc15_,_loc16_),new Point(_loc17_,_loc18_)];
      }
      
      public function getArea() : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = 0;
         var _loc1_:Array = this.generatePointsFromCurves();
         var _loc2_:Number = 0;
         var _loc3_:int = _loc1_.length;
         _loc7_;
         var _loc4_:int = _loc3_ - 1;
         _loc6_;
         _loc6_;
         _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_ + (_loc1_[_loc4_].x * _loc1_[_loc5_].y - _loc1_[_loc4_].y * _loc1_[_loc5_].x);
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc4_ = _loc5_;
            _loc7_;
            _loc7_;
            _loc5_++;
            _loc7_;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc2_ = this.§_-cl§(_loc2_ / 2);
         _loc7_;
         this.area = _loc2_;
         this.findCenter(_loc1_);
         return _loc2_;
      }
      
      public function generatePointsFromCurves() : *
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc7_:* = NaN;
         var _loc8_:Point = null;
         var _loc10_:* = NaN;
         var _loc11_:* = 0;
         var _loc12_:Array = null;
         var _loc1_:Array = [];
         var _loc2_:§_-QR§ = this.curves[0];
         var _loc3_:* = false;
         var _loc4_:§_-QR§ = _loc2_;
         _loc14_;
         _loc14_;
         var _loc5_:Number = _loc2_.startAngle;
         _loc14_;
         var _loc6_:Number = _loc2_.endAngle;
         var _loc9_:* = false;
         while(true)
         {
            _loc14_;
            if(!(!_loc3_ || !(_loc2_ == _loc4_)))
            {
               break;
            }
            _loc3_ = true;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc5_ = _loc4_.startAngle;
            _loc13_;
            _loc13_;
            _loc6_ = _loc4_.endAngle;
            _loc13_;
            _loc13_;
            if(_loc4_.startAngle == _loc4_.endAngle)
            {
               _loc10_ = Math.PI * 2 / 100;
               _loc13_;
               _loc11_ = 0;
               while(_loc11_ < 100)
               {
                  _loc8_ = _loc4_.curvePos(_loc11_ * _loc10_);
                  _loc13_;
                  _loc13_;
                  _loc1_.push(_loc8_);
                  _loc14_;
                  _loc14_;
                  _loc11_++;
               }
            }
            else
            {
               if(_loc5_ > _loc6_)
               {
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc6_ = this.§_-cl§(_loc6_ + this.PI * 2);
                  _loc14_;
               }
               _loc14_;
               if(_loc4_.origCurve)
               {
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc7_ = _loc5_;
                  while(true)
                  {
                     _loc14_;
                     if(this.§_-cl§(_loc7_ + 0.05) >= _loc6_)
                     {
                        break;
                     }
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc7_ = this.§_-cl§(_loc7_ + 0.05);
                     _loc13_;
                     _loc13_;
                     _loc8_ = _loc4_.curvePos(_loc7_);
                     _loc14_;
                     _loc1_.push(_loc8_);
                  }
                  _loc14_;
                  _loc7_ = _loc6_;
                  _loc13_;
                  _loc8_ = _loc4_.curvePos(_loc7_);
                  _loc13_;
                  _loc13_;
                  _loc1_.push(_loc8_);
               }
               else
               {
                  _loc14_;
                  _loc14_;
                  _loc7_ = _loc6_;
                  while(true)
                  {
                     _loc14_;
                     _loc14_;
                     if(this.§_-cl§(_loc7_ - 0.05) <= _loc5_)
                     {
                        break;
                     }
                     _loc13_;
                     _loc13_;
                     _loc14_;
                     _loc14_;
                     _loc7_ = this.§_-cl§(_loc7_ - 0.05);
                     _loc13_;
                     _loc8_ = _loc4_.curvePos(_loc7_);
                     _loc13_;
                     _loc13_;
                     _loc1_.push(_loc8_);
                  }
                  _loc14_;
                  _loc7_ = _loc5_;
                  _loc8_ = _loc4_.curvePos(_loc7_);
                  _loc13_;
                  _loc1_.push(_loc8_);
               }
               _loc12_ = this.findJoinFor(_loc8_,_loc4_);
               _loc4_ = this.curves[_loc12_[0]];
            }
         }
         return _loc1_;
      }
      
      public function findCenter(param1:Array) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(_loc5_ < param1.length)
         {
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = (_loc5_ + 1) % param1.length;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc2_ = _loc2_ + (param1[_loc5_].x + param1[_loc4_].x) * (param1[_loc5_].x * param1[_loc4_].y - param1[_loc4_].x * param1[_loc5_].y);
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc3_ = _loc3_ + (param1[_loc5_].y + param1[_loc4_].y) * (param1[_loc5_].x * param1[_loc4_].y - param1[_loc4_].x * param1[_loc5_].y);
            _loc5_++;
         }
         this.center.x = this.§_-cl§(1 / (6 * this.area) * _loc2_);
         this.center.y = this.§_-cl§(1 / (6 * this.area) * _loc3_);
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
         if(param1.x > param2.x)
         {
            _loc6_ = param2.x;
            _loc7_ = param1.x;
         }
         else
         {
            _loc28_;
            _loc28_;
            _loc6_ = param1.x;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc7_ = param2.x;
         }
         if(param3.x > param4.x)
         {
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc10_ = param4.x;
            _loc27_;
            _loc27_;
            _loc11_ = param3.x;
         }
         else
         {
            _loc10_ = param3.x;
            _loc27_;
            _loc11_ = param4.x;
         }
         if(param1.y > param2.y)
         {
            _loc28_;
            _loc28_;
            _loc8_ = param2.y;
            _loc27_;
            _loc27_;
            _loc9_ = param1.y;
         }
         else
         {
            _loc8_ = param1.y;
            _loc28_;
            _loc9_ = param2.y;
         }
         if(param3.y > param4.y)
         {
            _loc27_;
            _loc27_;
            _loc27_;
            _loc12_ = param4.y;
            _loc28_;
            _loc28_;
            _loc13_ = param3.y;
            _loc27_;
            _loc27_;
         }
         else
         {
            _loc12_ = param3.y;
            _loc27_;
            _loc13_ = param4.y;
         }
         _loc27_;
         _loc27_;
         _loc28_;
         _loc28_;
         if(_loc7_ < _loc10_ || _loc11_ < _loc6_ || _loc9_ < _loc12_ || _loc13_ < _loc8_)
         {
            _loc28_;
            return null;
         }
         _loc28_;
         _loc27_;
         _loc27_;
         _loc14_ = param2.y - param1.y;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc16_ = param1.x - param2.x;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc28_;
         _loc18_ = param2.x * param1.y - param1.x * param2.y;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc15_ = param4.y - param3.y;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc17_ = param3.x - param4.x;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc28_;
         _loc19_ = param4.x * param3.y - param3.x * param4.y;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc27_;
         var _loc20_:Number = _loc14_ * _loc17_ - _loc15_ * _loc16_;
         _loc27_;
         _loc27_;
         if(_loc20_ == 0)
         {
            _loc27_;
            return null;
         }
         _loc28_;
         _loc28_;
         var _loc21_:Number = Math.floor((_loc16_ * _loc19_ - _loc17_ * _loc18_) / _loc20_ * 100000) / 100000;
         _loc28_;
         _loc28_;
         var _loc22_:Number = Math.floor((_loc15_ * _loc18_ - _loc14_ * _loc19_) / _loc20_ * 100000) / 100000;
         if(param5)
         {
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            if((_loc21_ - param2.x) * (_loc21_ - param2.x) + (_loc22_ - param2.y) * (_loc22_ - param2.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc27_;
               return null;
            }
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param1.x) * (_loc21_ - param1.x) + (_loc22_ - param1.y) * (_loc22_ - param1.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc27_;
               _loc27_;
               return null;
            }
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            if((_loc21_ - param4.x) * (_loc21_ - param4.x) + (_loc22_ - param4.y) * (_loc22_ - param4.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               _loc27_;
               _loc27_;
               _loc27_;
               _loc27_;
               return null;
            }
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param3.x) * (_loc21_ - param3.x) + (_loc22_ - param3.y) * (_loc22_ - param3.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               return null;
            }
         }
         _loc27_;
         _loc27_;
         var _loc23_:Number = param2.x - param1.x;
         _loc28_;
         var _loc24_:Number = param2.y - param1.y;
         _loc28_;
         _loc28_;
         var _loc25_:Number = Math.floor(Math.atan2(_loc24_,_loc23_) * 100000) / 100000;
         var _loc26_:§_-pM§ = new §_-pM§();
         _loc26_.x = _loc21_;
         _loc27_;
         _loc26_.y = _loc22_;
         _loc27_;
         _loc26_.angle = _loc25_;
         return _loc26_;
      }
   }
}
