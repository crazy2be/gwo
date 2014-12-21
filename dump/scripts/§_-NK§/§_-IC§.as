package §_-NK§
{
   public class §_-IC§ extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
      }
      
      public function §_-IC§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      public static function §_-qf§(param1:int, param2:int) : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function §_-8T§(param1:int, param2:int) : uint
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var _loc3_:int = 32 - param2;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         return param1 << _loc3_ | param1 >>> 32 - _loc3_;
      }
      
      private static var hexChars:String = "0123456789abcdef";
      
      public static function §_-r8§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         _loc6_;
         _loc6_;
         if(param2)
         {
            _loc7_;
            _loc7_;
            _loc4_ = 0;
            while(true)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc4_ >= 4)
               {
                  break;
               }
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc3_ = _loc3_ + (hexChars.charAt(param1 >> (3 - _loc4_) * 8 + 4 & 15) + hexChars.charAt(param1 >> (3 - _loc4_) * 8 & 15));
               _loc7_;
               _loc7_;
               _loc4_++;
               _loc6_;
               _loc6_;
            }
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            _loc6_;
            while(_loc5_ < 4)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc3_ = _loc3_ + (hexChars.charAt(param1 >> _loc5_ * 8 + 4 & 15) + hexChars.charAt(param1 >> _loc5_ * 8 & 15));
               _loc5_++;
            }
         }
         return _loc3_;
      }
   }
}
