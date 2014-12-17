package §_-zO§
{
   public class Wormhole extends Gate
   {
      
      public function Wormhole(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         super(param1,param2,param3);
         _loc5_;
         gateType = SafeGlobal.GATETYPE_WORMHOLE;
      }
      
      public var pair:Wormhole;
      
      override public function changeColour(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         init(SafeGlobal.GAME.wormholeGFX[param1]);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.pair = null;
      }
   }
}
