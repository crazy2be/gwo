package §_-CA§
{
   import §_-zO§.Projectile;
   
   public class §_-oQ§ extends Object
   {
      
      public function §_-oQ§(param1:int, param2:Boolean, param3:Number = 10)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         super();
         this.particle = param1;
         this.dist = param3;
         _loc5_;
         this.custom = param2;
         _loc5_;
         _loc5_;
         if(this.custom)
         {
            _loc4_;
            _loc4_;
            if(SafeGlobal.GAME.customParticleGFX[this.particle] is §_-H5§)
            {
               this.§_-Hp§ = true;
            }
         }
         else if(SafeGlobal.GAME.particleGFX[this.particle] is §_-H5§)
         {
            this.§_-Hp§ = true;
         }
         
      }
      
      public var dist:Number = 10;
      
      public var pos:Number = 0;
      
      public var x:Number = 99999;
      
      public var y:Number = 99999;
      
      public var §_-JB§:Number = 0;
      
      public var §_-Uv§:Number = 0;
      
      public var particle:int;
      
      public var custom:Boolean;
      
      public var §_-Hp§:Boolean = false;
      
      public var skipNext:Boolean = false;
      
      public function nextPos(param1:Number, param2:Number, param3:Number, param4:int = -1) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc5_ = param1;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_ = param2;
         _loc7_;
         this.§_-hE§(_loc5_,_loc6_);
      }
      
      public function §_-hE§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.x == 99999 && this.y == 99999)
         {
            _loc3_;
            _loc3_;
            this.§_-JB§ = param1;
            this.§_-Uv§ = param2;
            _loc3_;
         }
         else
         {
            this.§_-JB§ = this.x;
            this.§_-Uv§ = this.y;
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function emit(param1:Projectile) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.skipNext)
         {
            _loc2_;
            this.skipNext = false;
            _loc3_;
         }
         else if(this.§_-Hp§)
         {
            _loc3_;
            SafeGlobal.GAME.addParticleLine(Math.round(this.x),Math.round(this.y),Math.round(this.§_-JB§),Math.round(this.§_-Uv§),this.particle,param1.lastSimTime,this.custom);
            _loc3_;
         }
         else
         {
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x),Math.round(this.y),Math.round(this.§_-JB§),Math.round(this.§_-Uv§),this.particle,this.custom,200,2);
         }
         
      }
   }
}
