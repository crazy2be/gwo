package §_-zO§
{
   public class Camera extends Object
   {
      
      public function Camera()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-i9§ = new Array();
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-Vx§:Number = 0;
      
      public var §_-He§:Number = 0;
      
      public var §_-JB§:Number = -1;
      
      public var §_-Uv§:Number = -1;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var §_-i9§:Array;
      
      public function §_-l8§(param1:Boolean = false) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc4_;
         var _loc2_:Number = this.§_-Vx§ - this.x;
         _loc5_;
         _loc5_;
         var _loc3_:Number = this.§_-He§ - this.y;
         _loc4_;
         this.§_-JB§ = this.x;
         _loc5_;
         _loc5_;
         this.§_-Uv§ = this.y;
         _loc4_;
         if(!param1)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            this.x = SafeGlobal.§_-yl§(this.x + _loc2_ / 4);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            this.y = SafeGlobal.§_-yl§(this.y + _loc3_ / 4);
         }
         else
         {
            this.x = this.§_-Vx§;
            this.y = this.§_-He§;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.§_-JB§ == this.x && this.§_-Uv§ == this.y)
         {
            _loc4_;
            _loc4_;
            return false;
         }
         return true;
      }
      
      public function addTarget(param1:SimObject, param2:int = -1, param3:String = "") : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc7_;
         if(param1 is Unit)
         {
         }
         var _loc4_:* = false;
         var _loc5_:* = 0;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc5_ >= this.§_-i9§.length)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.§_-i9§[_loc5_] == param1)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_ = true;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc6_;
               if(this.§_-i9§[_loc5_].targetLife > -1 && param2 > this.§_-i9§[_loc5_].targetLife)
               {
                  _loc7_;
                  this.§_-i9§[_loc5_].targetLife = param2;
               }
            }
            _loc5_++;
         }
         _loc6_;
         _loc7_;
         _loc7_;
         if(!_loc4_)
         {
            param1.§_-yD§ = param3;
            if(param1 is Projectile)
            {
               if(Projectile(param1).unit)
               {
                  param1.§_-yD§ = param1.§_-yD§ + " unit";
                  _loc6_;
               }
               else if(Projectile(param1).mine)
               {
                  _loc7_;
                  _loc7_;
                  param1.§_-yD§ = param1.§_-yD§ + " mine";
               }
               else if(Projectile(param1).damage)
               {
                  param1.§_-yD§ = param1.§_-yD§ + " damage";
               }
               
               
            }
            _loc7_;
            this.§_-i9§.push(param1);
            _loc7_;
            this.§_-i9§[this.§_-i9§.length - 1].targetLife = param2;
         }
      }
      
      public function §_-zM§() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.§_-i9§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.§_-i9§[_loc1_].targetLife > 0)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-i9§[_loc1_].targetLife--;
               _loc4_;
               _loc4_;
            }
            if(this.§_-i9§[_loc1_].targetLife == 0)
            {
               _loc4_;
               this.removeTarget(this.§_-i9§[_loc1_]);
               _loc4_;
            }
            _loc5_;
            _loc4_;
            _loc1_--;
            _loc4_;
         }
      }
      
      public function traceTargets() : *
      {
      }
      
      public function removeTarget(param1:SimObject) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.§_-i9§.indexOf(param1);
         _loc4_;
         if(_loc2_ != -1)
         {
            _loc3_;
            this.§_-i9§.splice(_loc2_,1);
         }
      }
      
      public function emptyList() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.traceTargets();
         _loc2_;
         _loc2_;
         this.§_-i9§ = [];
      }
   }
}
