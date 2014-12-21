package §_-JH§
{
   public class Barrel extends SimObject
   {
      
      public function Barrel(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         §_-fX§ = 4;
         _loc3_;
         §_-RN§ = 30;
         _loc3_;
         §_-mN§ = 26;
         §_-Uv§ = -13;
         §_-NJ§ = 26;
         if(param1 != -1)
         {
            _loc3_;
            _loc3_;
            §_-zq§(param1,param2);
         }
      }
      
      public var damage:int = 40;
      
      public var outerRadius:int = 60;
      
      public var explosionRadius:int = 40;
      
      override public function updatePoints() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         §_-LJ§();
      }
      
      public function detonate(param1:int, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         if(!dead)
         {
            _loc4_;
            dead = true;
            _loc3_;
            SafeGlobal.GAME.explodeBarrel(this,param1);
         }
      }
      
      public function destroyMe() : *
      {
      }
   }
}
