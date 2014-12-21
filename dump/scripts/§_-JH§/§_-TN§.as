package §_-JH§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   
   public class §_-TN§ extends Object
   {
      
      public function §_-TN§(param1:MovieClip, param2:Boolean = false)
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:Rectangle = null;
         _loc15_;
         _loc15_;
         this.§_-bb§ = new Rectangle();
         _loc15_;
         _loc15_;
         super();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc16_;
         this.frames = param1.totalFrames;
         var _loc7_:Number = Math.ceil(Math.sqrt(this.frames));
         _loc16_;
         _loc16_;
         this.§_-8e§ = _loc7_;
         _loc16_;
         this.rows = Math.ceil(this.frames / this.§_-8e§);
         var _loc8_:* = 1;
         while(true)
         {
            _loc16_;
            _loc15_;
            _loc15_;
            if(_loc8_ > this.frames)
            {
               break;
            }
            param1.gotoAndStop(_loc8_);
            _loc16_;
            _loc16_;
            _loc14_ = param1.getBounds(SafeGlobal.TIMELINE.timeline);
            if(_loc14_.left < _loc3_)
            {
               _loc15_;
               _loc15_;
               _loc3_ = Math.floor(_loc14_.left);
               _loc16_;
               _loc16_;
            }
            if(_loc14_.left + _loc14_.width > _loc4_)
            {
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc4_ = Math.ceil(_loc14_.left + _loc14_.width);
            }
            if(_loc14_.top < _loc5_)
            {
               _loc15_;
               _loc15_;
               _loc5_ = Math.floor(_loc14_.top);
               _loc15_;
            }
            if(_loc14_.top + _loc14_.height > _loc6_)
            {
               _loc15_;
               _loc15_;
               _loc6_ = Math.ceil(_loc14_.top + _loc14_.height);
            }
            _loc8_++;
         }
         _loc15_;
         this.offsetX = _loc3_;
         _loc15_;
         this.offsetY = _loc5_;
         _loc15_;
         var _loc9_:int = _loc4_ - _loc3_;
         _loc16_;
         var _loc10_:int = _loc6_ - _loc5_;
         _loc16_;
         _loc16_;
         this.frameWidth = _loc9_;
         _loc15_;
         _loc15_;
         this.frameHeight = _loc10_;
         _loc16_;
         _loc16_;
         this.sheetBD = new BitmapData(_loc9_ * this.§_-8e§,_loc10_ * this.rows,true,0);
         var _loc11_:Matrix = new Matrix(1,0,0,1,0,0);
         _loc15_;
         _loc8_ = 0;
         _loc15_;
         _loc15_;
         while(_loc8_ < this.frames)
         {
            param1.gotoAndStop(_loc8_ + 1);
            _loc15_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc12_ = _loc8_ % this.§_-8e§;
            _loc15_;
            _loc15_;
            _loc13_ = Math.floor(_loc8_ / this.§_-8e§);
            _loc11_.tx = _loc12_ * this.frameWidth - _loc3_;
            _loc11_.ty = _loc13_ * this.frameHeight - _loc5_;
            _loc15_;
            this.sheetBD.draw(param1,_loc11_);
            _loc8_++;
         }
      }
      
      public var sheetBD:BitmapData;
      
      public var rows:int = 1;
      
      public var §_-8e§:int = 1;
      
      public var frameWidth:int;
      
      public var frameHeight:int;
      
      public var frames:int = 0;
      
      public var offsetX:int = 0;
      
      public var offsetY:int = 0;
      
      public var §_-bb§:Rectangle;
      
      public function getChunk(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var _loc2_:int = param1 % this.§_-8e§;
         var _loc3_:int = Math.floor(param1 / this.§_-8e§);
         _loc4_;
         this.§_-bb§.x = _loc2_ * this.frameWidth;
         _loc4_;
         this.§_-bb§.y = _loc3_ * this.frameHeight;
         _loc5_;
         _loc5_;
         this.§_-bb§.width = this.frameWidth;
         _loc4_;
         _loc4_;
         this.§_-bb§.height = this.frameHeight;
         return this.§_-bb§;
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.sheetBD)
         {
            _loc1_;
            this.sheetBD.dispose();
            _loc1_;
            _loc1_;
            this.sheetBD = null;
         }
      }
   }
}
