package §_-CA§
{
   import §_-zO§.Projectile;
   
   public class §_-YP§ extends Object
   {
      
      public function §_-YP§(param1:int, param2:Boolean, param3:Number = 10)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this.particle = param1;
         _loc5_;
         _loc5_;
         this.dist = param3;
         _loc5_;
         this.custom = param2;
      }
      
      public var dist:Number = 10;
      
      public var pos:Number = 0;
      
      public var x:Number = 99999;
      
      public var y:Number = 99999;
      
      public var §_-JB§:Number = 0;
      
      public var §_-Uv§:Number = 0;
      
      public var particle:int;
      
      public var custom:Boolean;
      
      public var skipNext:Boolean = false;
      
      public function nextPos(param1:Number, param2:Number, param3:Number, param4:int = -1) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc5_ = param1 + Math.cos((param3 + 180) * Math.PI / 180) + Math.cos((param3 + 180) * Math.PI / 180) * -1 * this.dist * param4;
         _loc7_;
         _loc7_;
         _loc6_ = param2 + Math.sin((param3 + 180) * Math.PI / 180) + Math.sin((param3 + 180) * Math.PI / 180) * -1 * this.dist * param4;
         _loc8_;
         this.§_-hE§(_loc5_,_loc6_);
      }
      
      public function §_-hE§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.x == 99999 && this.y == 99999)
         {
            this.§_-JB§ = param1;
            this.§_-Uv§ = param2;
         }
         else
         {
            this.§_-JB§ = this.x;
            _loc3_;
            _loc3_;
            this.§_-Uv§ = this.y;
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function emit(param1:Projectile) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc6_;
         if(this.skipNext)
         {
            _loc7_;
            this.skipNext = false;
         }
         else
         {
            if(param1.scaleX == -1)
            {
               _loc7_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc2_ = (0 - param1.rotation) * param1.scaleX * Math.PI / 180;
            }
            else
            {
               _loc2_ = (param1.rotation + 180) * param1.scaleX * Math.PI / 180;
               _loc6_;
               _loc6_;
            }
            _loc3_ = 21;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc3_ * Math.cos(_loc2_);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_ = _loc3_ * Math.sin(_loc2_);
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x),Math.round(this.y),Math.round(this.§_-JB§),Math.round(this.§_-Uv§),this.particle,this.custom,200,2);
            _loc7_;
            _loc7_;
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x + _loc4_),Math.round(this.y + _loc5_),Math.round(this.§_-JB§ + _loc4_),Math.round(this.§_-Uv§ + _loc5_),this.particle,this.custom,200,2);
         }
      }
   }
}
