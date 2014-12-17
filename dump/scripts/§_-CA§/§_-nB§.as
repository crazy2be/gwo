package §_-CA§
{
   public class §_-nB§ extends Object
   {
      
      public function §_-nB§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Boolean)
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         _loc9_;
         super();
         _loc9_;
         this.setVals(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      public var momX:Number;
      
      public var momY:Number;
      
      public var pID:int;
      
      public var §_-RI§:int;
      
      public var §_-hv§:int;
      
      public var §_-qb§:int;
      
      public var custom:Boolean;
      
      public function §_-Wg§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         this.x = this.x + this.momX;
         _loc2_;
         _loc1_;
         this.y = this.y + this.momY;
      }
      
      public function setVals(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Boolean) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         _loc9_;
         this.x = param2;
         _loc10_;
         _loc10_;
         this.y = param3;
         this.momX = param4;
         _loc10_;
         _loc10_;
         this.momY = param5;
         this.pID = param6;
         this.§_-RI§ = param1;
         _loc9_;
         this.§_-hv§ = param1 + param7;
         this.§_-qb§ = param7;
         this.custom = param8;
      }
   }
}
