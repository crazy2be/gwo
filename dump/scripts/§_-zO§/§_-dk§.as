package §_-zO§
{
   public class §_-dk§ extends Gate
   {
      
      public function §_-dk§(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         super(param1,param2,param3);
         _loc4_;
         gateType = SafeGlobal.GATETYPE_DISSOLVESHIELD;
      }
      
      public var §_-Ef§:int = 0;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         this.§_-Ef§++;
         _loc5_;
         if(animate)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-Ef§++;
            _loc5_;
            _loc5_;
            if(this.§_-Ef§ >= 30)
            {
               this.§_-Ef§ = this.§_-Ef§ - 30;
            }
         }
         else
         {
            this.§_-Ef§ = 0;
         }
         if(life == 3)
         {
            _loc5_;
            animStep = Math.floor(this.§_-Ef§ / 6);
         }
         else if(life == 2)
         {
            _loc4_;
            animStep = Math.floor(this.§_-Ef§ / 6) + 5;
            _loc4_;
            _loc4_;
         }
         else if(life == 1)
         {
            _loc5_;
            _loc5_;
            animStep = Math.floor(this.§_-Ef§ / 6) + 10;
         }
         
         
      }
      
      public function destroyMe() : *
      {
      }
   }
}
