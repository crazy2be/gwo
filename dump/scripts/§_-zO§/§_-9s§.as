package §_-zO§
{
   public class §_-9s§ extends Mine
   {
      
      public function §_-9s§(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super(param1,param2);
         _loc3_;
         roving = true;
         _loc4_;
         damage = 80;
         _loc3_;
         §_-H§ = 30;
         _loc4_;
         outerRadius = 70;
         _loc3_;
         explosionRadius = 50;
         triggerDistance = 5;
         mineType = SafeGlobal.MINETYPE_SUPERROVER;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc4_;
         animStep++;
         _loc4_;
         if(animStep >= spriteSheet.frames)
         {
            _loc5_;
            _loc5_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
