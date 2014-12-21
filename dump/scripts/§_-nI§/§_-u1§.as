package §_-nI§
{
   import flash.utils.getTimer;
   import §_-RO§.§_-XM§;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import §_-QU§.MD5;
   import §_-QU§.§_-yv§;
   import §_-k-§.§_-Ge§;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Endian;
   
   public class §_-u1§ extends §_-kM§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-u1§(param1:String)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.§_-IP§ = param1;
         this.§_-jr§ = new Object();
         _loc3_;
         _loc3_;
         this.§_-z9§ = new Object();
         this.§_-yQ§ = new Timer(§_-p8§,1);
         this.§_-yQ§.addEventListener(TimerEvent.TIMER,this.§_-Wi§);
         this.§_-QF§ = true;
      }
      
      public static function §_-b6§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:§_-u1§ = null;
         for each(_loc1_ in §_-e8§)
         {
            _loc5_;
            _loc1_.close();
         }
         _loc5_;
         _loc5_;
         §_-e8§ = [];
      }
      
      public static var §_-Dp§:Bridge;
      
      private static const §_-p8§:uint = 10000;
      
      private static const §_-Jm§:uint = 10050;
      
      private static const THROTTLE_TICK_INTERVAL:uint = 1000;
      
      private static const §_-7H§:uint = 24;
      
      private static var §_-t2§:uint;
      
      private static var §_-mB§:int = 0;
      
      private static var §_-AN§:Array = [];
      
      private static function onThrottleTimer(param1:*) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         _loc6_;
         if(getTimer() - §_-t2§ >= §_-Jm§)
         {
            _loc6_;
            _loc6_;
            §_-mB§ = 0;
            _loc5_;
            §_-mB§ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               if(!((§_-AN§.length) && §_-mB§ < §_-7H§))
               {
                  break;
               }
               _loc5_;
               _loc2_ = §_-AN§.shift();
               _loc6_;
               _loc6_;
               _loc2_.command.send(_loc2_.connection);
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc6_;
               §_-mB§++;
            }
         }
      }
      
      private static const §_-Ez§:String = "/g8236klvBQ#&|;Zb*7CEA59%s`Oue1wziFp$rDVY@TKxUPWytSaGHJ>dmoMR^<0~4qNLhc(I+fjn)X";
      
      private static var §_-AY§:§_-XM§ = new §_-XM§(§_-Ez§);
      
      private static function §_-m7§(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:uint = param1.length % 6;
         var _loc3_:* = "";
         var _loc4_:uint = 0;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc4_ >= param1.length)
            {
               break;
            }
            _loc5_;
            _loc3_ = _loc3_ + §_-AY§.§_-On§(uint("0x" + param1.substr(_loc4_,6)),4);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc4_ + 6;
            _loc6_;
            _loc6_;
         }
         return _loc2_.toString() + _loc3_;
      }
      
      private static var §_-e8§:Array = [];
      
      private static const §_-iE§:String = "\r\n";
      
      private static var §_-b9§:Timer = function():Timer
      {
         var _loc1_:* = new Timer(THROTTLE_TICK_INTERVAL,0);
         _loc1_.addEventListener(TimerEvent.TIMER,onThrottleTimer);
         _loc1_.start();
         return _loc1_;
      }();
      
      private var §_-IP§:String;
      
      private var §_-jr§:Object;
      
      private var §_-z9§:Object;
      
      private var §const§:Object;
      
      private var §_-Gp§:Boolean;
      
      private var §_-QF§:Boolean;
      
      public function get command() : String
      {
         return this.§_-IP§;
      }
      
      public function set command(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-IP§ = param1;
      }
      
      public function get §_-z3§() : Boolean
      {
         return this.§_-QF§;
      }
      
      public function set §_-z3§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-QF§ = param1;
      }
      
      public function get parameters() : Object
      {
         return this.§_-jr§;
      }
      
      public function set parameters(param1:Object) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         _loc5_;
         this.§_-jr§ = new Object();
         _loc5_;
         _loc5_;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               _loc5_;
               this.§_-jr§[_loc2_] = param1[_loc2_];
            }
         }
      }
      
      public function get §_-an§() : Boolean
      {
         return this.§_-Gp§;
      }
      
      public function set §_-an§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Gp§ = param1;
      }
      
      public function get §_-ap§() : Object
      {
         return this.§_-z9§;
      }
      
      public function set §_-ap§(param1:Object) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         _loc6_;
         _loc6_;
         this.§_-z9§ = new Object();
         _loc5_;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               _loc6_;
               this.§_-z9§[_loc2_] = param1[_loc2_];
            }
         }
      }
      
      public function get §_-YY§() : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         for(_loc1_ in this.§_-z9§)
         {
            _loc5_;
            return true;
         }
         return false;
      }
      
      public function §_-6h§(param1:String, param2:ByteArray, param3:String, param4:String = "application/octet-stream") : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         if(!this.§const§)
         {
            _loc7_;
            this.§const§ = new Object();
         }
         var _loc5_:Object = {
            "filename":param1,
            "data":param2,
            "dataField":param3,
            "contentType":param4
         };
         _loc6_;
         _loc6_;
         this.§const§[param1] = _loc5_;
      }
      
      public function §_-WP§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.§const§)
         {
            _loc3_;
            delete this.§const§[param1];
            true;
         }
      }
      
      public function §_-I§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§const§ = null;
      }
      
      public function close() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = 0;
         _loc3_;
         _loc3_;
         if(this._loader)
         {
            try
            {
               this._loader.close();
            }
            catch(error:Error)
            {
            }
            this.§_-yQ§.stop();
            _loc3_;
            _loc1_ = 0;
            while(_loc1_ < §_-e8§.length)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               if(§_-e8§[_loc1_] == this)
               {
                  _loc4_;
                  _loc4_;
                  §_-e8§.splice(_loc1_,1);
                  break;
               }
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc1_++;
            }
            this._loader = null;
         }
      }
      
      public function §_-ZD§(param1:§_-J7§, param2:Boolean) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         _loc9_;
         _loc9_;
         this.§_-jr§.command_id = this.§_-IP§;
         _loc8_;
         this.§_-jr§.tracker_id = param1.§_-rp§?param1.§_-rp§:1;
         _loc9_;
         _loc9_;
         if(param1.debug)
         {
            _loc9_;
            _loc9_;
            this.§_-jr§.debug = 1;
         }
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         var _loc3_:String = param1.§_-uv§ + "?host=" + escape(param1.§_-Q9§);
         while(this.§_-jr§ hasNext _loc6_)
         {
            _loc9_;
            _loc4_ = nextName(_loc6_,_loc7_);
            _loc8_;
            _loc8_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc3_ = _loc3_ + ("&" + escape(_loc4_) + "=" + escape(this.§_-jr§[_loc4_]));
         }
         _loc8_;
         if(param2)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc5_ = "_blank";
            _loc9_;
         }
         else
         {
            _loc5_ = "_top";
            _loc8_;
         }
         navigateToURL(new URLRequest(_loc3_),_loc5_);
      }
      
      public function send(param1:§_-J7§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(§_-mB§ >= §_-7H§)
         {
            _loc2_;
            §_-AN§.push({
               "connection":param1,
               "command":this
            });
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Zs§(param1);
         }
      }
      
      private function §_-Zs§(param1:§_-J7§) : void
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         _loc2_ = new URLVariables();
         _loc2_.command_id = this.§_-IP§;
         _loc2_.tracker_id = param1.§_-rp§;
         _loc15_;
         if(param1.debug)
         {
            _loc2_.debug = 1;
         }
         if(this.§_-Gp§)
         {
            _loc14_;
            _loc14_;
            _loc2_.seed = Math.random();
         }
         while(true)
         {
            _loc14_;
            for(_loc3_ in this.§_-jr§)
            {
               _loc4_ = this.§_-jr§[_loc3_];
               if(_loc4_ != null)
               {
                  _loc14_;
                  _loc14_;
                  if(_loc4_ is Boolean)
                  {
                     _loc15_;
                     _loc15_;
                     _loc2_[_loc3_] = int(_loc4_);
                     _loc14_;
                     _loc14_;
                  }
                  else
                  {
                     _loc2_[_loc3_] = _loc4_;
                  }
               }
            }
            break;
         }
         _loc14_;
         _loc14_;
         _loc15_;
         if(this.§_-YY§)
         {
            _loc7_ = new Object();
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            for(_loc3_ in this.§_-z9§)
            {
               _loc4_ = this.§_-z9§[_loc3_];
               if(_loc4_ != null)
               {
                  _loc14_;
                  _loc14_;
                  if(_loc4_ is Boolean)
                  {
                     _loc15_;
                     _loc7_[_loc3_] = int(_loc4_);
                     _loc15_;
                     _loc15_;
                  }
                  else
                  {
                     _loc7_[_loc3_] = _loc4_;
                  }
               }
            }
            _loc15_;
            _loc8_ = "";
            _loc14_;
            _loc14_;
            _loc5_ = 0;
            _loc14_;
            while(_loc5_ < 16)
            {
               _loc14_;
               _loc15_;
               _loc8_ = _loc8_ + §_-Ez§.charAt(uint(Math.random() * §_-Ez§.length));
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc5_++;
            }
            _loc2_.command_id = "securePacket";
            _loc7_.command_id = this.§_-IP§;
            _loc7_.as_version = 3;
            _loc15_;
            _loc7_.session_id = param1.sessionId;
            _loc7_.user_email = param1.§_-MI§;
            _loc15_;
            _loc7_.publisher_id = param1.§_-6e§;
            _loc15_;
            _loc15_;
            _loc7_.seed = _loc8_;
            _loc15_;
            _loc15_;
            _loc9_ = MD5.hash(_loc8_);
            _loc14_;
            _loc14_;
            _loc10_ = §_-yv§.§_-is§(§_-Ge§.§_-R-§(_loc7_),param1.§_-4g§);
            _loc2_.secure = §_-m7§(_loc9_ + _loc10_);
         }
         §_-NZ§.§_-8z§("Sending packet:",_loc2_);
         if(this.§const§)
         {
            _loc14_;
            _loc11_ = "";
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc5_ = 0;
            while(_loc5_ < 32)
            {
               _loc15_;
               _loc15_;
               _loc11_ = _loc11_ + String.fromCharCode(uint(97 + Math.random() * 25));
               _loc14_;
               _loc14_;
               _loc15_;
               _loc14_;
               _loc14_;
               _loc5_++;
               _loc15_;
            }
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc6_ = "multipart/form-data; boundary=\"" + _loc11_ + "\"";
            _loc2_ = this.§_-f9§(_loc11_,_loc2_,this.§const§);
            _loc14_;
            _loc14_;
         }
         else
         {
            _loc14_;
            _loc15_;
            _loc15_;
            for(_loc3_ in _loc2_)
            {
               _loc14_;
               if(typeof _loc2_[_loc3_] == "object")
               {
                  _loc14_;
                  _loc14_;
                  _loc2_[_loc3_] = §_-Ge§.§_-R-§(_loc2_[_loc3_]);
               }
            }
            _loc6_ = "application/x-www-form-urlencoded";
         }
         §_-e8§.push(this);
         _loc14_;
         _loc14_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         §_-mB§++;
         _loc14_;
         _loc14_;
         §_-t2§ = getTimer();
         _loc15_;
         this.§_-3i§(param1.§_-uv§,_loc2_,_loc6_);
      }
      
      private function §_-Wi§(param1:*) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.close();
         _loc2_;
         §_-NZ§.logError("Command timed out.");
         _loc3_;
         dispatchEvent(new §_-6O§(§_-6O§.§_-dE§,null,§_-6O§.§_-eT§));
      }
      
      private function §for §(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-NZ§.logError("Error when sending command:",param1);
         _loc2_;
         dispatchEvent(new §_-6O§(§_-6O§.§_-dE§,null,§_-6O§.§_-MF§));
         _loc2_;
         _loc2_;
         this.close();
      }
      
      private function onComplete(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var response:Object = null;
         _loc5_;
         var data:String = param1;
         _loc4_;
         §_-NZ§.§_-8z§("Received packet:",data);
         try
         {
            _loc5_;
            _loc5_;
            _loc4_;
            if(!data || data == "")
            {
               throw new Error();
            }
            else
            {
               _loc5_;
               response = §_-Ge§.decode(data);
               _loc5_;
               _loc5_;
               if(!response)
               {
                  _loc4_;
                  throw new Error();
               }
               else
               {
                  dispatchEvent(new §_-6O§(§_-6O§.§_-dE§,response,(response) && (response.success)?§_-6O§.§_-M3§:§_-6O§.§_-vY§));
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(§_-Dp§)
                  {
                     _loc5_;
                     §_-Dp§.sendEvent(response.command_id,response);
                  }
               }
            }
         }
         catch(e:*)
         {
            if(_loc5_)
            {
               if(_loc4_)
               {
               }
               §_-NZ§.logError("Invalid response returned from server: ");
               if(_loc5_ || (_loc2_))
               {
                  dispatchEvent(new §_-6O§(§_-6O§.§_-dE§,null,§_-6O§.§_-0u§));
               }
            }
         }
         this.close();
      }
      
      private var §_-yQ§:Timer;
      
      private var _loader:URLLoader;
      
      private function §_-3i§(param1:String, param2:Object, param3:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc6_;
         var url:String = param1;
         var data:Object = param2;
         _loc6_;
         _loc6_;
         var contentType:String = param3;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         var urlRequest:URLRequest = new URLRequest(url);
         _loc7_;
         _loc7_;
         urlRequest.data = data;
         urlRequest.method = URLRequestMethod.POST;
         _loc6_;
         _loc6_;
         urlRequest.contentType = contentType;
         _loc7_;
         _loc7_;
         this._loader = new URLLoader();
         this._loader.addEventListener(Event.COMPLETE,this.as3CompleteHandler);
         _loc7_;
         this._loader.addEventListener(Event.OPEN,this.as3UpdateHandler);
         _loc7_;
         this._loader.addEventListener(ProgressEvent.PROGRESS,this.as3UpdateHandler);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.as3ErrorHandler);
         this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.as3ErrorHandler);
         try
         {
            this._loader.load(urlRequest);
            _loc7_;
            if(this.§_-QF§)
            {
               _loc6_;
               _loc6_;
               this.§_-yQ§.start();
            }
         }
         catch(error:*)
         {
            §for §(error.toString());
         }
      }
      
      private function as3CompleteHandler(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.onComplete(this._loader.data);
      }
      
      private function as3UpdateHandler(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-yQ§.running)
         {
            _loc3_;
            this.§_-yQ§.reset();
            _loc3_;
            _loc3_;
            this.§_-yQ§.start();
         }
      }
      
      private function as3ErrorHandler(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§for §(param1.toString());
      }
      
      private function §_-f9§(param1:String, param2:Object, param3:Object) : ByteArray
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.endian = Endian.BIG_ENDIAN;
         _loc9_;
         _loc10_;
         _loc10_;
         var param1:String = "--" + param1;
         while(true)
         {
            _loc9_;
            for(_loc5_ in param2)
            {
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes(param1 + §_-iE§);
               _loc9_;
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"" + _loc5_ + "\"" + §_-iE§);
               _loc10_;
               _loc10_;
               _loc4_.writeUTFBytes(§_-iE§);
               _loc9_;
               _loc4_.writeUTFBytes(param2[_loc5_].toString() + §_-iE§);
            }
            break;
         }
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(this.§const§)
         {
            _loc9_;
            _loc9_;
            for each(_loc6_ in param3)
            {
               _loc10_;
               _loc10_;
               _loc4_.writeUTFBytes(param1 + §_-iE§);
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"Filename\"" + §_-iE§);
               _loc10_;
               _loc10_;
               _loc4_.writeUTFBytes(§_-iE§);
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes(_loc6_.filename + §_-iE§);
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes(param1 + §_-iE§);
               _loc10_;
               _loc10_;
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"" + _loc6_.dataField + "\"; filename=\"" + _loc6_.filename + "\"" + §_-iE§);
               _loc4_.writeUTFBytes("Content-Type: " + _loc6_.contentType + §_-iE§);
               _loc10_;
               _loc4_.writeUTFBytes(§_-iE§);
               _loc4_.writeBytes(_loc6_.data);
               _loc4_.writeUTFBytes(§_-iE§);
            }
            _loc4_.writeUTFBytes(param1 + §_-iE§);
            _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"Upload\"" + §_-iE§);
            _loc9_;
            _loc9_;
            _loc4_.writeUTFBytes(§_-iE§);
            _loc10_;
            _loc4_.writeUTFBytes("Submit Query" + §_-iE§);
            _loc10_;
         }
         _loc4_.writeUTFBytes(param1 + "--");
         _loc9_;
         _loc4_.position = 0;
         return _loc4_;
      }
   }
}
