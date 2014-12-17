package §_-8B§
{
   public class §_-yV§ extends Object
   {
      
      public function §_-yV§(param1:String, param2:uint, param3:Boolean, param4:Number, param5:Number)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         super();
         _loc6_;
         _loc6_;
         this._name = param1;
         _loc6_;
         _loc6_;
         this.§_-C7§ = param2;
         this.§_-zs§ = param3;
         _loc6_;
         this._minimum = param4;
         _loc6_;
         _loc6_;
         this.§_-lg§ = param5;
      }
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var §_-zs§:Boolean;
      
      private var _minimum:Number;
      
      private var §_-lg§:Number;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this.§_-C7§;
      }
      
      public function get §_-hC§() : Boolean
      {
         return this.§_-zs§;
      }
      
      public function get §_-SD§() : Number
      {
         return this._minimum;
      }
      
      public function get §_-Vo§() : Number
      {
         return this.§_-lg§;
      }
      
      public function §_-d7§(param1:*) : Number
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:Number = Number(param1);
         if(isNaN(_loc2_))
         {
            _loc5_;
            _loc4_;
            §_-tz§.logError("Invalid value for rating \"" + this._name + "\".");
            return NaN;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(_loc2_ < this._minimum)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            §_-tz§.§_-pg§(_loc2_ + " is out of acceptable range for rating \"" + this._name + "\". Clamping to " + this._minimum + ".");
            _loc5_;
            return this._minimum;
         }
         _loc4_;
         _loc4_;
         if(_loc2_ > this.§_-lg§)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            §_-tz§.§_-pg§(_loc2_ + " is out of acceptable range for rating \"" + this._name + "\". Clamping to " + this.§_-lg§ + ".");
            _loc5_;
            return this.§_-lg§;
         }
         if(!this.§_-hC§)
         {
            _loc5_;
            _loc5_;
            _loc3_ = int(_loc2_);
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(_loc3_ != _loc2_)
            {
               _loc4_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               §_-tz§.§_-pg§("Float value " + _loc2_ + " given for integer rating \"" + this._name + "\". Clamping to " + _loc3_ + ".");
               _loc5_;
            }
            return _loc3_;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         return this._name;
      }
   }
}
