package §_-JH§
{
   public class §_-st§ extends Gate
   {
      
      public function §_-st§(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         super(param1,param2,param3);
         _loc5_;
         gateType = SafeGlobal.GATETYPE_SHIELD;
      }
      
      public var gfx:AssetShield;
      
      public var §_-Ka§:int = 0;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         this.§_-Ka§++;
         if(animate)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-Ka§++;
            _loc4_;
            _loc4_;
            if(this.§_-Ka§ >= 30)
            {
               _loc5_;
               _loc5_;
               this.§_-Ka§ = this.§_-Ka§ - 30;
            }
         }
         else
         {
            this.§_-Ka§ = 0;
            _loc4_;
         }
         if(life == 3)
         {
            _loc5_;
            animStep = Math.floor(this.§_-Ka§ / 6);
            _loc5_;
         }
         else if(life == 2)
         {
            animStep = Math.floor(this.§_-Ka§ / 6) + 5;
            _loc5_;
         }
         else if(life == 1)
         {
            _loc5_;
            _loc5_;
            animStep = Math.floor(this.§_-Ka§ / 6) + 10;
         }
         
         
      }
      
      public function destroyMe() : void
      {
      }
   }
}
