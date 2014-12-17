package §_-CA§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.geom.ColorTransform;
   
   public class ParticleGraphic extends Object
   {
      
      public function ParticleGraphic(param1:BitmapData, param2:Array = null)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.§_-bS§ = new Rectangle();
         this.coverRectangle = new Rectangle();
         _loc3_;
         super();
         this.§_-2B§ = param1;
         _loc3_;
         this.width = param1.width;
         this.height = param1.height;
         _loc4_;
         this.rect = new Rectangle(0,0,this.width,this.height);
         this.offsetX = int(this.width / 2);
         this.offsetY = int(this.height / 2);
         if(param2)
         {
            this.§_-w5§(param2[0],param2[1],param2[2],param2[3],param2[4],param2[5],param2[6]);
         }
         else
         {
            this.§_-w5§(10,0.2,0,1,0.5,16777215,0);
            _loc4_;
         }
         this.cover = new BitmapData(this.width,this.height,true,0);
         _loc3_;
         _loc3_;
         this.coverRectangle.x = 0;
         _loc3_;
         this.coverRectangle.y = 0;
         _loc4_;
         this.coverRectangle.width = this.width;
         this.coverRectangle.height = this.height;
      }
      
      public var §_-2B§:BitmapData;
      
      public var spriteSheet:BitmapData;
      
      public var §_-pN§:int;
      
      public var width:int;
      
      public var height:int;
      
      public var offsetX:int;
      
      public var offsetY:int;
      
      public var rect:Rectangle;
      
      public var §_-bS§:Rectangle;
      
      public var cover:BitmapData;
      
      public var coverRectangle:Rectangle;
      
      public function §_-w5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:uint) : *
      {
         var _loc36_:* = true;
         var _loc37_:* = false;
         var _loc11_:Matrix = null;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = 0;
         var _loc29_:* = 0;
         var _loc30_:* = 0;
         var _loc31_:uint = 0;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:ColorTransform = null;
         _loc36_;
         _loc36_;
         this.§_-pN§ = param1;
         var _loc8_:int = Math.ceil(param2 * this.height);
         _loc36_;
         var _loc9_:Number = param2;
         _loc37_;
         _loc37_;
         _loc36_;
         _loc36_;
         if(_loc8_ < Math.ceil(param3 * this.height))
         {
            _loc36_;
            _loc36_;
            _loc37_;
            _loc37_;
            _loc8_ = Math.ceil(param3 * this.height);
            _loc36_;
            _loc36_;
         }
         _loc36_;
         _loc36_;
         if(_loc9_ < param3)
         {
            _loc36_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc37_;
            _loc37_;
            _loc9_ = param3;
            _loc37_;
         }
         this.height = this.width = _loc8_;
         _loc36_;
         var _loc10_:int = this.width * param1;
         var _loc12_:int = this.§_-QQ§(param6);
         var _loc13_:int = this.§_-QQ§(param7);
         _loc37_;
         _loc37_;
         var _loc14_:Number = _loc13_ - _loc12_;
         var _loc15_:int = this.§_-eA§(param6);
         var _loc16_:int = this.§_-eA§(param7);
         _loc37_;
         var _loc17_:Number = _loc16_ - _loc15_;
         var _loc18_:int = this.§_-WM§(param6);
         var _loc19_:int = this.§_-WM§(param7);
         _loc37_;
         var _loc20_:Number = _loc19_ - _loc18_;
         _loc36_;
         _loc37_;
         var _loc21_:Number = param3 - param2;
         _loc36_;
         _loc36_;
         _loc37_;
         _loc37_;
         var _loc22_:Number = param5 - param4;
         _loc37_;
         _loc37_;
         this.spriteSheet = new BitmapData(_loc10_,this.height,true,0);
         var _loc25_:* = 0;
         while(_loc25_ < param1)
         {
            _loc37_;
            _loc36_;
            _loc37_;
            _loc37_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc26_ = param2 + _loc21_ / param1 * _loc25_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc37_;
            _loc27_ = param4 + _loc22_ / param1 * _loc25_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc36_;
            _loc28_ = _loc12_ + _loc14_ / param1 * _loc25_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc37_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc29_ = _loc15_ + _loc17_ / param1 * _loc25_;
            _loc37_;
            _loc37_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc36_;
            _loc30_ = _loc18_ + _loc20_ / param1 * _loc25_;
            _loc37_;
            _loc31_ = this.§_-0j§(_loc28_,_loc29_,_loc30_);
            _loc32_ = int((this.width - this.width * _loc26_ / _loc9_) / 2);
            _loc36_;
            _loc33_ = int((this.height - this.height * _loc26_ / _loc9_) / 2);
            _loc34_ = new ColorTransform(1,1,1,_loc27_);
            _loc34_.color = _loc31_;
            _loc11_ = new Matrix();
            _loc11_.scale(_loc26_,_loc26_);
            _loc36_;
            _loc11_.translate(_loc25_ * this.width + _loc32_,_loc33_);
            _loc37_;
            _loc37_;
            this.spriteSheet.draw(this.§_-2B§,_loc11_,_loc34_,null,null,true);
            _loc37_;
            _loc25_++;
         }
      }
      
      public function §_-QQ§(param1:uint) : uint
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         return param1 >> 16 & 255;
      }
      
      public function §_-eA§(param1:uint) : uint
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         return param1 >> 8 & 255;
      }
      
      public function §_-WM§(param1:uint) : uint
      {
         return param1 & 255;
      }
      
      function §_-0j§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public function getFrameRect(param1:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(this.§_-pN§ * param1);
         _loc3_;
         _loc3_;
         this.§_-bS§.x = _loc2_ * this.width;
         _loc4_;
         this.§_-bS§.y = 0;
         _loc4_;
         _loc4_;
         this.§_-bS§.width = this.width;
         _loc3_;
         _loc3_;
         this.§_-bS§.height = this.height;
         return this.§_-bS§;
      }
   }
}
