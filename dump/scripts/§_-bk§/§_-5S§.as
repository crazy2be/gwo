package §_-bk§
{
   public class §_-5S§ extends Object
   {
      
      public function §_-5S§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      public var name:String = "";
      
      public var active:Boolean = false;
      
      public var health:int = 1;
      
      public var accuracy:int = 1;
      
      public var helmetID:int = 0;
      
      public function §_-3F§(param1:String, param2:int, param3:int, param4:int, param5:Boolean) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         _loc6_;
         this.name = param1;
         _loc6_;
         this.health = param2;
         _loc6_;
         _loc6_;
         this.accuracy = param3;
         _loc7_;
         _loc7_;
         this.helmetID = param4;
         _loc6_;
         this.active = param5;
      }
      
      public function §_-0-W§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.name = param1;
      }
      
      public function updateHealth(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1 <= 16)
         {
            _loc2_;
            _loc2_;
            this.health = param1;
         }
      }
      
      public function §_-1S§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 <= 16)
         {
            _loc2_;
            _loc2_;
            this.accuracy = param1;
         }
      }
      
      public function sellUnit() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.active = false;
         _loc2_;
         _loc2_;
         this.health = 0;
         _loc2_;
         this.accuracy = 0;
      }
      
      public function buyUnit() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.active = true;
         _loc1_;
         _loc1_;
         this.health = 1;
         _loc1_;
         this.accuracy = 1;
      }
   }
}
