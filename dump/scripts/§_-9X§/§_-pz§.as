package §_-9X§
{
   import §_-JH§.Projectile;
   
   public class §_-pz§ extends Object
   {
      
      public function §_-pz§(param1:int, param2:Boolean, param3:Number = 10)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         _loc5_;
         _loc5_;
         this.particle = param1;
         _loc5_;
         _loc5_;
         this.dist = param3;
         this.custom = param2;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.custom)
         {
            _loc5_;
            if(SafeGlobal.GAME.customParticleGFX[this.particle] is §_-p3§)
            {
               _loc5_;
               _loc5_;
               this.§_-Px§ = true;
            }
         }
         else if(SafeGlobal.GAME.particleGFX[this.particle] is §_-p3§)
         {
            this.§_-Px§ = true;
         }
         
      }
      
      public var dist:Number = 10;
      
      public var pos:Number = 0;
      
      public var x:Number = 99999;
      
      public var y:Number = 99999;
      
      public var §_-gh§:Number = 0;
      
      public var §_-uE§:Number = 0;
      
      public var particle:int;
      
      public var custom:Boolean;
      
      public var §_-Px§:Boolean = false;
      
      public var skipNext:Boolean = false;
      
      public function nextPos(param1:Number, param2:Number, param3:Number, param4:int = -1) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc5_ = param1;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc6_ = param2;
         _loc7_;
         this.§_-N0§(_loc5_,_loc6_);
      }
      
      public function §_-N0§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.x == 99999 && this.y == 99999)
         {
            _loc4_;
            this.§_-gh§ = param1;
            _loc4_;
            this.§_-uE§ = param2;
         }
         else
         {
            this.§_-gh§ = this.x;
            this.§_-uE§ = this.y;
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function emit(param1:Projectile) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.skipNext)
         {
            _loc2_;
            _loc2_;
            this.skipNext = false;
            _loc3_;
         }
         else if(this.§_-Px§)
         {
            _loc3_;
            SafeGlobal.GAME.addParticleLine(Math.round(this.x),Math.round(this.y),Math.round(this.§_-gh§),Math.round(this.§_-uE§),this.particle,param1.lastSimTime,this.custom);
            _loc2_;
         }
         else
         {
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x),Math.round(this.y),Math.round(this.§_-gh§),Math.round(this.§_-uE§),this.particle,this.custom,200,2);
         }
         
      }
   }
}
