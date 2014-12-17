package §_-zO§
{
   public class §_-H-§ extends Mine
   {
      
      public function §_-H-§(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         roving = true;
         _loc4_;
         §_-HV§ = true;
         _loc3_;
         _loc3_;
         damage = 40;
         _loc3_;
         _loc3_;
         §_-H§ = 10;
         _loc4_;
         _loc4_;
         outerRadius = 50;
         explosionRadius = 30;
         _loc3_;
         _loc3_;
         triggerDistance = 5;
         _loc4_;
         §_-5p§ = "g,1;e;d,3,3;i,1";
         _loc3_;
         _loc3_;
         §_-l2§ = "g,1;e,1,1;d,2,1";
         mineType = SafeGlobal.§_-aF§;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc4_;
         _loc4_;
         animStep++;
         _loc5_;
         if(animStep >= spriteSheet.frames)
         {
            _loc5_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
