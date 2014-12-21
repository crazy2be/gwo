package §_-JH§
{
   public class PowerUp extends SimObject
   {
      
      public function PowerUp()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         §_-fX§ = 4;
         §_-RN§ = 30;
         _loc2_;
         §_-mN§ = 30;
         §_-Uv§ = -15;
         §_-NJ§ = 26;
      }
      
      public var damage:int = 40;
      
      public var outerRadius:int = 60;
      
      public var explosionRadius:int = 40;
      
      public var weaponID:int = 0;
      
      public var powerUpType:int = -1;
      
      override public function updatePoints() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         §_-LJ§();
      }
      
      public function detonate(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(!dead)
         {
            _loc3_;
            _loc3_;
            dead = true;
            _loc3_;
            SafeGlobal.GAME.explodePowerUp(this,param1);
         }
      }
      
      public function destroyMe() : void
      {
      }
   }
}
