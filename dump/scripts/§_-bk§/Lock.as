package §_-bk§
{
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.MovieClip;
   
   public class Lock extends Sprite
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
      }
      
      public function Lock()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private static var url:String;
      
      public static const GWO_URL:Array = ["http://www.graviteewarsonline.com/","http://graviteewarsonline.com/","http://beta.graviteewarsonline.com/"];
      
      public static const FUNKYPEAR_URL:Array = ["http://www.funkypear.com/","http://funkypear.com/"];
      
      public static const KONG_URL:Array = ["http://www.kongregate.com/","http://kongregate.com/","https://www.kongregate.com/","https://kongregate.com/","http://chat.kongregate.com/","https://chat.kongregate.com/"];
      
      public static const PLAYERIO_URL:Array = ["http://cdn.playerio.com/"];
      
      public static const YAHOO_URL:Array = ["http://cdn.yahoo.com/"];
      
      public static const §_-Jt§:Array = ["http://uploads.ungrounded.net/","http://www.newgrounds.com/"];
      
      public static function §_-5w§(param1:Stage) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         url = SafeGlobal.TIMELINE.timeline.loaderInfo.url;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(§_-56§(GWO_URL) == true || §_-56§(FUNKYPEAR_URL) == true || §_-56§(KONG_URL) == true || §_-56§(PLAYERIO_URL) == true || §_-56§(YAHOO_URL) == true || §_-56§(§_-Jt§) == true)
         {
            _loc2_;
         }
         else
         {
            param1.addChild(new Lock());
         }
      }
      
      public static function §_-56§(... rest) : Boolean
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         _loc6_;
         _loc6_;
         if(rest.length == 0)
         {
            rest.push(GWO_URL);
         }
         var _loc2_:* = 0;
         while(_loc2_ < rest.length)
         {
            _loc3_ = rest[_loc2_];
            _loc7_;
            _loc7_;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc6_;
               if(§_-ru§(_loc5_))
               {
                  _loc6_;
                  _loc6_;
                  return true;
               }
               _loc4_++;
            }
            _loc6_;
            _loc2_++;
         }
         return false;
      }
      
      private static function §_-ru§(param1:String) : Boolean
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc6_:String = null;
         var _loc10_:* = NaN;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc2_:* = "http://";
         var _loc3_:* = "https://";
         _loc13_;
         var _loc4_:String = url.substr(0,_loc2_.length);
         _loc13_;
         _loc13_;
         var _loc5_:String = url.substr(0,_loc3_.length);
         _loc14_;
         _loc14_;
         _loc13_;
         _loc13_;
         if(!(_loc4_ == _loc2_) && !(_loc5_ == _loc3_))
         {
            _loc14_;
            _loc14_;
            return false;
         }
         if(_loc4_ == _loc2_)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc6_ = url.substr(_loc2_.length);
            _loc13_;
            _loc14_;
            _loc14_;
            var param1:String = param1.substr(_loc2_.length);
         }
         else if(_loc5_ == _loc3_)
         {
            _loc13_;
            _loc6_ = url.substr(_loc3_.length);
            _loc13_;
            _loc13_;
            _loc13_;
            param1 = param1.substr(_loc3_.length);
         }
         else
         {
            return false;
         }
         
         while(true)
         {
            _loc14_;
            _loc14_;
            if(_loc6_.charAt(0) != "/")
            {
               break;
            }
            _loc13_;
            _loc13_;
            _loc13_;
            _loc6_ = _loc6_.substr(1);
            _loc13_;
            _loc13_;
         }
         _loc14_;
         _loc14_;
         while(param1.charAt(0) == "/")
         {
            _loc13_;
            _loc13_;
            param1 = param1.substr(1);
            _loc14_;
            _loc14_;
         }
         var _loc7_:Array = _loc6_.split("/");
         var _loc8_:Array = param1.split("/");
         var _loc9_:Number = 0;
         while(_loc9_ < _loc8_.length)
         {
            if(_loc8_[_loc9_].length >= 1)
            {
               _loc13_;
               _loc10_ = _loc8_[_loc9_].indexOf("*");
               _loc14_;
               if(_loc10_ != -1)
               {
                  _loc14_;
                  _loc14_;
                  _loc11_ = _loc8_[_loc9_].substr(0,_loc10_);
                  _loc13_;
                  _loc12_ = _loc8_[_loc9_].substr(_loc10_ + 1);
                  if(_loc7_[_loc9_].substr(0,_loc11_.length) != _loc11_)
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     return false;
                  }
                  if(_loc7_[_loc9_].substr(-_loc12_.length) != _loc12_)
                  {
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     return false;
                  }
               }
               else if(_loc8_[_loc9_] != _loc7_[_loc9_])
               {
                  _loc13_;
                  return false;
               }
               
            }
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc9_++;
         }
         return true;
      }
      
      public var logo_button:MovieClip;
   }
}
