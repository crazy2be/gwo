package §_-JH§
{
   import flash.geom.Point;
   
   public class Explosion extends SimObject
   {
      
      public function Explosion(param1:Number, param2:Number, param3:Number, param4:int)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         this.shape = new Shape();
         _loc6_;
         _loc6_;
         super();
         this.shape.init(param3,param1,param2);
         _loc5_;
         iX = param1;
         _loc5_;
         _loc5_;
         iY = param2;
         this.rad = param3;
         x = param1;
         y = param2;
         _loc5_;
         this.time = param4;
      }
      
      public var shape:Shape;
      
      public var rad:Number;
      
      public var time:int;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(spriteSheet)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            animStep++;
            _loc5_;
            if(animStep >= spriteSheet.frames)
            {
               _loc5_;
               dead = true;
            }
         }
      }
      
      public function destroyMe() : *
      {
      }
      
      public function pointInside(param1:Point) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Number = §_-cl§(param1.x - this.shape.curves[0].x);
         var _loc3_:Number = §_-cl§(param1.y - this.shape.curves[0].y);
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         var _loc4_:Number = _loc2_ * _loc2_ + _loc3_ * _loc3_;
         if(_loc4_ < this.shape.curves[0].radius * this.shape.curves[0].radius)
         {
            _loc6_;
            _loc6_;
            return true;
         }
         return false;
      }
   }
}
