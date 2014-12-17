package §_-zO§
{
   public class Rover extends Mine
   {
      
      public function Rover(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super(param1,param2);
         _loc3_;
         roving = true;
         damage = 50;
         §_-H§ = 20;
         outerRadius = 60;
         _loc4_;
         _loc4_;
         explosionRadius = 40;
         _loc4_;
         _loc4_;
         triggerDistance = 5;
         mineType = SafeGlobal.MINETYPE_ROVER;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         animStep++;
         _loc5_;
         if(animStep >= spriteSheet.frames)
         {
            _loc4_;
            _loc4_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
