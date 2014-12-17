package §_-zO§
{
   public class §_-UC§ extends SimObject
   {
      
      public function §_-UC§(param1:Number, param2:Number)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         super();
         _loc4_;
         _loc4_;
         x = iX = param1;
         _loc5_;
         y = iY = param2;
      }
      
      public var §_-Ec§:Boolean = false;
      
      public var active:Boolean = true;
      
      public var triggerDistance:Number = 40;
      
      public var damage:int = 40;
      
      public var outerRadius:int = 60;
      
      public var explosionRadius:int = 40;
      
      public function triggerMe(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Ec§ = true;
         _loc3_;
         _loc3_;
         lastSimTime = param1;
         _loc3_;
         SafeGlobal.GAME.explodeSkyMine(this);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         §_-Mn§();
      }
   }
}
