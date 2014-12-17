package §_-WX§
{
   public class §_-Xd§ extends Object
   {
      
      public function §_-Xd§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      public var name:String = "";
      
      public var active:Boolean = false;
      
      public var health:int = 1;
      
      public var accuracy:int = 1;
      
      public var helmetID:int = 0;
      
      public function §_-Gi§(param1:String, param2:int, param3:int, param4:int, param5:Boolean) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         this.name = param1;
         _loc7_;
         this.health = param2;
         _loc6_;
         _loc6_;
         this.accuracy = param3;
         _loc7_;
         _loc7_;
         this.helmetID = param4;
         _loc6_;
         _loc6_;
         this.active = param5;
      }
      
      public function §_-EY§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.name = param1;
      }
      
      public function updateHealth(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1 <= 16)
         {
            _loc2_;
            this.health = param1;
         }
      }
      
      public function §_-NT§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1 <= 16)
         {
            _loc3_;
            this.accuracy = param1;
         }
      }
      
      public function sellUnit() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.active = false;
         _loc2_;
         _loc2_;
         this.health = 0;
         _loc1_;
         _loc1_;
         this.accuracy = 0;
      }
      
      public function buyUnit() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.active = true;
         _loc2_;
         _loc2_;
         this.health = 1;
         _loc2_;
         this.accuracy = 1;
      }
   }
}
