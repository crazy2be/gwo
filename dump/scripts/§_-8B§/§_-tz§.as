package §_-8B§
{
   import flash.events.EventDispatcher;
   
   public class §_-tz§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-tz§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      static const §_-P6§:uint = 0;
      
      public static const §_-fv§:uint = 1;
      
      public static const §_-JQ§:uint = 2;
      
      public static const §_-0J§:uint = 3;
      
      public static const §_-D4§:uint = 4;
      
      private static const §_-WB§:String = "[Newgrounds API] :: ";
      
      private static var _eventDispatcher:EventDispatcher = new EventDispatcher();
      
      private static var §_-pD§:uint = §_-fv§;
      
      private static var §_-V3§:uint = §_-D4§;
      
      static function §_-B2§(... rest) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         log(§_-P6§,rest);
      }
      
      public static function §_-Lq§(... rest) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         log(§_-fv§,rest);
      }
      
      public static function §_-pg§(... rest) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         log(§_-JQ§,rest);
      }
      
      public static function logError(... rest) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         log(§_-0J§,rest);
      }
      
      private static function log(param1:uint = 1, param2:Array = null) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = 0;
         _loc4_;
         _loc4_;
         _loc5_;
         if(param1 >= §_-pD§)
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
               trace(§_-WB§ + param2[_loc3_]);
               _loc4_;
               _loc4_;
               _eventDispatcher.dispatchEvent(new §_-E6§(§_-E6§.§_-Sa§,param2[_loc3_]));
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_++;
               _loc5_;
               _loc5_;
            }
            _loc4_;
         }
         if(param1 >= §_-V3§)
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
