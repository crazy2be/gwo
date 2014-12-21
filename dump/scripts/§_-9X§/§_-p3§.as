package §_-9X§
{
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.geom.ColorTransform;
   
   public class §_-p3§ extends Object
   {
      
      public function §_-p3§(param1:Sprite, param2:Array = null)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.§_-cC§ = new Rectangle();
         _loc4_;
         this.coverRectangle = new Rectangle();
         super();
         _loc3_;
         this.§_-4p§ = param1;
         _loc3_;
         _loc3_;
         this.width = param1.width;
         this.height = param1.height;
         this.rect = new Rectangle(0,0,this.width,this.height);
         this.offsetX = int(this.width / 2);
         _loc4_;
         this.offsetY = int(this.height / 2);
         if(param2)
         {
            _loc3_;
            _loc3_;
            this.§_-wt§(param2[0],param2[1],param2[2],param2[3],param2[4],param2[5],param2[6],param2[7],param2[8]);
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-wt§(10,0.2,0,1,0.5,0,0,16777215,0);
         }
         this.cover = new BitmapData(this.width,this.height,true,0);
         this.coverRectangle.x = 0;
         this.coverRectangle.y = 0;
         _loc4_;
         this.coverRectangle.width = this.width;
         _loc3_;
         this.coverRectangle.height = this.height;
      }
      
      public var §_-4p§:Sprite;
      
      public var spriteSheet:BitmapData;
      
      public var §_-Rk§:int;
      
      public var width:int;
      
      public var height:int;
      
      public var offsetX:int;
      
      public var offsetY:int;
      
      public var rect:Rectangle;
      
      public var §_-cC§:Rectangle;
      
      public var cover:BitmapData;
      
      public var coverRectangle:Rectangle;
      
      public function §_-wt§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:uint, param9:uint) : *
      {
         var _loc44_:* = true;
         var _loc45_:* = false;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = 0;
         var _loc28_:Matrix = null;
         var _loc29_:Matrix = null;
         var _loc31_:* = 0;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = 0;
         var _loc35_:* = 0;
         var _loc36_:* = 0;
         var _loc37_:* = NaN;
         var _loc38_:uint = 0;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:ColorTransform = null;
         _loc45_;
         _loc45_;
         this.§_-Rk§ = param1;
         var _loc10_:Sprite = new Sprite();
         _loc10_.addChild(this.§_-4p§);
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         _loc45_;
         _loc44_;
         _loc44_;
         var _loc13_:Number = param7 - param6;
         var _loc14_:int = this.§_-EM§(param8);
         var _loc15_:int = this.§_-EM§(param9);
         _loc45_;
         var _loc16_:Number = _loc15_ - _loc14_;
         var _loc17_:int = this.§_-5f§(param8);
         var _loc18_:int = this.§_-5f§(param9);
         _loc45_;
         _loc45_;
         var _loc19_:Number = _loc18_ - _loc17_;
         var _loc20_:int = this.§_-23§(param8);
         var _loc21_:int = this.§_-23§(param9);
         _loc44_;
         _loc44_;
         var _loc22_:Number = _loc21_ - _loc20_;
         _loc45_;
         _loc44_;
         _loc44_;
         var _loc23_:Number = param5 - param4;
         _loc45_;
         _loc45_;
         _loc45_;
         var _loc24_:Number = param3 - param2;
         var _loc30_:* = 0;
         while(_loc30_ <= 1)
         {
            _loc44_;
            if(_loc30_ == 1)
            {
               _loc45_;
               this.width = _loc12_;
               this.height = _loc11_;
               _loc45_;
               _loc45_;
               _loc44_;
               _loc27_ = this.width * param1;
               _loc45_;
               _loc45_;
               this.spriteSheet = new BitmapData(_loc27_,this.height,true,0);
               _loc45_;
               _loc45_;
            }
            _loc31_ = 0;
            _loc45_;
            while(true)
            {
               _loc45_;
               _loc44_;
               if(_loc31_ >= param1)
               {
                  break;
               }
               _loc45_;
               _loc45_;
               _loc45_;
               _loc44_;
               _loc32_ = param2 + _loc24_ / param1 * _loc31_;
               _loc44_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc33_ = param4 + _loc23_ / param1 * _loc31_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc44_;
               _loc44_;
               _loc45_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc34_ = _loc14_ + _loc16_ / param1 * _loc31_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc45_;
               _loc45_;
               _loc35_ = _loc17_ + _loc19_ / param1 * _loc31_;
               _loc45_;
               _loc44_;
               _loc44_;
               _loc44_;
               _loc36_ = _loc20_ + _loc22_ / param1 * _loc31_;
               _loc44_;
               _loc44_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc45_;
               _loc37_ = param6 + _loc13_ / param1 * _loc31_;
               _loc45_;
               _loc38_ = this.§_-0z§(_loc34_,_loc35_,_loc36_);
               _loc44_;
               _loc44_;
               _loc28_ = new Matrix();
               _loc29_ = new Matrix();
               _loc44_;
               _loc44_;
               if(_loc30_ == 0)
               {
                  _loc28_.rotate(_loc37_);
                  _loc45_;
                  _loc45_;
                  _loc28_.scale(_loc32_,_loc32_);
                  _loc44_;
                  _loc44_;
                  _loc10_.transform.matrix = _loc28_;
                  _loc44_;
                  _loc44_;
                  if(_loc10_.width > _loc12_)
                  {
                     _loc44_;
                     _loc12_ = _loc10_.width;
                  }
                  if(_loc10_.height > _loc11_)
                  {
                     _loc11_ = _loc10_.height;
                     _loc45_;
                  }
                  _loc10_.transform.matrix = _loc29_;
                  _loc45_;
                  _loc45_;
               }
               else
               {
                  _loc10_.transform.matrix = _loc28_;
                  _loc44_;
                  _loc28_.translate(0 - _loc10_.width / 2,0 - _loc10_.height / 2);
                  _loc28_.rotate(_loc37_);
                  _loc44_;
                  _loc28_.scale(_loc32_,_loc32_);
                  _loc45_;
                  _loc45_;
                  _loc28_.translate(_loc10_.width / 2,_loc10_.height / 2);
                  _loc39_ = _loc10_.width;
                  _loc44_;
                  _loc44_;
                  _loc45_;
                  _loc40_ = _loc10_.height;
                  _loc44_;
                  _loc44_;
                  _loc45_;
                  _loc45_;
                  _loc44_;
                  _loc45_;
                  _loc44_;
                  _loc44_;
                  _loc41_ = (this.width - _loc39_) / 2;
                  _loc45_;
                  _loc42_ = (this.height - _loc40_) / 2;
                  _loc43_ = new ColorTransform(1,1,1,_loc33_);
                  _loc43_.color = _loc38_;
                  _loc44_;
                  _loc10_.transform.matrix = _loc29_;
                  _loc44_;
                  _loc28_.translate(_loc31_ * this.width + _loc41_,_loc42_);
                  _loc45_;
                  this.spriteSheet.draw(this.§_-4p§,_loc28_,_loc43_,null,null,true);
               }
               _loc31_++;
            }
            _loc44_;
            _loc44_;
            _loc30_++;
         }
      }
      
      public function §_-EM§(param1:uint) : uint
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         return param1 >> 16 & 255;
      }
      
      public function §_-5f§(param1:uint) : uint
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         return param1 >> 8 & 255;
      }
      
      public function §_-23§(param1:uint) : uint
      {
         return param1 & 255;
      }
      
      function §_-0z§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
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
         var _loc2_:int = int(this.§_-Rk§ * param1);
         _loc4_;
         _loc4_;
         this.§_-cC§.x = _loc2_ * this.width;
         _loc4_;
         _loc4_;
         this.§_-cC§.y = 0;
         _loc3_;
         _loc3_;
         this.§_-cC§.width = this.width;
         _loc3_;
         this.§_-cC§.height = this.height;
         return this.§_-cC§;
      }
   }
}
