package §_-9X§
{
   import §_-JH§.Projectile;
   
   public class StraightEmitter extends Object
   {
      
      public function StraightEmitter(param1:int, param2:Boolean, param3:Number = 10)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this.particle = param1;
         _loc5_;
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
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc5_ = param1 + Math.cos((param3 - 90) * Math.PI / 180) + Math.cos((param3 - 90) * Math.PI / 180) * this.dist * -1;
         _loc7_;
         _loc7_;
         _loc6_ = param2 + Math.sin((param3 - 90) * Math.PI / 180) + Math.sin((param3 - 90) * Math.PI / 180) * this.dist * -1;
         _loc8_;
         this.§_-N0§(_loc5_,_loc6_);
      }
      
      public function §_-N0§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.x == 99999 && this.y == 99999)
         {
            this.§_-gh§ = param1;
            _loc4_;
            _loc4_;
            this.§_-uE§ = param2;
         }
         else
         {
            this.§_-gh§ = this.x;
            _loc4_;
            this.§_-uE§ = this.y;
            _loc4_;
         }
         this.x = param1;
         _loc3_;
         this.y = param2;
      }
      
      public function emit(param1:Projectile) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.skipNext)
         {
            _loc3_;
            _loc3_;
            this.skipNext = false;
            _loc2_;
         }
         else
         {
            SafeGlobal.GAME.addProjParticles(param1.lastSimTime,Math.round(this.x),Math.round(this.y),Math.round(this.§_-gh§),Math.round(this.§_-uE§),this.particle,this.custom,200,0,2);
         }
      }
   }
}
