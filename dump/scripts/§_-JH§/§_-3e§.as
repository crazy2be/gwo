package §_-JH§
{
   public class §_-3e§ extends SimObject
   {
      
      public function §_-3e§(param1:Number, param2:Number)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc5_;
         x = iX = param1;
         _loc4_;
         y = iY = param2;
      }
      
      public var §_-5G§:Boolean = false;
      
      public var active:Boolean = true;
      
      public var triggerDistance:Number = 40;
      
      public var damage:int = 40;
      
      public var outerRadius:int = 60;
      
      public var explosionRadius:int = 40;
      
      public function triggerMe(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-5G§ = true;
         _loc2_;
         _loc2_;
         lastSimTime = param1;
         _loc3_;
         SafeGlobal.GAME.explodeSkyMine(this);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-Bx§();
      }
   }
}
