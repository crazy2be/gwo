package §_-zO§
{
   import flash.geom.Point;
   
   public class SimObject extends §_-72§
   {
      
      public function SimObject()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-LQ§ = new Point(0,0);
         this.§_-vW§ = new Point(0,0);
         this.point1 = new Point(0,0);
         _loc1_;
         this.point2 = new Point(0,0);
         this.point3 = new Point(0,0);
         this.point4 = new Point(0,0);
         super();
      }
      
      public var lastSimTime:int = 0;
      
      public var startSimTime:int = 0;
      
      public var §_-qb§:int = 30000;
      
      public var §_-LQ§:Point;
      
      public var §_-vW§:Point;
      
      public var point1:Point;
      
      public var point2:Point;
      
      public var point3:Point;
      
      public var point4:Point;
      
      public var §_-yD§:String = "";
      
      public var targetLife:int;
      
      public var hidden:Boolean = false;
      
      public var iX:Number = 0;
      
      public var iY:Number = 0;
      
      public var iR:Number = 0;
      
      public var PI:Number = 3.1415926;
      
      public var §_-X7§:int = 0;
      
      public var §_-v§:int = 0;
      
      public var §_-5f§:int = 0;
      
      public var §_-w8§:int = 0;
      
      public var §_-sz§:Number = 0;
      
      public var §_-vc§:Number = 0;
      
      public var §_-ZA§:Number = 0;
      
      public var locationPlanet:int;
      
      public var locationShape:int = 0;
      
      public var locationCurve:int;
      
      public var locationAngle:Number;
      
      public var locationCurveX:Number;
      
      public var locationCurveY:Number;
      
      public var locationCurveRadius:Number;
      
      public var onJoin:Boolean = false;
      
      public var joinTargetAngle1:Number = -1;
      
      public var joinTargetAngle2:Number = -1;
      
      public var walkDir:int = 0;
      
      public var oldWalkDir:int = 0;
      
      public var facing:int = 1;
      
      public var dead:Boolean = false;
      
      public function §_-kT§(param1:int, param2:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = NaN;
         if(SafeGlobal.GAME.planets != null)
         {
            _loc5_;
            _loc5_;
            if(SafeGlobal.GAME.planets.length >= param1)
            {
               _loc5_;
               _loc5_;
               _loc3_ = this.§_-yl§(param2 * this.PI / 180);
               _loc5_;
               _loc5_;
               this.locationPlanet = param1;
               this.locationCurve = 0;
               this.locationCurveX = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].x;
               this.locationCurveY = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].y;
               _loc4_;
               this.locationCurveRadius = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].radius;
               this.locationAngle = _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               this.iX = this.§_-yl§(this.locationCurveX + this.locationCurveRadius * Math.cos(_loc3_));
               _loc4_;
               _loc5_;
               this.iY = this.§_-yl§(this.locationCurveY + this.locationCurveRadius * Math.sin(_loc3_));
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.iR = this.§_-yl§(this.§_-2T§(_loc3_ + this.PI / 2));
               x = this.iX;
               y = this.iY;
               rotation = this.iR * 180 / this.PI;
            }
         }
      }
      
      public function §_-yl§(param1:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var _loc2_:Number = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function §_-2T§(param1:Number) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 < 0)
         {
            while(param1 < 0)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               var param1:Number = param1 + this.PI * 2;
               _loc2_;
            }
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 > this.PI * 2)
            {
               _loc2_;
               while(param1 > this.PI * 2)
               {
                  _loc2_;
                  param1 = param1 - this.PI * 2;
                  _loc2_;
               }
            }
         }
         return param1;
      }
      
      public function startPoint(param1:int = -1) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = new Point(0,0);
         _loc4_;
         _loc4_;
         if(param1 == -1)
         {
            _loc3_;
            _loc2_.x = SafeGlobal.§_-yl§(this.iX + this.§_-sz§ * SafeGlobal.§_-yl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
            _loc4_;
            _loc4_;
            _loc2_.y = SafeGlobal.§_-yl§(this.iY + this.§_-sz§ * SafeGlobal.§_-yl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
            _loc4_;
         }
         else
         {
            _loc2_.x = SafeGlobal.§_-yl§(this.iX + param1 * SafeGlobal.§_-yl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
            _loc3_;
            _loc3_;
            _loc2_.y = SafeGlobal.§_-yl§(this.iY + param1 * SafeGlobal.§_-yl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         }
         return _loc2_;
      }
      
      public function §_-Fb§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Point = new Point(0,0);
         _loc3_;
         _loc1_.x = SafeGlobal.§_-yl§(this.iX + this.§_-vc§ * SafeGlobal.§_-yl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
         _loc2_;
         _loc1_.y = SafeGlobal.§_-yl§(this.iY + this.§_-vc§ * SafeGlobal.§_-yl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         return _loc1_;
      }
      
      public function topPoint() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Point = new Point(0,0);
         _loc2_;
         _loc2_;
         _loc1_.x = SafeGlobal.§_-yl§(this.iX + this.§_-ZA§ * SafeGlobal.§_-yl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
         _loc3_;
         _loc3_;
         _loc1_.y = SafeGlobal.§_-yl§(this.iY + this.§_-ZA§ * SafeGlobal.§_-yl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         return _loc1_;
      }
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         alpha = 1;
         _loc1_;
         this.hidden = false;
      }
      
      public function hideMe(param1:Boolean = false) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         alpha = 0;
         _loc3_;
         _loc3_;
         this.hidden = true;
      }
      
      public function updatePoints() : *
      {
      }
      
      public function §_-Ri§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-LQ§.x = this.iX + this.§_-w8§ * Math.cos(this.iR - SafeGlobal.PI / 2);
         _loc2_;
         this.§_-LQ§.y = this.iY + this.§_-w8§ * Math.sin(this.iR - SafeGlobal.PI / 2);
         this.§_-vW§.x = this.iX + (this.§_-X7§ - this.§_-w8§) * -1 * Math.cos(this.iR - SafeGlobal.PI / 2);
         _loc1_;
         _loc1_;
         this.§_-vW§.y = this.iY + (this.§_-X7§ - this.§_-w8§) * -1 * Math.sin(this.iR - SafeGlobal.PI / 2);
         this.point1.x = SafeGlobal.§_-yl§(this.§_-vW§.x + this.§_-5f§ * Math.cos(this.iR));
         this.point1.y = SafeGlobal.§_-yl§(this.§_-vW§.y + this.§_-5f§ * Math.sin(this.iR));
         this.point2.x = SafeGlobal.§_-yl§(this.§_-LQ§.x + this.§_-5f§ * Math.cos(this.iR));
         this.point2.y = SafeGlobal.§_-yl§(this.§_-LQ§.y + this.§_-5f§ * Math.sin(this.iR));
         _loc1_;
         _loc1_;
         this.point3.x = SafeGlobal.§_-yl§(this.§_-LQ§.x + (this.§_-v§ + this.§_-5f§) * Math.cos(this.iR));
         _loc1_;
         _loc1_;
         this.point3.y = SafeGlobal.§_-yl§(this.§_-LQ§.y + (this.§_-v§ + this.§_-5f§) * Math.sin(this.iR));
         _loc1_;
         _loc1_;
         this.point4.x = SafeGlobal.§_-yl§(this.§_-vW§.x + (this.§_-v§ + this.§_-5f§) * Math.cos(this.iR));
         _loc1_;
         this.point4.y = SafeGlobal.§_-yl§(this.§_-vW§.y + (this.§_-v§ + this.§_-5f§) * Math.sin(this.iR));
      }
   }
}
