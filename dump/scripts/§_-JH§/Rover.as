package §_-JH§
{
   public class Rover extends Mine
   {
      
      public function Rover(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         super(param1,param2);
         roving = true;
         damage = 50;
         §_-P0§ = 20;
         _loc3_;
         outerRadius = 60;
         explosionRadius = 40;
         triggerDistance = 5;
         mineType = SafeGlobal.MINETYPE_ROVER;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc4_;
         _loc4_;
         animStep++;
         _loc4_;
         _loc4_;
         if(animStep >= spriteSheet.frames)
         {
            _loc4_;
            _loc4_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
