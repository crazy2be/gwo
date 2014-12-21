package §_-nI§
{
   public class §_-b7§ extends Object
   {
      
      public function §_-b7§(param1:String, param2:uint, param3:Boolean, param4:Number, param5:Number)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc7_;
         super();
         this._name = param1;
         _loc7_;
         this.§_-Ee§ = param2;
         this.§_-BQ§ = param3;
         _loc7_;
         this._minimum = param4;
         this.§_-LA§ = param5;
      }
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var §_-BQ§:Boolean;
      
      private var _minimum:Number;
      
      private var §_-LA§:Number;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this.§_-Ee§;
      }
      
      public function get §_-o7§() : Boolean
      {
         return this.§_-BQ§;
      }
      
      public function get §_-Ym§() : Number
      {
         return this._minimum;
      }
      
      public function get §_-ZK§() : Number
      {
         return this.§_-LA§;
      }
      
      public function §_-M5§(param1:*) : Number
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:Number = Number(param1);
         if(isNaN(_loc2_))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            §_-NZ§.logError("Invalid value for rating \"" + this._name + "\".");
            _loc5_;
            return NaN;
         }
         _loc4_;
         _loc5_;
         if(_loc2_ < this._minimum)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            §_-NZ§.§_-Q7§(_loc2_ + " is out of acceptable range for rating \"" + this._name + "\". Clamping to " + this._minimum + ".");
            _loc4_;
            _loc4_;
            return this._minimum;
         }
         _loc4_;
         if(_loc2_ > this.§_-LA§)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            §_-NZ§.§_-Q7§(_loc2_ + " is out of acceptable range for rating \"" + this._name + "\". Clamping to " + this.§_-LA§ + ".");
            _loc5_;
            _loc5_;
            return this.§_-LA§;
         }
         if(!this.§_-o7§)
         {
            _loc5_;
            _loc5_;
            _loc3_ = int(_loc2_);
            _loc5_;
            _loc5_;
            if(_loc3_ != _loc2_)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               §_-NZ§.§_-Q7§("Float value " + _loc2_ + " given for integer rating \"" + this._name + "\". Clamping to " + _loc3_ + ".");
               _loc5_;
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
