package §_-8B§
{
   import flash.events.EventDispatcher;
   import flash.display.Sprite;
   import flash.events.Event;
   
   class §_-Et§ extends EventDispatcher
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
      }
      
      function §_-Et§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      public static function get §_-L9§() : EventDispatcher
      {
         return §_-4r§;
      }
      
      public static function set §_-L9§(param1:EventDispatcher) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-4r§ = param1;
      }
      
      private static var §_-4r§:EventDispatcher;
      
      private static var §_-Tk§:Array = §_-pu§();
      
      private static function §_-pu§() : Array
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-Bx§ = new Sprite();
         _loc2_;
         §_-Bx§.addEventListener(Event.ENTER_FRAME,§_-km§);
         return [];
      }
      
      private static function §_-km§(param1:*) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         var _loc2_:uint = §_-Tk§.length;
         _loc6_;
         _loc6_;
         if(_loc2_)
         {
            _loc3_ = §_-Tk§;
            _loc6_;
            _loc6_;
            §_-Tk§ = [];
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.dispatcher.actualDispatchEvent(_loc5_.event);
               _loc6_;
               _loc6_;
               _loc4_++;
            }
         }
      }
      
      private static var §_-Bx§:Sprite;
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-Tk§.push({
            "dispatcher":this,
            "event":param1
         });
         return true;
      }
      
      private function actualDispatchEvent(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = super.dispatchEvent(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if((§_-4r§) && !(this == §_-4r§))
         {
            _loc4_;
            _loc4_;
            §_-4r§.dispatchEvent(param1);
         }
      }
   }
}
