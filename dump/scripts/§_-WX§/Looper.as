package §_-WX§
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.display.BitmapData;
   
   public class Looper extends Object
   {
      
      public function Looper(param1:BitmapData, param2:int, param3:int)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.pos = new Point(0,0);
         _loc4_;
         this.§_-Fa§ = new Point(0,0);
         _loc5_;
         _loc5_;
         this.tempPoint = new Point(0,0);
         _loc4_;
         this.tempRect = new Rectangle(0,0,0,0);
         this.extraTempRect1 = new Rectangle();
         this.extraTempRect2 = new Rectangle();
         this.extraTempRect3 = new Rectangle();
         this.extraTempRect4 = new Rectangle();
         _loc5_;
         _loc5_;
         this.extraTempRect5 = new Rectangle();
         _loc5_;
         super();
         this.§_-cr§ = param1.width;
         _loc4_;
         _loc4_;
         this.§_-f5§ = param1.height;
         _loc4_;
         _loc4_;
         this.rectWidth = param2;
         this.rectHeight = param3;
         _loc5_;
         this.§_-t-§ = param1;
         this.§_-mI§ = new BitmapData(this.rectWidth,this.rectHeight,true,16711935);
      }
      
      public var rectWidth:int;
      
      public var rectHeight:int;
      
      public var §_-cr§:int;
      
      public var §_-f5§:int;
      
      public var pos:Point;
      
      public var §_-Fa§:Point;
      
      public var tempPoint:Point;
      
      public var tempRect:Rectangle;
      
      public var extraTempRect1:Rectangle;
      
      public var extraTempRect2:Rectangle;
      
      public var extraTempRect3:Rectangle;
      
      public var extraTempRect4:Rectangle;
      
      public var extraTempRect5:Rectangle;
      
      public var §_-t-§:BitmapData;
      
      public var §_-mI§:BitmapData;
      
      public function §_-Dl§(param1:Point, param2:BitmapData, param3:Boolean) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.pos.x = param1.x;
         _loc4_;
         this.pos.y = param1.y;
         _loc5_;
         this.§_-BX§(this.§_-ra§(),param2,param3);
      }
      
      public function §_-BX§(param1:Array, param2:BitmapData, param3:Boolean) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1.length == 1)
         {
            param2.copyPixels(this.§_-t-§,param1[0],this.§_-Fa§,null,null,!param3);
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
            if(param1.length == 2)
            {
               _loc4_;
               _loc5_;
               _loc5_;
               if(param1[0].x == param1[1].x)
               {
                  param2.copyPixels(this.§_-t-§,param1[0],this.§_-Fa§,null,null,!param3);
                  _loc4_;
                  _loc4_;
                  this.tempPoint.x = 0;
                  _loc4_;
                  this.tempPoint.y = param1[0].height;
                  param2.copyPixels(this.§_-t-§,param1[1],this.tempPoint,null,null,!param3);
               }
               else
               {
                  param2.copyPixels(this.§_-t-§,param1[0],this.§_-Fa§,null,null,!param3);
                  this.tempPoint.x = param1[0].width;
                  this.tempPoint.y = 0;
                  param2.copyPixels(this.§_-t-§,param1[1],this.tempPoint,null,null,!param3);
                  _loc4_;
                  _loc4_;
               }
            }
            else if(param1.length == 4)
            {
               _loc5_;
               _loc5_;
               param2.copyPixels(this.§_-t-§,param1[0],this.§_-Fa§,null,null,!param3);
               this.tempPoint.x = param1[0].width;
               this.tempPoint.y = param1[0].height;
               _loc5_;
               param2.copyPixels(this.§_-t-§,param1[1],this.tempPoint,null,null,!param3);
               this.tempPoint.x = 0;
               _loc4_;
               this.tempPoint.y = param1[0].height;
               _loc5_;
               param2.copyPixels(this.§_-t-§,param1[2],this.tempPoint,null,null,!param3);
               this.tempPoint.x = param1[0].width;
               _loc5_;
               this.tempPoint.y = 0;
               _loc4_;
               param2.copyPixels(this.§_-t-§,param1[3],this.tempPoint,null,null,!param3);
            }
            
         }
         return this.§_-mI§;
      }
      
      public function §_-ra§() : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Rectangle = null;
         var _loc1_:Array = [];
         var _loc2_:int = this.pos.x + this.rectWidth;
         var _loc3_:int = this.pos.y + this.rectHeight;
         this.tempRect.x = this.pos.x;
         this.tempRect.y = this.pos.y;
         _loc7_;
         this.tempRect.width = this.rectWidth;
         _loc8_;
         _loc8_;
         this.tempRect.height = this.rectHeight;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         if(_loc2_ > this.§_-cr§ && _loc3_ > this.§_-f5§)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc4_ = this.§_-cr§ - this.pos.x;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc5_ = this.§_-f5§ - this.pos.y;
            this.tempRect.width = _loc4_;
            this.tempRect.height = _loc5_;
            _loc8_;
            _loc8_;
            _loc1_.push(this.tempRect);
            _loc8_;
            _loc8_;
            this.extraTempRect1.x = 0;
            this.extraTempRect1.y = 0;
            this.extraTempRect1.width = this.rectWidth - _loc4_;
            _loc7_;
            this.extraTempRect1.height = this.rectHeight - _loc5_;
            _loc8_;
            _loc1_.push(this.extraTempRect1);
            this.extraTempRect2.x = this.pos.x;
            _loc7_;
            this.extraTempRect2.y = 0;
            this.extraTempRect2.width = _loc4_;
            this.extraTempRect2.height = this.rectHeight - _loc5_;
            _loc8_;
            _loc1_.push(this.extraTempRect2);
            this.extraTempRect3.x = 0;
            this.extraTempRect3.y = this.pos.y;
            this.extraTempRect3.width = this.rectWidth - _loc4_;
            this.extraTempRect3.height = _loc5_;
            _loc8_;
            _loc8_;
            _loc1_.push(this.extraTempRect3);
         }
         else
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(_loc2_ > this.§_-cr§)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc4_ = this.§_-cr§ - this.pos.x;
               _loc8_;
               this.tempRect.width = _loc4_;
               _loc1_.push(this.tempRect);
               _loc7_;
               this.extraTempRect4.x = 0;
               this.extraTempRect4.y = this.pos.y;
               this.extraTempRect4.width = this.rectWidth - _loc4_;
               this.extraTempRect4.height = this.rectHeight;
               _loc7_;
               _loc7_;
               _loc1_.push(this.extraTempRect4);
            }
            else if(_loc3_ > this.§_-f5§)
            {
               _loc7_;
               _loc5_ = this.§_-f5§ - this.pos.y;
               _loc7_;
               this.tempRect.height = _loc5_;
               _loc1_.push(this.tempRect);
               _loc6_ = new Rectangle(this.pos.x,0,this.rectWidth,0);
               _loc6_.x = this.pos.x;
               _loc8_;
               _loc8_;
               _loc6_.y = 0;
               _loc7_;
               _loc7_;
               _loc6_.width = this.rectWidth;
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
