package §_-bk§
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.display.BitmapData;
   
   public class Looper extends Object
   {
      
      public function Looper(param1:BitmapData, param2:int, param3:int)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.pos = new Point(0,0);
         _loc5_;
         _loc5_;
         this.§_-XI§ = new Point(0,0);
         this.tempPoint = new Point(0,0);
         this.tempRect = new Rectangle(0,0,0,0);
         this.extraTempRect1 = new Rectangle();
         _loc5_;
         this.extraTempRect2 = new Rectangle();
         this.extraTempRect3 = new Rectangle();
         _loc5_;
         _loc5_;
         this.extraTempRect4 = new Rectangle();
         _loc4_;
         this.extraTempRect5 = new Rectangle();
         super();
         _loc5_;
         _loc5_;
         this.§_-q8§ = param1.width;
         _loc4_;
         this.§_-2w§ = param1.height;
         this.rectWidth = param2;
         this.rectHeight = param3;
         this.§_-UV§ = param1;
         this.§_-rs§ = new BitmapData(this.rectWidth,this.rectHeight,true,16711935);
      }
      
      public var rectWidth:int;
      
      public var rectHeight:int;
      
      public var §_-q8§:int;
      
      public var §_-2w§:int;
      
      public var pos:Point;
      
      public var §_-XI§:Point;
      
      public var tempPoint:Point;
      
      public var tempRect:Rectangle;
      
      public var extraTempRect1:Rectangle;
      
      public var extraTempRect2:Rectangle;
      
      public var extraTempRect3:Rectangle;
      
      public var extraTempRect4:Rectangle;
      
      public var extraTempRect5:Rectangle;
      
      public var §_-UV§:BitmapData;
      
      public var §_-rs§:BitmapData;
      
      public function §_-7a§(param1:Point, param2:BitmapData, param3:Boolean) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.pos.x = param1.x;
         _loc5_;
         this.pos.y = param1.y;
         _loc4_;
         this.§_-XC§(this.§_-78§(),param2,param3);
      }
      
      public function §_-XC§(param1:Array, param2:BitmapData, param3:Boolean) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(param1.length == 1)
         {
            _loc4_;
            _loc4_;
            param2.copyPixels(this.§_-UV§,param1[0],this.§_-XI§,null,null,!param3);
         }
         else
         {
            _loc4_;
            _loc4_;
            if(param1.length == 2)
            {
               _loc5_;
               if(param1[0].x == param1[1].x)
               {
                  param2.copyPixels(this.§_-UV§,param1[0],this.§_-XI§,null,null,!param3);
                  this.tempPoint.x = 0;
                  _loc5_;
                  _loc5_;
                  this.tempPoint.y = param1[0].height;
                  _loc4_;
                  _loc4_;
                  param2.copyPixels(this.§_-UV§,param1[1],this.tempPoint,null,null,!param3);
               }
               else
               {
                  param2.copyPixels(this.§_-UV§,param1[0],this.§_-XI§,null,null,!param3);
                  this.tempPoint.x = param1[0].width;
                  this.tempPoint.y = 0;
                  param2.copyPixels(this.§_-UV§,param1[1],this.tempPoint,null,null,!param3);
               }
            }
            else if(param1.length == 4)
            {
               param2.copyPixels(this.§_-UV§,param1[0],this.§_-XI§,null,null,!param3);
               _loc5_;
               _loc5_;
               this.tempPoint.x = param1[0].width;
               this.tempPoint.y = param1[0].height;
               _loc4_;
               _loc4_;
               param2.copyPixels(this.§_-UV§,param1[1],this.tempPoint,null,null,!param3);
               this.tempPoint.x = 0;
               this.tempPoint.y = param1[0].height;
               param2.copyPixels(this.§_-UV§,param1[2],this.tempPoint,null,null,!param3);
               _loc4_;
               this.tempPoint.x = param1[0].width;
               this.tempPoint.y = 0;
               _loc4_;
               param2.copyPixels(this.§_-UV§,param1[3],this.tempPoint,null,null,!param3);
            }
            
         }
         return this.§_-rs§;
      }
      
      public function §_-78§() : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Rectangle = null;
         var _loc1_:Array = [];
         var _loc2_:int = this.pos.x + this.rectWidth;
         var _loc3_:int = this.pos.y + this.rectHeight;
         _loc8_;
         this.tempRect.x = this.pos.x;
         _loc7_;
         this.tempRect.y = this.pos.y;
         this.tempRect.width = this.rectWidth;
         _loc7_;
         _loc7_;
         this.tempRect.height = this.rectHeight;
         _loc8_;
         _loc7_;
         if(_loc2_ > this.§_-q8§ && _loc3_ > this.§_-2w§)
         {
            _loc7_;
            _loc4_ = this.§_-q8§ - this.pos.x;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc5_ = this.§_-2w§ - this.pos.y;
            this.tempRect.width = _loc4_;
            this.tempRect.height = _loc5_;
            _loc8_;
            _loc8_;
            _loc1_.push(this.tempRect);
            _loc7_;
            this.extraTempRect1.x = 0;
            this.extraTempRect1.y = 0;
            this.extraTempRect1.width = this.rectWidth - _loc4_;
            this.extraTempRect1.height = this.rectHeight - _loc5_;
            _loc1_.push(this.extraTempRect1);
            this.extraTempRect2.x = this.pos.x;
            this.extraTempRect2.y = 0;
            this.extraTempRect2.width = _loc4_;
            _loc8_;
            this.extraTempRect2.height = this.rectHeight - _loc5_;
            _loc8_;
            _loc1_.push(this.extraTempRect2);
            _loc7_;
            this.extraTempRect3.x = 0;
            this.extraTempRect3.y = this.pos.y;
            _loc8_;
            this.extraTempRect3.width = this.rectWidth - _loc4_;
            this.extraTempRect3.height = _loc5_;
            _loc7_;
            _loc7_;
            _loc1_.push(this.extraTempRect3);
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc8_;
            if(_loc2_ > this.§_-q8§)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc4_ = this.§_-q8§ - this.pos.x;
               _loc7_;
               this.tempRect.width = _loc4_;
               _loc7_;
               _loc1_.push(this.tempRect);
               _loc8_;
               _loc8_;
               this.extraTempRect4.x = 0;
               _loc8_;
               this.extraTempRect4.y = this.pos.y;
               this.extraTempRect4.width = this.rectWidth - _loc4_;
               this.extraTempRect4.height = this.rectHeight;
               _loc1_.push(this.extraTempRect4);
               _loc7_;
            }
            else if(_loc3_ > this.§_-2w§)
            {
               _loc7_;
               _loc7_;
               _loc5_ = this.§_-2w§ - this.pos.y;
               _loc7_;
               _loc7_;
               this.tempRect.height = _loc5_;
               _loc1_.push(this.tempRect);
               _loc6_ = new Rectangle(this.pos.x,0,this.rectWidth,0);
               _loc6_.x = this.pos.x;
               _loc7_;
               _loc7_;
               _loc6_.y = 0;
               _loc8_;
               _loc6_.width = this.rectWidth;
               _loc8_;
               _loc8_;
               _loc6_.height = this.rectHeight - _loc5_;
               _loc8_;
               _loc1_.push(_loc6_);
            }
            else
            {
               _loc1_.push(this.tempRect);
            }
            
         }
         return _loc1_;
      }
   }
}
