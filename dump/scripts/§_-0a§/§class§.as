package §_-0a§
{
   public class §class§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
      }
      
      public function §class§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private static var §_-6P§:Array = new Array(255);
      
      private static var §_-Ac§:Array = new Array(255);
      
      public static function §_-dE§(param1:String, param2:String) : String
      {
         var _loc3_:Array = §_-4G§(param1);
         var _loc4_:Array = §_-4G§(param2);
         var _loc5_:Array = §_-uG§(_loc3_,_loc4_);
         return §_-sw§(_loc5_);
      }
      
      public static function § else§(param1:String, param2:String) : Array
      {
         var _loc3_:Array = §_-4G§(param1);
         var _loc4_:Array = §_-4G§(param2);
         var _loc5_:Array = §_-uG§(_loc3_,_loc4_);
         return _loc5_;
      }
      
      public static function §_-At§(param1:String, param2:String) : String
      {
         var _loc3_:Array = §_-bM§(param1);
         var _loc4_:Array = §_-4G§(param2);
         var _loc5_:Array = §_-uG§(_loc3_,_loc4_);
         return §_-MR§(_loc5_);
      }
      
      private static function §_-Op§(param1:Array) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:uint = 0;
         var _loc2_:uint = 0;
         var _loc4_:uint = param1.length;
         var _loc5_:uint = 0;
         while(true)
         {
            _loc7_;
            if(_loc5_ > 255)
            {
               break;
            }
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            §_-Ac§[_loc5_] = param1[_loc5_ % _loc4_];
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            §_-6P§[_loc5_] = _loc5_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc5_++;
         }
         _loc7_;
         _loc5_ = 0;
         _loc6_;
         _loc6_;
         while(_loc5_ <= 255)
         {
            _loc6_;
            _loc6_;
            _loc7_;
            _loc2_ = (_loc2_ + §_-6P§[_loc5_] + §_-Ac§[_loc5_]) % 256;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = §_-6P§[_loc5_];
            _loc6_;
            _loc6_;
            _loc6_;
            §_-6P§[_loc5_] = §_-6P§[_loc2_];
            _loc7_;
            _loc7_;
            §_-6P§[_loc2_] = _loc3_;
            _loc5_++;
         }
      }
      
      private static function §_-uG§(param1:Array, param2:Array) : Array
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc10_:uint = 0;
         _loc12_;
         §_-Op§(param2);
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Array = new Array();
         var _loc9_:uint = 0;
         while(_loc9_ < param1.length)
         {
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = (_loc3_ + 1) % 256;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = (_loc4_ + §_-6P§[_loc3_]) % 256;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc7_ = §_-6P§[_loc3_];
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            §_-6P§[_loc3_] = §_-6P§[_loc4_];
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            §_-6P§[_loc4_] = _loc7_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_ = (§_-6P§[_loc3_] + §_-6P§[_loc4_]) % 256;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc6_ = §_-6P§[_loc10_];
            _loc12_;
            _loc12_;
            _loc8_ = param1[_loc9_] ^ _loc6_;
            _loc12_;
            _loc5_.push(_loc8_);
            _loc9_++;
            _loc12_;
         }
         return _loc5_;
      }
      
      private static function §_-sw§(param1:Array) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = new String("");
         var _loc3_:Array = new Array("0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f");
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_;
            _loc6_;
            _loc2_ = _loc2_ + (_loc3_[param1[_loc4_] >> 4] + _loc3_[param1[_loc4_] & 15]);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_++;
            _loc5_;
            _loc5_;
         }
         return _loc2_;
      }
      
      private static function §_-bM§(param1:String) : Array
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function §_-MR§(param1:Array) : String
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = new String("");
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_;
            _loc4_;
            _loc2_ = _loc2_ + String.fromCharCode(param1[_loc3_]);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_++;
            _loc4_;
         }
         return _loc2_;
      }
      
      private static function §_-4G§(param1:String) : Array
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = new Array();
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(param1.charCodeAt(_loc3_));
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
   }
}
