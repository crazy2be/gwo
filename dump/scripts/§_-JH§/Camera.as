package §_-JH§
{
   public class Camera extends Object
   {
      
      public function Camera()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-YF§ = new Array();
         _loc1_;
         super();
      }
      
      public var §_-lJ§:Number = 0;
      
      public var §_-Cu§:Number = 0;
      
      public var §_-gh§:Number = -1;
      
      public var §_-uE§:Number = -1;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var §_-YF§:Array;
      
      public function §_-o2§(param1:Boolean = false) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc5_;
         var _loc2_:Number = this.§_-lJ§ - this.x;
         _loc5_;
         _loc5_;
         _loc4_;
         var _loc3_:Number = this.§_-Cu§ - this.y;
         this.§_-gh§ = this.x;
         this.§_-uE§ = this.y;
         _loc4_;
         _loc4_;
         if(!param1)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.x = SafeGlobal.§_-cl§(this.x + _loc2_ / 4);
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.y = SafeGlobal.§_-cl§(this.y + _loc3_ / 4);
            _loc4_;
         }
         else
         {
            this.x = this.§_-lJ§;
            this.y = this.§_-Cu§;
         }
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-gh§ == this.x && this.§_-uE§ == this.y)
         {
            _loc4_;
            _loc4_;
            return false;
         }
         return true;
      }
      
      public function addTarget(param1:SimObject, param2:int = -1, param3:String = "") : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc6_;
         if(param1 is Unit)
         {
         }
         var _loc4_:* = false;
         var _loc5_:* = 0;
         while(true)
         {
            _loc6_;
            if(_loc5_ >= this.§_-YF§.length)
            {
               break;
            }
            _loc6_;
            _loc7_;
            if(this.§_-YF§[_loc5_] == param1)
            {
               _loc6_;
               _loc7_;
               _loc7_;
               _loc4_ = true;
               _loc7_;
               _loc6_;
               _loc7_;
               if(this.§_-YF§[_loc5_].targetLife > -1 && param2 > this.§_-YF§[_loc5_].targetLife)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.§_-YF§[_loc5_].targetLife = param2;
                  _loc6_;
               }
            }
            _loc5_++;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         if(!_loc4_)
         {
            param1.§_-Bf§ = param3;
            if(param1 is Projectile)
            {
               if(Projectile(param1).unit)
               {
                  param1.§_-Bf§ = param1.§_-Bf§ + " unit";
                  _loc7_;
               }
               else if(Projectile(param1).mine)
               {
                  param1.§_-Bf§ = param1.§_-Bf§ + " mine";
                  _loc7_;
                  _loc7_;
               }
               else if(Projectile(param1).damage)
               {
                  _loc6_;
                  _loc6_;
                  param1.§_-Bf§ = param1.§_-Bf§ + " damage";
                  _loc7_;
                  _loc7_;
               }
               
               
            }
            _loc6_;
            _loc6_;
            this.§_-YF§.push(param1);
            this.§_-YF§[this.§_-YF§.length - 1].targetLife = param2;
         }
      }
      
      public function §_-kW§() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.§_-YF§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.§_-YF§[_loc1_].targetLife > 0)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-YF§[_loc1_].targetLife--;
               _loc5_;
               _loc5_;
            }
            if(this.§_-YF§[_loc1_].targetLife == 0)
            {
               _loc5_;
               _loc5_;
               this.removeTarget(this.§_-YF§[_loc1_]);
               _loc4_;
            }
            _loc4_;
            _loc4_;
            _loc1_--;
            _loc5_;
         }
      }
      
      public function traceTargets() : *
      {
      }
      
      public function removeTarget(param1:SimObject) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.§_-YF§.indexOf(param1);
         _loc3_;
         _loc3_;
         if(_loc2_ != -1)
         {
            _loc4_;
            _loc4_;
            this.§_-YF§.splice(_loc2_,1);
         }
      }
      
      public function emptyList() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.traceTargets();
         _loc2_;
         this.§_-YF§ = [];
      }
   }
}
