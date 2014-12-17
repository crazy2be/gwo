package §_-zO§
{
   public class Barrel extends SimObject
   {
      
      public function Barrel(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super();
         §_-sz§ = 4;
         _loc3_;
         _loc3_;
         §_-X7§ = 30;
         _loc4_;
         _loc4_;
         §_-v§ = 26;
         _loc4_;
         §_-5f§ = -13;
         §_-w8§ = 26;
         if(param1 != -1)
         {
            _loc3_;
            §_-kT§(param1,param2);
         }
      }
      
      public var damage:int = 40;
      
      public var outerRadius:int = 60;
      
      public var explosionRadius:int = 40;
      
      override public function updatePoints() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         §_-Ri§();
      }
      
      public function detonate(param1:int, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         if(!dead)
         {
            _loc4_;
            dead = true;
            _loc4_;
            SafeGlobal.GAME.explodeBarrel(this,param1);
         }
      }
      
      public function destroyMe() : *
      {
      }
   }
}
