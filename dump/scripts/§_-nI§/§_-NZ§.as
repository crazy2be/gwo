package §_-nI§
{
   import flash.events.EventDispatcher;
   
   public class §_-NZ§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-NZ§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      static const §_-eV§:uint = 0;
      
      public static const §_-2§:uint = 1;
      
      public static const §_-63§:uint = 2;
      
      public static const §_-IR§:uint = 3;
      
      public static const §_-gC§:uint = 4;
      
      private static const §_-bW§:String = "[Newgrounds API] :: ";
      
      private static var _eventDispatcher:EventDispatcher = new EventDispatcher();
      
      private static var §_-5j§:uint = §_-2§;
      
      private static var §_-wS§:uint = §_-gC§;
      
      static function §_-8z§(... rest) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         log(§_-eV§,rest);
      }
      
      public static function §_-Bv§(... rest) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         log(§_-2§,rest);
      }
      
      public static function §_-Q7§(... rest) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         log(§_-63§,rest);
      }
      
      public static function logError(... rest) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         log(§_-IR§,rest);
      }
      
      private static function log(param1:uint = 1, param2:Array = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = 0;
         _loc5_;
         _loc5_;
         _loc4_;
         if(param1 >= §_-5j§)
         {
            _loc5_;
            _loc3_ = 0;
            while(true)
            {
               _loc4_;
               if(_loc3_ >= param2.length)
               {
                  break;
               }
               trace(§_-bW§ + param2[_loc3_]);
               _loc5_;
               _loc5_;
               _eventDispatcher.dispatchEvent(new §_-6O§(§_-6O§.§_-09§,param2[_loc3_]));
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc3_++;
               _loc5_;
            }
            _loc4_;
            _loc4_;
         }
         if(param1 >= §_-wS§)
         {
            _loc5_;
            _loc5_;
            throw new Error(param2.join("\n"));
         }
         else
         {
            return;
         }
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _eventDispatcher.addEventListener(param1,param2,false,0,false);
      }
   }
}
