package §_-WX§
{
   public class §_-A§ extends Object
   {
      
      public function §_-A§(param1:int = 0)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.rand1 = int(Math.random() * 600000 - 300000);
         _loc2_;
         _loc2_;
         this.rand2 = int(Math.random() * 600000 - 300000);
         _loc2_;
         _loc2_;
         this.§_-LZ§ = param1 + (this.rand1 - this.rand2);
      }
      
      private var §_-LZ§:int;
      
      private var rand1:int;
      
      private var rand2:int;
      
      public function setInt(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.rand1 = int(Math.random() * 600000 - 300000);
         _loc2_;
         this.rand2 = int(Math.random() * 600000 - 300000);
         _loc2_;
         this.§_-LZ§ = param1 + (this.rand1 - this.rand2);
      }
      
      public function getInt() : int
      {
         return this.§_-LZ§ - (this.rand1 - this.rand2);
      }
   }
}
