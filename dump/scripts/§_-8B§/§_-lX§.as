package §_-8B§
{
   public class §_-lX§ extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
      }
      
      public function §_-lX§(param1:§_-Io§, param2:String, param3:uint, param4:uint, param5:Array, param6:Array)
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc7_:uint = 0;
         var _loc8_:§_-lW§ = null;
         var _loc9_:§_-yV§ = null;
         super();
         this.§_-tv§ = param1;
         _loc13_;
         _loc13_;
         this.§_-C7§ = param3;
         _loc12_;
         _loc12_;
         this._name = param2;
         this._type = param4;
         this.§_-jn§ = param5;
         this.§_-DE§ = param6;
         this.§_-qy§ = new Object();
         this.§_-9X§ = new Object();
         while(true)
         {
            _loc12_;
            _loc12_;
            for each(_loc8_ in param5)
            {
               _loc13_;
               _loc13_;
               this.§_-qy§[_loc8_.name] = _loc8_;
            }
            break;
         }
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         for each(_loc9_ in param6)
         {
            _loc12_;
            _loc12_;
            this.§_-9X§[_loc9_.name] = _loc9_;
         }
      }
      
      public static const §_-gk§:uint = 0;
      
      public static const §_-cW§:uint = 1;
      
      public static const §_-xG§:uint = 2;
      
      public static const §_-qB§:uint = 3;
      
      private var §_-tv§:§_-Io§;
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var _type:uint;
      
      private var §_-jn§:Array;
      
      private var §_-DE§:Array;
      
      private var §_-qy§:Object;
      
      private var §_-9X§:Object;
      
      public function get connection() : §_-Io§
      {
         return this.§_-tv§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get id() : uint
      {
         return this.§_-C7§;
      }
      
      public function get keys() : Array
      {
         return this.§_-jn§;
      }
      
      public function get ratings() : Array
      {
         return this.§_-DE§;
      }
      
      public function getKey(param1:String) : §_-lW§
      {
         return this.§_-qy§[param1];
      }
      
      public function §_-TX§(param1:String) : §_-yV§
      {
         return this.§_-9X§[param1];
      }
      
      public function §_-k-§(param1:uint) : §_-lW§
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:§_-lW§ = null;
         for each(_loc2_ in this.§_-qy§)
         {
            _loc5_;
            if(_loc2_.id == param1)
            {
               _loc5_;
               _loc5_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §_-Zc§(param1:uint) : §_-yV§
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:§_-yV§ = null;
         for each(_loc2_ in this.§_-9X§)
         {
            _loc6_;
            if(_loc2_.id == param1)
            {
               _loc5_;
               _loc5_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         return "SaveGroup: " + this.name + "  Keys: " + this.§_-jn§ + "  Ratings: " + this.§_-DE§;
      }
   }
}
