package §_-JH§
{
   public class §_-vZ§ extends Mine
   {
      
      public function §_-vZ§(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         roving = true;
         damage = 80;
         _loc4_;
         _loc4_;
         §_-P0§ = 30;
         outerRadius = 70;
         explosionRadius = 50;
         triggerDistance = 5;
         mineType = SafeGlobal.MINETYPE_SUPERROVER;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc5_;
         animStep++;
         _loc5_;
         _loc5_;
         if(animStep >= spriteSheet.frames)
         {
            _loc4_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
