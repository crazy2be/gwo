package §_-JH§
{
   import flash.geom.Point;
   
   public class SimObject extends §_-Ju§
   {
      
      public function SimObject()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-8V§ = new Point(0,0);
         this.§_-JS§ = new Point(0,0);
         _loc1_;
         this.point1 = new Point(0,0);
         this.point2 = new Point(0,0);
         _loc2_;
         this.point3 = new Point(0,0);
         this.point4 = new Point(0,0);
         _loc1_;
         super();
      }
      
      public var lastSimTime:int = 0;
      
      public var startSimTime:int = 0;
      
      public var §_-CZ§:int = 30000;
      
      public var §_-8V§:Point;
      
      public var §_-JS§:Point;
      
      public var point1:Point;
      
      public var point2:Point;
      
      public var point3:Point;
      
      public var point4:Point;
      
      public var §_-Bf§:String = "";
      
      public var targetLife:int;
      
      public var hidden:Boolean = false;
      
      public var iX:Number = 0;
      
      public var iY:Number = 0;
      
      public var iR:Number = 0;
      
      public var PI:Number = 3.1415926;
      
      public var §_-RN§:int = 0;
      
      public var §_-mN§:int = 0;
      
      public var §_-Uv§:int = 0;
      
      public var §_-NJ§:int = 0;
      
      public var §_-fX§:Number = 0;
      
      public var §_-cp§:Number = 0;
      
      public var §_-77§:Number = 0;
      
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
      
      public function §_-zq§(param1:int, param2:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = NaN;
         _loc5_;
         if(SafeGlobal.GAME.planets != null)
         {
            if(SafeGlobal.GAME.planets.length >= param1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc3_ = this.§_-cl§(param2 * this.PI / 180);
               this.locationPlanet = param1;
               _loc4_;
               _loc4_;
               this.locationCurve = 0;
               _loc5_;
               this.locationCurveX = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].x;
               _loc4_;
               _loc4_;
               this.locationCurveY = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].y;
               _loc5_;
               this.locationCurveRadius = SafeGlobal.GAME.planets[param1].shapes[0].curves[this.locationCurve].radius;
               _loc5_;
               this.locationAngle = _loc3_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.iX = this.§_-cl§(this.locationCurveX + this.locationCurveRadius * Math.cos(_loc3_));
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.iY = this.§_-cl§(this.locationCurveY + this.locationCurveRadius * Math.sin(_loc3_));
               _loc5_;
               _loc4_;
               this.iR = this.§_-cl§(this.§_-HM§(_loc3_ + this.PI / 2));
               x = this.iX;
               y = this.iY;
               _loc5_;
               rotation = this.iR * 180 / this.PI;
            }
         }
      }
      
      public function §_-cl§(param1:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         var _loc2_:Number = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function §_-HM§(param1:Number) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1 < 0)
         {
            while(true)
            {
               _loc3_;
               _loc3_;
               if(param1 >= 0)
               {
                  break;
               }
               _loc2_;
               var param1:Number = param1 + this.PI * 2;
               _loc3_;
            }
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 > this.PI * 2)
            {
               _loc2_;
               while(param1 > this.PI * 2)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  param1 = param1 - this.PI * 2;
                  _loc3_;
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
            _loc4_;
            _loc2_.x = SafeGlobal.§_-cl§(this.iX + this.§_-fX§ * SafeGlobal.§_-cl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
            _loc3_;
            _loc2_.y = SafeGlobal.§_-cl§(this.iY + this.§_-fX§ * SafeGlobal.§_-cl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
            _loc4_;
         }
         else
         {
            _loc2_.x = SafeGlobal.§_-cl§(this.iX + param1 * SafeGlobal.§_-cl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
            _loc4_;
            _loc2_.y = SafeGlobal.§_-cl§(this.iY + param1 * SafeGlobal.§_-cl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         }
         return _loc2_;
      }
      
      public function §_-ea§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Point = new Point(0,0);
         _loc2_;
         _loc2_;
         _loc1_.x = SafeGlobal.§_-cl§(this.iX + this.§_-cp§ * SafeGlobal.§_-cl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
         _loc2_;
         _loc1_.y = SafeGlobal.§_-cl§(this.iY + this.§_-cp§ * SafeGlobal.§_-cl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         return _loc1_;
      }
      
      public function topPoint() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Point = new Point(0,0);
         _loc3_;
         _loc1_.x = SafeGlobal.§_-cl§(this.iX + this.§_-77§ * SafeGlobal.§_-cl§(Math.cos(this.iR - SafeGlobal.PI / 2)));
         _loc3_;
         _loc3_;
         _loc1_.y = SafeGlobal.§_-cl§(this.iY + this.§_-77§ * SafeGlobal.§_-cl§(Math.sin(this.iR - SafeGlobal.PI / 2)));
         return _loc1_;
      }
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         alpha = 1;
         _loc2_;
         this.hidden = false;
      }
      
      public function hideMe(param1:Boolean = false) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         alpha = 0;
         _loc2_;
         _loc2_;
         this.hidden = true;
      }
      
      public function updatePoints() : *
      {
      }
      
      public function §_-LJ§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-8V§.x = this.iX + this.§_-NJ§ * Math.cos(this.iR - SafeGlobal.PI / 2);
         this.§_-8V§.y = this.iY + this.§_-NJ§ * Math.sin(this.iR - SafeGlobal.PI / 2);
         this.§_-JS§.x = this.iX + (this.§_-RN§ - this.§_-NJ§) * -1 * Math.cos(this.iR - SafeGlobal.PI / 2);
         this.§_-JS§.y = this.iY + (this.§_-RN§ - this.§_-NJ§) * -1 * Math.sin(this.iR - SafeGlobal.PI / 2);
         this.point1.x = SafeGlobal.§_-cl§(this.§_-JS§.x + this.§_-Uv§ * Math.cos(this.iR));
         this.point1.y = SafeGlobal.§_-cl§(this.§_-JS§.y + this.§_-Uv§ * Math.sin(this.iR));
         _loc1_;
         _loc1_;
         this.point2.x = SafeGlobal.§_-cl§(this.§_-8V§.x + this.§_-Uv§ * Math.cos(this.iR));
         this.point2.y = SafeGlobal.§_-cl§(this.§_-8V§.y + this.§_-Uv§ * Math.sin(this.iR));
         this.point3.x = SafeGlobal.§_-cl§(this.§_-8V§.x + (this.§_-mN§ + this.§_-Uv§) * Math.cos(this.iR));
         this.point3.y = SafeGlobal.§_-cl§(this.§_-8V§.y + (this.§_-mN§ + this.§_-Uv§) * Math.sin(this.iR));
         _loc1_;
         this.point4.x = SafeGlobal.§_-cl§(this.§_-JS§.x + (this.§_-mN§ + this.§_-Uv§) * Math.cos(this.iR));
         _loc1_;
         this.point4.y = SafeGlobal.§_-cl§(this.§_-JS§.y + (this.§_-mN§ + this.§_-Uv§) * Math.sin(this.iR));
      }
   }
}
