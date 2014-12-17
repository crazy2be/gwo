package §_-Ug§
{
   import flash.utils.Dictionary;
   
   public class §_-Y-§ extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
      }
      
      public function §_-Y-§(param1:String)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         super();
         _loc4_;
         if(param1)
         {
            _loc4_;
            this._hash = param1;
         }
         else
         {
            this._hash = §_-2O§;
         }
         this.§_-6n§ = this._hash.length;
         this.§_-Sq§ = new Dictionary();
         var _loc2_:uint = 0;
         while(_loc2_ < this._hash.length)
         {
            this.§_-Sq§[this._hash.charAt(_loc2_)] = _loc2_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_++;
            _loc3_;
         }
      }
      
      private static const §_-2O§:String = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~@#$%^&*()+|;/";
      
      private var _hash:String;
      
      private var §_-6n§:uint;
      
      private var §_-Sq§:Dictionary;
      
      public function §_-Z2§(param1:uint, param2:uint = 1) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = "";
         _loc6_;
         _loc6_;
         var _loc4_:uint = param1;
         while(_loc4_ != 0)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc3_ = this._hash.charAt(_loc4_ % this.§_-6n§) + _loc3_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc4_ = _loc4_ / this.§_-6n§;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         while(true)
         {
            _loc6_;
            if(_loc3_.length >= param2)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc5_;
            _loc3_ = this._hash.charAt(0) + _loc3_;
            _loc6_;
         }
         return _loc3_;
      }
      
      public function §_-g0§(param1:String) : uint
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_ * this.§_-6n§;
            _loc5_;
            _loc4_;
            _loc2_ = _loc2_ + this.§_-Sq§[param1.charAt(_loc3_)];
            _loc5_;
            _loc5_;
            _loc3_++;
            _loc4_;
         }
         return _loc2_;
      }
   }
}
