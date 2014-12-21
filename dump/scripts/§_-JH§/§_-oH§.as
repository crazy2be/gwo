package §_-JH§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.display.Bitmap;
   
   public class §_-oH§ extends Object
   {
      
      public function §_-oH§(param1:BitmapData, param2:int = 5)
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc11_:Matrix = null;
         var _loc12_:* = NaN;
         var _loc13_:Rectangle = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         _loc19_;
         this.§_-bb§ = new Rectangle();
         _loc18_;
         _loc18_;
         this.coverRectangle = new Rectangle();
         _loc18_;
         _loc18_;
         super();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc19_;
         this.§_-eJ§ = 360 / param2;
         var _loc5_:Number = Math.ceil(Math.sqrt(this.§_-eJ§));
         _loc18_;
         this.§_-8e§ = _loc5_;
         _loc19_;
         this.rows = Math.ceil(this.§_-eJ§ / this.§_-8e§);
         var _loc6_:Bitmap = new Bitmap(param1);
         var _loc7_:* = 0;
         while(true)
         {
            _loc19_;
            _loc18_;
            _loc18_;
            if(_loc7_ >= this.§_-eJ§)
            {
               break;
            }
            _loc6_.rotation = _loc7_ * param2;
            _loc19_;
            _loc13_ = _loc6_.getBounds(SafeGlobal.TIMELINE.timeline);
            _loc18_;
            _loc18_;
            _loc14_ = Math.ceil(_loc13_.right - _loc13_.left);
            _loc15_ = Math.ceil(_loc13_.bottom - _loc13_.top);
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc18_;
            if(_loc3_ < _loc14_)
            {
               _loc18_;
               _loc18_;
               _loc3_ = _loc14_;
            }
            if(_loc4_ < _loc15_)
            {
               _loc19_;
               _loc19_;
               _loc18_;
               _loc18_;
               _loc4_ = _loc15_;
            }
            _loc7_++;
         }
         _loc19_;
         _loc19_;
         _loc6_.rotation = 0;
         _loc18_;
         _loc18_;
         this.frameWidth = _loc3_;
         _loc18_;
         this.frameHeight = _loc4_;
         _loc18_;
         _loc18_;
         this.sheetBD = new BitmapData(_loc3_ * this.§_-8e§,_loc4_ * this.rows,true,0);
         var _loc10_:Array = [3355443,5592405];
         _loc18_;
         _loc18_;
         _loc18_;
         _loc7_ = 0;
         while(_loc7_ < this.§_-eJ§)
         {
            _loc11_ = new Matrix();
            _loc19_;
            _loc19_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc8_ = _loc7_ % this.§_-8e§;
            _loc18_;
            _loc18_;
            _loc9_ = Math.floor(_loc7_ / this.§_-8e§);
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc12_ = _loc7_ * param2 * -1 * Math.PI / 180;
            _loc11_.a = Math.cos(_loc12_);
            _loc11_.b = Math.sin(_loc12_);
            _loc18_;
            _loc11_.c = -Math.sin(_loc12_);
            _loc11_.d = Math.cos(_loc12_);
            _loc18_;
            _loc18_;
            _loc6_.transform.matrix = _loc11_;
            _loc13_ = _loc6_.getBounds(SafeGlobal.TIMELINE.timeline);
            _loc19_;
            _loc19_;
            _loc16_ = Math.round((this.frameWidth - _loc13_.width) / 2);
            _loc18_;
            _loc17_ = Math.round((this.frameHeight - _loc13_.height) / 2);
            _loc11_.tx = _loc8_ * this.frameWidth - _loc13_.left + _loc16_;
            _loc11_.ty = _loc9_ * this.frameHeight - _loc13_.top + _loc17_;
            _loc19_;
            _loc19_;
            this.sheetBD.draw(param1,_loc11_,null,null,null,true);
            _loc18_;
            _loc7_++;
         }
         this.cover = new BitmapData(this.frameWidth,this.frameHeight,true,0);
         this.coverRectangle.x = 0;
         this.coverRectangle.y = 0;
         this.coverRectangle.width = this.frameWidth;
         this.coverRectangle.height = this.frameHeight;
      }
      
      public var sheetBD:BitmapData;
      
      public var rows:int = 1;
      
      public var §_-8e§:int = 1;
      
      public var frameWidth:int;
      
      public var frameHeight:int;
      
      public var §_-eJ§:int = 0;
      
      public var offsetX:int = 0;
      
      public var offsetY:int = 0;
      
      public var §_-bb§:Rectangle;
      
      public var cover:BitmapData;
      
      public var coverRectangle:Rectangle;
      
      public function getChunk(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var _loc2_:int = param1 % this.§_-8e§;
         var _loc3_:int = Math.floor(param1 / this.§_-8e§);
         _loc5_;
         this.§_-bb§.x = _loc2_ * this.frameWidth;
         _loc4_;
         _loc4_;
         this.§_-bb§.y = _loc3_ * this.frameHeight;
         _loc5_;
         this.§_-bb§.width = this.frameWidth;
         _loc5_;
         this.§_-bb§.height = this.frameHeight;
         return this.§_-bb§;
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.sheetBD)
         {
            _loc1_;
            _loc1_;
            this.sheetBD.dispose();
            _loc1_;
            this.sheetBD = null;
         }
      }
   }
}
