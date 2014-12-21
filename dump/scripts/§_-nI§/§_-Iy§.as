package §_-nI§
{
   public class §_-Iy§ extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-Iy§(param1:§_-J7§, param2:String, param3:uint, param4:uint, param5:Array, param6:Array)
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc7_:uint = 0;
         var _loc8_:§_-au§ = null;
         var _loc9_:§_-b7§ = null;
         super();
         this.§_-KT§ = param1;
         _loc13_;
         _loc13_;
         this.§_-Ee§ = param3;
         this._name = param2;
         _loc13_;
         this._type = param4;
         this.§_-mi§ = param5;
         this.§_-EC§ = param6;
         _loc12_;
         this.§_-av§ = new Object();
         this.§_-vL§ = new Object();
         while(true)
         {
            _loc12_;
            for each(_loc8_ in param5)
            {
               _loc13_;
               this.§_-av§[_loc8_.name] = _loc8_;
            }
            break;
         }
         _loc12_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         for each(_loc9_ in param6)
         {
            _loc13_;
            this.§_-vL§[_loc9_.name] = _loc9_;
         }
      }
      
      public static const §_-76§:uint = 0;
      
      public static const §_-WH§:uint = 1;
      
      public static const §_-bT§:uint = 2;
      
      public static const §_-X1§:uint = 3;
      
      private var §_-KT§:§_-J7§;
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var _type:uint;
      
      private var §_-mi§:Array;
      
      private var §_-EC§:Array;
      
      private var §_-av§:Object;
      
      private var §_-vL§:Object;
      
      public function get connection() : §_-J7§
      {
         return this.§_-KT§;
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
         return this.§_-Ee§;
      }
      
      public function get keys() : Array
      {
         return this.§_-mi§;
      }
      
      public function get ratings() : Array
      {
         return this.§_-EC§;
      }
      
      public function getKey(param1:String) : §_-au§
      {
         return this.§_-av§[param1];
      }
      
      public function §_-UB§(param1:String) : §_-b7§
      {
         return this.§_-vL§[param1];
      }
      
      public function §_-pF§(param1:uint) : §_-au§
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:§_-au§ = null;
         for each(_loc2_ in this.§_-av§)
         {
            _loc6_;
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
      
      public function §_-Bi§(param1:uint) : §_-b7§
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:§_-b7§ = null;
         for each(_loc2_ in this.§_-vL§)
         {
            _loc6_;
            if(_loc2_.id == param1)
            {
               _loc5_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         return "SaveGroup: " + this.name + "  Keys: " + this.§_-mi§ + "  Ratings: " + this.§_-EC§;
      }
   }
}
