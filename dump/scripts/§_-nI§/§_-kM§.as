package §_-nI§
{
   import flash.events.EventDispatcher;
   import flash.display.Sprite;
   import flash.events.Event;
   
   class §_-kM§ extends EventDispatcher
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
      }
      
      function §_-kM§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public static function get §_-tx§() : EventDispatcher
      {
         return §_-Kt§;
      }
      
      public static function set §_-tx§(param1:EventDispatcher) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-Kt§ = param1;
      }
      
      private static var §_-Kt§:EventDispatcher;
      
      private static var §_-zp§:Array = §_-SY§();
      
      private static function §_-SY§() : Array
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         §_-yf§ = new Sprite();
         _loc1_;
         §_-yf§.addEventListener(Event.ENTER_FRAME,§_-EK§);
         return [];
      }
      
      private static function §_-EK§(param1:*) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         var _loc2_:uint = §_-zp§.length;
         _loc6_;
         if(_loc2_)
         {
            _loc3_ = §_-zp§;
            _loc6_;
            §_-zp§ = [];
            _loc7_;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.dispatcher.actualDispatchEvent(_loc5_.event);
               _loc6_;
               _loc6_;
               _loc6_;
               _loc4_++;
            }
         }
      }
      
      private static var §_-yf§:Sprite;
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-zp§.push({
            "dispatcher":this,
            "event":param1
         });
         return true;
      }
      
      private function actualDispatchEvent(param1:Event) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = super.dispatchEvent(param1);
         _loc4_;
         _loc3_;
         _loc3_;
         if((§_-Kt§) && !(this == §_-Kt§))
         {
            _loc3_;
            §_-Kt§.dispatchEvent(param1);
         }
      }
   }
}
