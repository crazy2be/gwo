package §_-9X§
{
   import §_-JH§.Projectile;
   
   public class §_-Pg§ extends Object
   {
      
      public function §_-Pg§(param1:int, param2:Boolean, param3:Number = 10)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         super();
         _loc5_;
         this.particle = param1;
         _loc4_;
         _loc4_;
         this.dist = param3;
         _loc5_;
         _loc5_;
         this.custom = param2;
      }
      
      public var dist:Number = 10;
      
      public var pos:Number = 0;
      
      public var x:Number = 99999;
      
      public var y:Number = 99999;
      
      public var §_-gh§:Number = 0;
      
      public var §_-uE§:Number = 0;
      
      public var particle:int;
      
      public var custom:Boolean;
      
      public var skipNext:Boolean = false;
      
      public function nextPos(param1:Number, param2:Number, param3:Number, param4:int = -1) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc5_ = param1 + Math.cos((param3 + 180) * Math.PI / 180) + Math.cos((param3 + 180) * Math.PI / 180) * -1 * this.dist * param4;
         _loc7_;
         _loc7_;
         _loc6_ = param2 + Math.sin((param3 + 180) * Math.PI / 180) + Math.sin((param3 + 180) * Math.PI / 180) * -1 * this.dist * param4;
         _loc8_;
         _loc8_;
         this.§_-N0§(_loc5_,_loc6_);
      }
      
      public function §_-N0§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.x == 99999 && this.y == 99999)
         {
            _loc4_;
            this.§_-gh§ = param1;
            _loc3_;
            this.§_-uE§ = param2;
         }
         else
         {
            this.§_-gh§ = this.x;
            this.§_-uE§ = this.y;
            _loc3_;
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function emit(param1:Projectile) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.skipNext)
         {
            this.skipNext = false;
            _loc7_;
         }
         else
         {
            if(param1.scaleX == -1)
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc2_ = (0 - param1.rotation) * param1.scaleX * Math.PI / 180;
               _loc6_;
               _loc6_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc7_;
               _loc2_ = (param1.rotation + 180) * param1.scaleX * Math.PI / 180;
               _loc7_;
               _loc7_;
            }
            _loc6_;
            _loc3_ = 21;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc3_ * Math.cos(_loc2_);
            _loc7_;
            _loc5_ = _loc3_ * Math.sin(_loc2_);
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x),Math.round(this.y),Math.round(this.§_-gh§),Math.round(this.§_-uE§),this.particle,this.custom,200,2);
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x + _loc4_),Math.round(this.y + _loc5_),Math.round(this.§_-gh§ + _loc4_),Math.round(this.§_-uE§ + _loc5_),this.particle,this.custom,200,2);
         }
      }
   }
}
