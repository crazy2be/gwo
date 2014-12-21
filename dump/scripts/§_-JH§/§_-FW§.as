package §_-JH§
{
   public class §_-FW§ extends Mine
   {
      
      public function §_-FW§(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         roving = true;
         §_-k2§ = true;
         _loc4_;
         _loc4_;
         damage = 40;
         §_-P0§ = 10;
         outerRadius = 50;
         explosionRadius = 30;
         _loc4_;
         triggerDistance = 5;
         §_-rC§ = "g,1;e;d,3,3;i,1";
         _loc4_;
         _loc4_;
         §_-fs§ = "g,1;e,1,1;d,2,1";
         _loc3_;
         mineType = SafeGlobal.§_-ee§;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         animStep++;
         _loc4_;
         _loc4_;
         if(animStep >= spriteSheet.frames)
         {
            _loc4_;
            animStep = animStep - spriteSheet.frames;
         }
      }
   }
}
