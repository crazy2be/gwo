package §_-zO§
{
   public class PowerUp extends SimObject
   {
      
      public function PowerUp()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         _loc2_;
         _loc2_;
         §_-sz§ = 4;
         _loc1_;
         _loc1_;
         §_-X7§ = 30;
         §_-v§ = 30;
         §_-5f§ = -15;
         §_-w8§ = 26;
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
         _loc1_;
         _loc1_;
         §_-Ri§();
      }
      
      public function detonate(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(!dead)
         {
            _loc3_;
            _loc3_;
            dead = true;
            _loc3_;
            _loc3_;
            SafeGlobal.GAME.explodePowerUp(this,param1);
         }
      }
      
      public function destroyMe() : void
      {
      }
   }
}
