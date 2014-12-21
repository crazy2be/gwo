package §_-RO§
{
   import flash.utils.Dictionary;
   
   public class §_-XM§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
      }
      
      public function §_-XM§(param1:String)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         _loc3_;
         _loc3_;
         if(param1)
         {
            this._hash = param1;
            _loc3_;
         }
         else
         {
            this._hash = §_-zd§;
         }
         this.§_-n9§ = this._hash.length;
         _loc3_;
         this.§_-FX§ = new Dictionary();
         var _loc2_:uint = 0;
         while(_loc2_ < this._hash.length)
         {
            this.§_-FX§[this._hash.charAt(_loc2_)] = _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      private static const §_-zd§:String = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~@#$%^&*()+|;/";
      
      private var _hash:String;
      
      private var §_-n9§:uint;
      
      private var §_-FX§:Dictionary;
      
      public function §_-On§(param1:uint, param2:uint = 1) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = "";
         _loc6_;
         var _loc4_:uint = param1;
         while(_loc4_ != 0)
         {
            _loc6_;
            _loc6_;
            _loc3_ = this._hash.charAt(_loc4_ % this.§_-n9§) + _loc3_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_ = _loc4_ / this.§_-n9§;
            _loc6_;
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
            _loc5_;
            _loc5_;
            _loc3_ = this._hash.charAt(0) + _loc3_;
            _loc6_;
         }
         return _loc3_;
      }
      
      public function §_-FN§(param1:String) : uint
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc3_ >= param1.length)
            {
               break;
            }
            _loc5_;
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ * this.§_-n9§;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_ + this.§_-FX§[param1.charAt(_loc3_)];
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
   }
}
