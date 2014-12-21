package §_-bk§
{
   public class §_-aq§ extends Object
   {
      
      public function §_-aq§(param1:int = 0)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         this.rand1 = int(Math.random() * 600000 - 300000);
         _loc3_;
         _loc3_;
         this.rand2 = int(Math.random() * 600000 - 300000);
         _loc3_;
         this.§_-qC§ = param1 + (this.rand1 - this.rand2);
      }
      
      private var §_-qC§:int;
      
      private var rand1:int;
      
      private var rand2:int;
      
      public function setInt(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.rand1 = int(Math.random() * 600000 - 300000);
         _loc2_;
         _loc2_;
         this.rand2 = int(Math.random() * 600000 - 300000);
         _loc2_;
         this.§_-qC§ = param1 + (this.rand1 - this.rand2);
      }
      
      public function getInt() : int
      {
         return this.§_-qC§ - (this.rand1 - this.rand2);
      }
   }
}
