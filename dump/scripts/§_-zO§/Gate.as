package §_-zO§
{
   import flash.geom.Point;
   
   public class Gate extends SimObject
   {
      
      public function Gate(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         this.pointA = new Point(0,0);
         _loc4_;
         this.pointB = new Point(0,0);
         _loc5_;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this.§_-Mv§(param1,param2,param3);
      }
      
      public var pointA:Point;
      
      public var pointB:Point;
      
      public var life:int = 3;
      
      public var gateType:int;
      
      public var placing:Boolean = false;
      
      public var angle:Number = 0;
      
      public function §_-Mv§(param1:int, param2:int, param3:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         iX = x = param1;
         _loc6_;
         _loc6_;
         iY = y = param2;
         _loc7_;
         iR = param3;
         var _loc4_:Number = SafeGlobal.§_-yl§(param3 * SafeGlobal.degsToRads);
         rotation = param3;
         _loc7_;
         this.pointA.x = SafeGlobal.§_-yl§(param1 + 50 * Math.cos(_loc4_));
         _loc6_;
         _loc6_;
         this.pointA.y = SafeGlobal.§_-yl§(param2 + 50 * Math.sin(_loc4_));
         _loc6_;
         this.pointB.x = SafeGlobal.§_-yl§(param1 + -50 * Math.cos(_loc4_));
         this.pointB.y = SafeGlobal.§_-yl§(param2 + -50 * Math.sin(_loc4_));
         this.angle = _loc4_;
      }
      
      public function loseLife() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         _loc3_;
         this.life--;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.life <= 0)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.gateType == SafeGlobal.GATETYPE_SHIELD)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_SHIELDCOLLAPSE,iX,iY,rotation);
            }
            else if(this.gateType == SafeGlobal.GATETYPE_DISSOLVESHIELD)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_SHIELDDISSOLVECOLLAPSE,iX,iY,rotation);
               _loc4_;
               _loc4_;
            }
            
            SafeGlobal.GAME.removeGate(this);
         }
      }
      
      public function changeColour(param1:int) : *
      {
      }
   }
}
