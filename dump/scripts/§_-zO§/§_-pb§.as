package §_-zO§
{
   import flash.geom.Point;
   
   public class §_-pb§ extends Object
   {
      
      public function §_-pb§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean)
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         _loc8_;
         this.x = param1;
         _loc7_;
         _loc7_;
         this.y = param2;
         this.radius = param3;
         _loc8_;
         _loc8_;
         this.startAngle = param4;
         _loc8_;
         this.endAngle = param5;
         _loc8_;
         this.origCurve = param6;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-8R§ = this.§_-yl§(2 * this.PI * this.radius);
         _loc7_;
         this.§_-is§ = this.§_-8R§;
      }
      
      public var x:Number;
      
      public var y:Number;
      
      public var radius:Number;
      
      public var startAngle:Number;
      
      public var endAngle:Number;
      
      public var §_-8R§:Number;
      
      public var §_-is§:Number;
      
      public var PI:Number = 3.1415926;
      
      public var joinedStart:Boolean = false;
      
      public var joinedEnd:Boolean = false;
      
      public var origCurve:Boolean = false;
      
      public function §_-yl§(param1:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         var _loc2_:Number = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function curvePos(param1:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc2_ = this.§_-yl§(this.radius * Math.cos(param1) + this.x);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc3_ = this.§_-yl§(this.radius * Math.sin(param1) + this.y);
         return new Point(_loc2_,_loc3_);
      }
      
      public function startAnglePos() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc1_ = this.§_-yl§(this.radius * Math.cos(this.startAngle) + this.x);
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc2_ = this.§_-yl§(this.radius * Math.sin(this.startAngle) + this.y);
         return new Point(_loc1_,_loc2_);
      }
      
      public function endAnglePos() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = this.§_-yl§(this.radius * Math.cos(this.endAngle) + this.x);
         _loc3_;
         _loc3_;
         _loc4_;
         _loc2_ = this.§_-yl§(this.radius * Math.sin(this.endAngle) + this.y);
         return new Point(_loc1_,_loc2_);
      }
      
      public function §_-7R§() : *
      {
         return new §_-pb§(this.x,this.y,this.radius,this.startAngle,this.endAngle,this.origCurve);
      }
   }
}
