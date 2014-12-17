package §_-8B§
{
   import flash.utils.getTimer;
   import §_-Ug§.§_-Y-§;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import §_-0a§.MD5;
   import §_-0a§.§class§;
   import §_-jM§.§_-4K§;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Endian;
   
   public class §_-K4§ extends §_-Et§
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-K4§(param1:String)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.§_-0-T§ = param1;
         _loc3_;
         this.§_-1R§ = new Object();
         this.§_-0k§ = new Object();
         this.§_-vJ§ = new Timer(§_-CB§,1);
         _loc2_;
         this.§_-vJ§.addEventListener(TimerEvent.TIMER,this.§_-Wk§);
         _loc2_;
         _loc2_;
         this.§_-q4§ = true;
      }
      
      public static function §_-dz§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:§_-K4§ = null;
         for each(_loc1_ in §_-J6§)
         {
            _loc5_;
            _loc1_.close();
         }
         _loc4_;
         §_-J6§ = [];
      }
      
      public static var §_-Z7§:Bridge;
      
      private static const §_-CB§:uint = 10000;
      
      private static const §_-Sm§:uint = 10050;
      
      private static const THROTTLE_TICK_INTERVAL:uint = 1000;
      
      private static const §_-Dx§:uint = 24;
      
      private static var §_-er§:uint;
      
      private static var §_-6d§:int = 0;
      
      private static var §_-eq§:Array = [];
      
      private static function onThrottleTimer(param1:*) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         _loc6_;
         if(getTimer() - §_-er§ >= §_-Sm§)
         {
            _loc5_;
            _loc5_;
            §_-6d§ = 0;
            _loc6_;
            §_-6d§ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               if(!((§_-eq§.length) && §_-6d§ < §_-Dx§))
               {
                  break;
               }
               _loc5_;
               _loc2_ = §_-eq§.shift();
               _loc6_;
               _loc2_.command.send(_loc2_.connection);
               _loc5_;
               _loc5_;
               _loc5_;
               §_-6d§++;
            }
         }
      }
      
      private static const §_-TJ§:String = "/g8236klvBQ#&|;Zb*7CEA59%s`Oue1wziFp$rDVY@TKxUPWytSaGHJ>dmoMR^<0~4qNLhc(I+fjn)X";
      
      private static var §_-8D§:§_-Y-§ = new §_-Y-§(§_-TJ§);
      
      private static function §_-iy§(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:uint = param1.length % 6;
         var _loc3_:* = "";
         var _loc4_:uint = 0;
         while(true)
         {
            _loc5_;
            if(_loc4_ >= param1.length)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc3_ = _loc3_ + §_-8D§.§_-Z2§(uint("0x" + param1.substr(_loc4_,6)),4);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc4_ = _loc4_ + 6;
            _loc5_;
            _loc5_;
         }
         return _loc2_.toString() + _loc3_;
      }
      
      private static var §_-J6§:Array = [];
      
      private static const §_-gL§:String = "\r\n";
      
      private static var §_-RH§:Timer = function():Timer
      {
         var _loc1_:* = new Timer(THROTTLE_TICK_INTERVAL,0);
         _loc1_.addEventListener(TimerEvent.TIMER,onThrottleTimer);
         _loc1_.start();
         return _loc1_;
      }();
      
      private var §_-0-T§:String;
      
      private var §_-1R§:Object;
      
      private var §_-0k§:Object;
      
      private var §_-co§:Object;
      
      private var §_-tm§:Boolean;
      
      private var §_-q4§:Boolean;
      
      public function get command() : String
      {
         return this.§_-0-T§;
      }
      
      public function set command(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-0-T§ = param1;
      }
      
      public function get §_-sI§() : Boolean
      {
         return this.§_-q4§;
      }
      
      public function set §_-sI§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-q4§ = param1;
      }
      
      public function get parameters() : Object
      {
         return this.§_-1R§;
      }
      
      public function set parameters(param1:Object) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         _loc6_;
         this.§_-1R§ = new Object();
         _loc6_;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               _loc6_;
               _loc6_;
               this.§_-1R§[_loc2_] = param1[_loc2_];
            }
         }
      }
      
      public function get §_-N2§() : Boolean
      {
         return this.§_-tm§;
      }
      
      public function set §_-N2§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-tm§ = param1;
      }
      
      public function get §_-Va§() : Object
      {
         return this.§_-0k§;
      }
      
      public function set §_-Va§(param1:Object) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         _loc6_;
         this.§_-0k§ = new Object();
         _loc5_;
         _loc5_;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               _loc6_;
               _loc6_;
               this.§_-0k§[_loc2_] = param1[_loc2_];
            }
         }
      }
      
      public function get §_-07§() : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         for(_loc1_ in this.§_-0k§)
         {
            _loc5_;
            return true;
         }
         return false;
      }
      
      public function §_-kn§(param1:String, param2:ByteArray, param3:String, param4:String = "application/octet-stream") : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc7_;
         if(!this.§_-co§)
         {
            _loc7_;
            _loc7_;
            this.§_-co§ = new Object();
         }
         var _loc5_:Object = {
            "filename":param1,
            "data":param2,
            "dataField":param3,
            "contentType":param4
         };
         _loc7_;
         this.§_-co§[param1] = _loc5_;
      }
      
      public function §_-Ns§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-co§)
         {
            _loc3_;
            delete this.§_-co§[param1];
            true;
         }
      }
      
      public function §_-2l§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-co§ = null;
      }
      
      public function close() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = 0;
         _loc3_;
         if(this._loader)
         {
            try
            {
               this._loader.close();
               _loc4_;
               _loc4_;
            }
            catch(error:Error)
            {
            }
            this.§_-vJ§.stop();
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = 0;
            while(true)
            {
               if(_loc1_ >= §_-J6§.length)
               {
                  _loc3_;
                  _loc3_;
                  break;
               }
               _loc4_;
               _loc3_;
               if(§_-J6§[_loc1_] == this)
               {
                  §_-J6§.splice(_loc1_,1);
                  _loc3_;
                  _loc3_;
                  break;
               }
               _loc3_;
               _loc3_;
               _loc1_++;
            }
            this._loader = null;
         }
      }
      
      public function §_-mV§(param1:§_-Io§, param2:Boolean) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         _loc9_;
         _loc9_;
         this.§_-1R§.command_id = this.§_-0-T§;
         _loc8_;
         _loc8_;
         this.§_-1R§.tracker_id = param1.§_-XR§?param1.§_-XR§:1;
         _loc9_;
         _loc9_;
         if(param1.debug)
         {
            _loc9_;
            _loc9_;
            this.§_-1R§.debug = 1;
         }
         _loc8_;
         _loc9_;
         _loc9_;
         var _loc3_:String = param1.§_-k4§ + "?host=" + escape(param1.§_-CY§);
         while(this.§_-1R§ hasNext _loc6_)
         {
            _loc9_;
            _loc9_;
            _loc4_ = nextName(_loc6_,_loc7_);
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc3_ = _loc3_ + ("&" + escape(_loc4_) + "=" + escape(this.§_-1R§[_loc4_]));
         }
         _loc8_;
         _loc8_;
         if(param2)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc5_ = "_blank";
            _loc8_;
         }
         else
         {
            _loc5_ = "_top";
            _loc9_;
            _loc9_;
         }
         navigateToURL(new URLRequest(_loc3_),_loc5_);
      }
      
      public function send(param1:§_-Io§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(§_-6d§ >= §_-Dx§)
         {
            _loc3_;
            §_-eq§.push({
               "connection":param1,
               "command":this
            });
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-S0§(param1);
         }
      }
      
      private function §_-S0§(param1:§_-Io§) : void
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
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
         _loc2_.command_id = this.§_-0-T§;
         _loc2_.tracker_id = param1.§_-XR§;
         _loc15_;
         if(param1.debug)
         {
            _loc15_;
            _loc15_;
            _loc2_.debug = 1;
         }
         if(this.§_-tm§)
         {
            _loc15_;
            _loc15_;
            _loc2_.seed = Math.random();
         }
         while(true)
         {
            _loc14_;
            _loc14_;
            for(_loc3_ in this.§_-1R§)
            {
               _loc4_ = this.§_-1R§[_loc3_];
               if(_loc4_ != null)
               {
                  _loc15_;
                  if(_loc4_ is Boolean)
                  {
                     _loc14_;
                     _loc14_;
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
         _loc15_;
         if(this.§_-07§)
         {
            _loc7_ = new Object();
            _loc14_;
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            for(_loc3_ in this.§_-0k§)
            {
               _loc4_ = this.§_-0k§[_loc3_];
               if(_loc4_ != null)
               {
                  _loc14_;
                  _loc14_;
                  if(_loc4_ is Boolean)
                  {
                     _loc15_;
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
            _loc8_ = "";
            _loc15_;
            _loc5_ = 0;
            while(_loc5_ < 16)
            {
               _loc15_;
               _loc14_;
               _loc8_ = _loc8_ + §_-TJ§.charAt(uint(Math.random() * §_-TJ§.length));
               _loc14_;
               _loc14_;
               _loc15_;
               _loc15_;
               _loc5_++;
               _loc15_;
               _loc15_;
            }
            _loc15_;
            _loc15_;
            _loc2_.command_id = "securePacket";
            _loc7_.command_id = this.§_-0-T§;
            _loc14_;
            _loc14_;
            _loc7_.as_version = 3;
            _loc7_.session_id = param1.sessionId;
            _loc7_.user_email = param1.§_-fq§;
            _loc14_;
            _loc14_;
            _loc7_.publisher_id = param1.§_-eV§;
            _loc15_;
            _loc15_;
            _loc7_.seed = _loc8_;
            _loc14_;
            _loc14_;
            _loc9_ = MD5.hash(_loc8_);
            _loc14_;
            _loc14_;
            _loc10_ = §class§.§_-dE§(§_-4K§.§_-hz§(_loc7_),param1.§_-jH§);
            _loc2_.secure = §_-iy§(_loc9_ + _loc10_);
         }
         §_-tz§.§_-B2§("Sending packet:",_loc2_);
         _loc15_;
         if(this.§_-co§)
         {
            _loc14_;
            _loc14_;
            _loc11_ = "";
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc5_ = 0;
            while(_loc5_ < 32)
            {
               _loc14_;
               _loc11_ = _loc11_ + String.fromCharCode(uint(97 + Math.random() * 25));
               _loc15_;
               _loc14_;
               _loc14_;
               _loc15_;
               _loc5_++;
               _loc14_;
            }
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            _loc15_;
            _loc6_ = "multipart/form-data; boundary=\"" + _loc11_ + "\"";
            _loc14_;
            _loc14_;
            _loc2_ = this.§_-jq§(_loc11_,_loc2_,this.§_-co§);
            _loc14_;
            _loc14_;
         }
         else
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            for(_loc3_ in _loc2_)
            {
               _loc14_;
               if(typeof _loc2_[_loc3_] == "object")
               {
                  _loc14_;
                  _loc14_;
                  _loc2_[_loc3_] = §_-4K§.§_-hz§(_loc2_[_loc3_]);
               }
            }
            _loc14_;
            _loc6_ = "application/x-www-form-urlencoded";
         }
         §_-J6§.push(this);
         _loc15_;
         _loc15_;
         _loc15_;
         _loc14_;
         _loc14_;
         §_-6d§++;
         _loc15_;
         _loc15_;
         §_-er§ = getTimer();
         _loc14_;
         _loc14_;
         this.§_-Dd§(param1.§_-k4§,_loc2_,_loc6_);
      }
      
      private function §_-Wk§(param1:*) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.close();
         _loc2_;
         _loc2_;
         §_-tz§.logError("Command timed out.");
         _loc2_;
         dispatchEvent(new §_-E6§(§_-E6§.§_-tI§,null,§_-E6§.§_-S6§));
      }
      
      private function §_-0K§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-tz§.logError("Error when sending command:",param1);
         _loc2_;
         _loc2_;
         dispatchEvent(new §_-E6§(§_-E6§.§_-tI§,null,§_-E6§.§_-2x§));
         _loc3_;
         _loc3_;
         this.close();
      }
      
      private function onComplete(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var response:Object = null;
         _loc5_;
         _loc5_;
         var data:String = param1;
         _loc4_;
         §_-tz§.§_-B2§("Received packet:",data);
         try
         {
            _loc5_;
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
               _loc5_;
               response = §_-4K§.decode(data);
               if(!response)
               {
                  throw new Error();
               }
               else
               {
                  dispatchEvent(new §_-E6§(§_-E6§.§_-tI§,response,(response) && (response.success)?§_-E6§.§_-fJ§:§_-E6§.§_-84§));
                  _loc4_;
                  if(§_-Z7§)
                  {
                     §_-Z7§.sendEvent(response.command_id,response);
                     _loc5_;
                  }
               }
            }
         }
         catch(e:*)
         {
            if(_loc5_)
            {
               if(_loc4_ && (param1))
               {
               }
               §_-tz§.logError("Invalid response returned from server: ");
               if(_loc5_ || (param1))
               {
                  dispatchEvent(new §_-E6§(§_-E6§.§_-tI§,null,§_-E6§.§_-Ll§));
               }
            }
         }
         this.close();
      }
      
      private var §_-vJ§:Timer;
      
      private var _loader:URLLoader;
      
      private function §_-Dd§(param1:String, param2:Object, param3:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc6_;
         _loc7_;
         var url:String = param1;
         _loc7_;
         _loc6_;
         _loc6_;
         var data:Object = param2;
         _loc6_;
         _loc6_;
         var contentType:String = param3;
         var urlRequest:URLRequest = new URLRequest(url);
         _loc7_;
         urlRequest.data = data;
         _loc7_;
         _loc7_;
         urlRequest.method = URLRequestMethod.POST;
         _loc6_;
         _loc6_;
         urlRequest.contentType = contentType;
         this._loader = new URLLoader();
         this._loader.addEventListener(Event.COMPLETE,this.as3CompleteHandler);
         _loc6_;
         this._loader.addEventListener(Event.OPEN,this.as3UpdateHandler);
         _loc6_;
         _loc6_;
         this._loader.addEventListener(ProgressEvent.PROGRESS,this.as3UpdateHandler);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.as3ErrorHandler);
         _loc7_;
         this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.as3ErrorHandler);
         try
         {
            this._loader.load(urlRequest);
            _loc7_;
            _loc7_;
            if(this.§_-q4§)
            {
               _loc6_;
               this.§_-vJ§.start();
            }
         }
         catch(error:*)
         {
            §_-0K§(error.toString());
         }
      }
      
      private function as3CompleteHandler(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.onComplete(this._loader.data);
      }
      
      private function as3UpdateHandler(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.§_-vJ§.running)
         {
            _loc2_;
            _loc2_;
            this.§_-vJ§.reset();
            _loc3_;
            this.§_-vJ§.start();
         }
      }
      
      private function as3ErrorHandler(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-0K§(param1.toString());
      }
      
      private function §_-jq§(param1:String, param2:Object, param3:Object) : ByteArray
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.endian = Endian.BIG_ENDIAN;
         _loc9_;
         _loc9_;
         _loc9_;
         var param1:String = "--" + param1;
         while(true)
         {
            _loc10_;
            _loc10_;
            for(_loc5_ in param2)
            {
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes(param1 + §_-gL§);
               _loc10_;
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"" + _loc5_ + "\"" + §_-gL§);
               _loc9_;
               _loc9_;
               _loc4_.writeUTFBytes(§_-gL§);
               _loc9_;
               _loc4_.writeUTFBytes(param2[_loc5_].toString() + §_-gL§);
            }
            break;
         }
         _loc10_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         if(this.§_-co§)
         {
            _loc9_;
            _loc10_;
            _loc10_;
            for each(_loc6_ in param3)
            {
               _loc10_;
               _loc10_;
               _loc4_.writeUTFBytes(param1 + §_-gL§);
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"Filename\"" + §_-gL§);
               _loc4_.writeUTFBytes(§_-gL§);
               _loc4_.writeUTFBytes(_loc6_.filename + §_-gL§);
               _loc10_;
               _loc4_.writeUTFBytes(param1 + §_-gL§);
               _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"" + _loc6_.dataField + "\"; filename=\"" + _loc6_.filename + "\"" + §_-gL§);
               _loc9_;
               _loc4_.writeUTFBytes("Content-Type: " + _loc6_.contentType + §_-gL§);
               _loc4_.writeUTFBytes(§_-gL§);
               _loc10_;
               _loc4_.writeBytes(_loc6_.data);
               _loc4_.writeUTFBytes(§_-gL§);
            }
            _loc10_;
            _loc10_;
            _loc4_.writeUTFBytes(param1 + §_-gL§);
            _loc4_.writeUTFBytes("Content-Disposition: form-data; name=\"Upload\"" + §_-gL§);
            _loc4_.writeUTFBytes(§_-gL§);
            _loc4_.writeUTFBytes("Submit Query" + §_-gL§);
         }
         _loc4_.writeUTFBytes(param1 + "--");
         _loc4_.position = 0;
         return _loc4_;
      }
   }
}
