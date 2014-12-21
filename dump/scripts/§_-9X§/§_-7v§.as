package §_-9X§
{
   public class §_-7v§ extends Object
   {
      
      public function §_-7v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Boolean)
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         super();
         _loc9_;
         _loc9_;
         this.setVals(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      public var momX:Number;
      
      public var momY:Number;
      
      public var pID:int;
      
      public var §_-l2§:int;
      
      public var §_-ky§:int;
      
      public var §_-CZ§:int;
      
      public var custom:Boolean;
      
      public function §_-er§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         this.x = this.x + this.momX;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.y = this.y + this.momY;
      }
      
      public function setVals(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Boolean) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.x = param2;
         this.y = param3;
         this.momX = param4;
         this.momY = param5;
         this.pID = param6;
         this.§_-l2§ = param1;
         _loc10_;
         _loc10_;
         this.§_-ky§ = param1 + param7;
         this.§_-CZ§ = param7;
         _loc9_;
         _loc9_;
         this.custom = param8;
      }
   }
}
