package bridge.utils
{
   import flash.system.Capabilities;
   
   public class Utilities extends Object
   {
      
      public function Utilities()
      {
         super();
      }
      
      public static function getSystemInfo() : Object
      {
         var _loc1_:Array = ["cpuArchitecture","isDebugger","language","manufacturer","os","pixelAspectRatio","playerType","screenDPI","screenResolutionX","screenResolutionY","touchscreenType","version"];
         var _loc2_:Object = {};
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            if(Capabilities[_loc1_[_loc3_]])
            {
               _loc2_[_loc1_[_loc3_]] = Capabilities[_loc1_[_loc3_]].toString();
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function getSystemInfoString() : String
      {
         var _loc3_:String = null;
         var _loc1_:Object = getSystemInfo();
         var _loc2_:Array = [];
         for(_loc3_ in _loc1_)
         {
            _loc2_.push(_loc3_ + ":" + _loc1_[_loc3_]);
         }
         return _loc2_.join("@|@");
      }
      
      public static var clientAPI:String = "as3";
   }
}
