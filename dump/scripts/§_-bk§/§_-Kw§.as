package §_-bk§
{
   import flash.geom.Point;
   
   public class §_-Kw§ extends Object
   {
      
      public function §_-Kw§(param1:Number, param2:Number, param3:int, param4:int = 0, param5:Number = 0)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.pos = new Point(0,0);
         super();
         this.pos.x = SafeGlobal.§_-cl§(param1);
         this.pos.y = SafeGlobal.§_-cl§(param2);
         _loc6_;
         _loc6_;
         this.type = param3;
         _loc6_;
         this.side = param4;
         this.angle = param5;
      }
      
      public var pos:Point;
      
      public var type:int;
      
      public var gateID:int;
      
      public var planetGateID:int;
      
      public var skyMineID:int;
      
      public var projectileID:int;
      
      public var objectType:int;
      
      public var objectID:int;
      
      public var side:int;
      
      public var angle:Number;
      
      public var planetID:int;
      
      public var shapeID:int;
      
      public var curveID:int;
   }
}
