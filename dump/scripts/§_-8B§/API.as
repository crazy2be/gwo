package §_-8B§
{
   import flash.display.DisplayObject;
   import flash.system.Security;
   import flash.events.Event;
   import §_-0a§.MD5;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.net.SharedObject;
   import §_-0a§.§class§;
   import §_-jM§.§_-4K§;
   import flash.display.LoaderInfo;
   
   public class API extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
      }
      
      public function API()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public static const RELEASE_MODE:String = "releaseMode";
      
      public static const DEBUG_MODE_LOGGED_IN:String = "debugModeLoggedIn";
      
      public static const DEBUG_MODE_LOGGED_OUT:String = "debugModeLoggedOut";
      
      public static const DEBUG_MODE_NEW_VERSION:String = "debugModeNewVersion";
      
      public static const DEBUG_MODE_HOST_BLOCKED:String = "debugModeHostBlocked";
      
      private static const §_-DZ§:String = "http://www.ngads.com/adtest.php";
      
      private static const §_-mz§:String = "https://www.newgrounds.com/login/remote/";
      
      private static var §_-4w§:Bridge;
      
      private static var §_-lp§:§_-Et§ = new §_-Et§();
      
      private static var §_-wc§:String;
      
      private static var §_-Fg§:String;
      
      private static var §_-rs§:DisplayObject;
      
      private static var §_-tv§:§_-Io§ = new §_-Io§();
      
      private static var §_-3u§:String = DEBUG_MODE_LOGGED_IN;
      
      private static var §_-a-§:Boolean;
      
      private static var §_-K9§:Date;
      
      public static function get connected() : Boolean
      {
         return §_-tv§.connected;
      }
      
      public static function get §_-ZJ§() : Boolean
      {
         return §_-tv§.§_-ZJ§;
      }
      
      public static function get §_-XR§() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-XR§;
      }
      
      public static function get debugMode() : String
      {
         return §_-3u§;
      }
      
      public static function set debugMode(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-3u§ = param1;
      }
      
      public static function get §_-eV§() : uint
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-eV§;
      }
      
      public static function get sessionId() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         §_-tv§.§_-hp§();
         return §_-tv§.sessionId;
      }
      
      public static function get §_-CY§() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-CY§;
      }
      
      public static function get §_-Rb§() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-Rb§;
      }
      
      public static function get §_-Ix§() : Boolean
      {
         return §_-tv§.§_-eV§ == 1;
      }
      
      public static function get §_-Pn§() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-Pn§;
      }
      
      public static function get username() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         §_-tv§.§_-hp§();
         return §_-tv§.username;
      }
      
      public static function get §_-0r§() : uint
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         §_-tv§.§_-hp§();
         return §_-tv§.§_-0r§;
      }
      
      private static function §_-Kd§(param1:String = null) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(§_-tv§.§_-Kd§())
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            return true;
         }
         if(param1)
         {
            _loc3_;
            dispatchEvent(param1,null,§_-E6§.§ null§);
         }
         return false;
      }
      
      public static function get §_-JF§() : Date
      {
         return §_-K9§;
      }
      
      private static var §_-wL§:Boolean = false;
      
      private static var §_-eQ§:String;
      
      private static var §_-7j§:Object = new Object();
      
      private static var §_-A2§:Array = [];
      
      private static var §_-J-§:Object = new Object();
      
      private static var §_-Gj§:Array = [];
      
      private static var §_-gl§:Object = new Object();
      
      private static var set:Array = [];
      
      private static var §_-7I§:String;
      
      private static var §_-D1§:String;
      
      private static var §_-Pt§:Object = new Object();
      
      private static var §_-pf§:uint;
      
      private static var §_-1k§:uint;
      
      public static function get §_-z3§() : Boolean
      {
         return §_-wL§;
      }
      
      public static function get §_-Jd§() : String
      {
         return §_-eQ§;
      }
      
      public static function get medals() : Array
      {
         return §_-A2§;
      }
      
      public static function get §_-3A§() : Array
      {
         return §_-Gj§;
      }
      
      public static function get §_-Cy§() : Array
      {
         return set;
      }
      
      public static function connect(param1:DisplayObject, param2:String, param3:String = null, param4:String = "") : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:uint = 0;
         _loc7_;
         §_-Et§.§_-L9§ = §_-lp§;
         Security.loadPolicyFile("http://apifiles.ngfiles.com/crossdomain.xml");
         _loc6_;
         _loc6_;
         if(§_-tv§.initialized)
         {
            _loc7_;
            §_-tz§.logError("Connection already in progress. Please call API.disconnect() before attempting another connection.");
            dispatchEvent(§_-E6§.§_-al§,false,§_-E6§.§ null§);
            _loc7_;
            _loc7_;
            return;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         var param2:String = §_-af§(param2);
         _loc7_;
         if(param3)
         {
            var param3:String = §_-af§(param3);
            _loc6_;
            _loc6_;
         }
         _loc7_;
         if(!param2 || param2 == "")
         {
            §_-tz§.logError("No apiId given. Please use the API ID from your API settings page.");
            _loc7_;
            _loc7_;
            dispatchEvent(§_-E6§.§_-al§,false,§_-E6§.§_-2z§);
            _loc7_;
            return;
         }
         _loc7_;
         _loc6_;
         _loc6_;
         §_-tz§.§_-Lq§("====== Newgrounds API v" + §_-6G§ + " ======");
         _loc7_;
         _loc7_;
         §_-tv§.§_-cj§ = §_-Io§.§_-lE§;
         _loc6_;
         §_-rs§ = param1;
         _loc6_;
         §_-Fg§ = param4;
         _loc7_;
         _loc7_;
         _loc7_;
         §_-tv§.§_-XR§ = param2;
         _loc7_;
         _loc5_ = param2.indexOf(":");
         _loc7_;
         if(_loc5_ != -1)
         {
            _loc7_;
            _loc7_;
            §_-tv§.§_-wg§ = uint(param2.substring(0,_loc5_));
         }
         else
         {
            §_-tv§.§_-wg§ = uint(param2);
            _loc6_;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         if(!§_-tv§.§_-wg§)
         {
            _loc7_;
            _loc7_;
            §_-tz§.logError("Invalid API ID: " + param2);
            dispatchEvent(§_-E6§.§_-al§,false,§_-E6§.§_-2z§);
            return;
         }
         _loc6_;
         §_-tv§.§_-jH§ = param3;
         _loc7_;
         §_-tv§.initialized = true;
         if(!§_-rs§.loaderInfo)
         {
            §_-tz§.§_-pg§("The root DisplayObject is currently not on the stage. Connection will be completed once it is added to stage.");
         }
         §_-rs§.addEventListener(Event.ENTER_FRAME,§_-g§);
         §_-g§(null);
      }
      
      private static function §_-OP§(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         if((§_-ZJ§) && !(§_-3u§ == RELEASE_MODE))
         {
            §_-tz§.§_-Lq§("Live file detected, turning off debug mode.");
            §_-3u§ = RELEASE_MODE;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if((param1) && (param1.NewgroundsAPI_SandboxID))
         {
            §_-4w§ = new Bridge(param1.NewgroundsAPI_SandboxID);
            _loc3_;
            §_-K4§.§_-Z7§ = §_-4w§;
            _loc2_;
            _loc2_;
         }
         else
         {
            §_-4w§ = new Bridge(MD5.hash(String(Math.random())));
            §_-K4§.§_-Z7§ = §_-4w§;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(§_-3u§ == RELEASE_MODE)
         {
            _loc2_;
            if(param1)
            {
               if(param1.NewgroundsAPI_UserName)
               {
                  §_-tv§.username = param1.NewgroundsAPI_UserName;
                  _loc3_;
                  _loc3_;
               }
               if(param1.NewgroundsAPI_UserID)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  §_-tv§.§_-0r§ = param1.NewgroundsAPI_UserID;
                  _loc2_;
                  _loc2_;
               }
               if(param1.NewgroundsAPI_PublisherID)
               {
                  _loc3_;
                  §_-tv§.§_-eV§ = param1.NewgroundsAPI_PublisherID;
               }
               if(param1.NewgroundsAPI_UserpageFormat)
               {
                  _loc3_;
                  §_-tv§.§_-jP§ = param1.NewgroundsAPI_UserpageFormat;
               }
               if(param1.NewgroundsAPI_SessionID)
               {
                  §_-tv§.sessionId = param1.NewgroundsAPI_SessionID;
               }
               if(param1.NewgroundsAPI_SaveGroupID)
               {
                  §_-1k§ = param1.NewgroundsAPI_SaveGroupID;
               }
               if(param1.NewgroundsAPI_SaveFileID)
               {
                  §_-pf§ = param1.NewgroundsAPI_SaveFileID;
               }
            }
         }
         else
         {
            §_-tv§.debug = true;
            _loc2_;
            _loc2_;
            _loc2_;
            if(§_-3u§ == DEBUG_MODE_LOGGED_IN || §_-3u§ == DEBUG_MODE_LOGGED_OUT)
            {
               _loc3_;
               §_-tv§.§_-eV§ = 1;
            }
            if(§_-3u§ == DEBUG_MODE_LOGGED_IN)
            {
               _loc2_;
               _loc3_;
               _loc3_;
               §_-tv§.sessionId = "D3bu64p1U53R";
               _loc3_;
               _loc2_;
               _loc2_;
               §_-tv§.§_-0r§ = 10;
               _loc3_;
               _loc3_;
               _loc3_;
               §_-tv§.username = "API-Debugger";
            }
         }
         §_-tv§.§_-lu§("connectMovie",§_-a5§,{
            "host":§_-tv§.§_-CY§,
            "movie_version":§_-Fg§,
            "publisher_id":§_-tv§.§_-eV§
         });
      }
      
      private static function §_-a5§(param1:§_-E6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = param1.data;
         if(!param1.success)
         {
            §_-tz§.logError("Unable to connect to the API.");
            §_-tv§.reset();
            dispatchEvent(§_-E6§.§_-al§,param1.data,param1.error);
            _loc5_;
            return;
         }
         if(debugMode != RELEASE_MODE)
         {
            §_-eQ§ = §_-DZ§;
         }
         else if(_loc2_.ad_url)
         {
            _loc4_;
            §_-eQ§ = unescape(_loc2_.ad_url);
         }
         
         _loc4_;
         _loc4_;
         _loc4_;
         if(-1 === _loc3_)
         {
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc4_;
            if(0 === _loc3_)
            {
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               switch(null)
               {
                  case 1:
                     §_-tz§.§_-pg§("Your movie is not approved to run Flash Ads.");
                     break;
               }
               §_-wL§ = _loc2_.ad_status == 1;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc4_;
               _loc4_;
               if(§_-3u§ == DEBUG_MODE_HOST_BLOCKED || (_loc2_.deny_host))
               {
                  _loc5_;
                  §_-tz§.§_-pg§(§_-tv§.§_-CY§ + " does not have permission to host this movie!","Update your API configuration to allow this host.");
                  _loc5_;
                  dispatchEvent(§_-E6§.§_-al§,{"officialURL":unescape(_loc2_.movie_url)},§_-E6§.§_-SK§);
                  _loc4_;
                  _loc5_;
                  §_-tv§.reset();
                  return;
               }
               _loc4_;
               _loc4_;
               §_-wc§ = _loc2_.movieName?_loc2_.movieName:"";
               _loc4_;
               _loc5_;
               §_-tz§.§_-Lq§("Connecting to the Newgrounds API Gateway...","----- " + _loc2_.movie_name + " -----");
               if(§_-3u§ == DEBUG_MODE_NEW_VERSION)
               {
                  _loc2_.movie_version = "Debug Mode";
               }
               if(_loc2_.movie_version)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  §_-tz§.§_-Lq§("A new version of this movie is available.","Current version:\t" + §_-Fg§,"Newest version:\t" + _loc2_.movie_version,"Use API.loadOfficialVersion() to link to the latest version.");
                  §_-a-§ = true;
               }
               else
               {
                  §_-a-§ = false;
                  _loc5_;
                  _loc5_;
               }
               §_-K9§ = new Date(int(_loc2_.time) * 1000);
               if(_loc2_.request_portal_url)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  §_-tv§.§_-lu§("setPortalID",null,{"portal_url":§_-tv§.§_-Rb§});
               }
               §_-tv§.§_-lu§("preloadSettings",§_-RR§,{
                  "publisher_id":§_-tv§.§_-eV§,
                  "user_id":§_-tv§.§_-0r§
               });
               return;
            }
            if(0 === _loc3_)
            {
            }
         }
         if(-1 === _loc3_)
         {
         }
      }
      
      private static function §_-RR§(param1:§_-E6§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function disconnect() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Medal = null;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(!§_-tv§.connected)
         {
            _loc5_;
            _loc5_;
            §_-tz§.§_-pg§("The Newgrounds API is already disconnected.");
            _loc5_;
            return;
         }
         §_-tv§.reset();
         for each(_loc1_ in §_-7j§)
         {
            _loc5_;
            _loc5_;
            _loc1_.removeEventListener(§_-E6§.§_-NU§,§_-Qy§);
            _loc4_;
            _loc1_.removeEventListener(§_-E6§.§_-cH§,§_-cB§);
         }
         §_-a-§ = false;
         §_-7j§ = new Object();
         §_-A2§ = [];
         §_-J-§ = new Object();
         §_-Gj§ = [];
         §_-gl§ = new Object();
         _loc5_;
         set = [];
         §_-Pt§ = new Object();
         _loc4_;
         _loc4_;
         §_-7I§ = null;
         §_-D1§ = null;
         _loc4_;
         _loc4_;
         §_-tz§.§_-Lq§("Disconnected from the Newgrounds API.");
      }
      
      public static function loadNewgrounds() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-tv§.§_-mV§("loadNewgrounds");
      }
      
      public static function loadOfficialVersion() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         if(§_-tv§.§_-hp§())
         {
            _loc2_;
            _loc2_;
            §_-tv§.§_-mV§("loadOfficialVersion",false);
         }
      }
      
      public static function §_-eE§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(§_-tv§.§_-hp§())
         {
            _loc2_;
            navigateToURL(new URLRequest(§_-mz§ + §_-4w§.§_-c9§),"_blank");
            _loc2_;
            §_-4w§.addEventListener(§_-E6§.§_-bk§,§_-Dg§,false,0,true);
         }
      }
      
      private static function §_-Dg§(param1:§_-E6§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         §_-4w§.removeEventListener(§_-E6§.§_-bk§,§_-Dg§);
         var _loc2_:Object = param1.data;
         _loc4_;
         if(param1.success)
         {
            try
            {
               if(_loc2_.NewgroundsAPI_UserName)
               {
                  _loc5_;
                  _loc5_;
                  §_-tv§.username = _loc2_.NewgroundsAPI_UserName;
               }
               if(_loc2_.NewgroundsAPI_UserID)
               {
                  _loc5_;
                  _loc5_;
                  §_-tv§.§_-0r§ = _loc2_.NewgroundsAPI_UserID;
               }
               if(_loc2_.NewgroundsAPI_PublisherID)
               {
                  _loc4_;
                  §_-tv§.§_-eV§ = _loc2_.NewgroundsAPI_PublisherID;
               }
               if(_loc2_.NewgroundsAPI_SessionID)
               {
                  _loc4_;
                  _loc4_;
                  §_-tv§.sessionId = _loc2_.NewgroundsAPI_SessionID;
               }
               §_-tv§.§_-lu§("preloadSettings",§_-RR§,{
                  "publisher_id":§_-tv§.§_-eV§,
                  "user_id":§_-tv§.§_-0r§
               });
            }
            catch(error:*)
            {
            }
            _loc5_;
            _loc5_;
            _loc4_;
            §_-tz§.§_-Lq§("User " + §_-tv§.username + " signed in.");
            _loc4_;
            _loc4_;
         }
         if(param1.success)
         {
            _loc4_;
            if(param1.success)
            {
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
            }
            if(param1.success)
            {
               dispatchEvent(§_-E6§.§_-N5§,null,null);
               return;
            }
            dispatchEvent(§_-E6§.§_-N5§,null,§_-E6§.§_-S2§);
            return;
         }
         _loc4_;
         if(param1.success)
         {
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
         }
         if(param1.success)
         {
            dispatchEvent(§_-E6§.§_-N5§,null,null);
            return;
         }
         dispatchEvent(§_-E6§.§_-N5§,null,§_-E6§.§_-S2§);
      }
      
      public static function loadMySite() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         if(§_-tv§.§_-hp§())
         {
            _loc1_;
            §_-tv§.§_-mV§("loadMySite");
         }
      }
      
      public static function loadCustomLink(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         if(§_-tv§.§_-hp§())
         {
            _loc3_;
            §_-tv§.§_-mV§("loadCustomLink",true,{"link":param1});
         }
      }
      
      public static function §_-cd§(param1:String) : Medal
      {
         return §_-7j§[param1];
      }
      
      public static function unlockMedal(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         if(!§_-Kd§())
         {
            _loc4_;
            _loc4_;
            return;
         }
         var _loc2_:Medal = §_-7j§[param1];
         _loc3_;
         if(!_loc2_)
         {
            _loc3_;
            _loc4_;
            _loc3_;
            _loc3_;
            §_-tz§.logError("No medal named \"" + param1 + "\" was found.");
            _loc3_;
            _loc3_;
            return;
         }
         _loc2_.unlock();
      }
      
      private static function §_-Qy§(param1:§_-E6§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Medal = null;
         var _loc3_:Object = null;
         _loc4_;
         if(param1.success)
         {
            _loc2_ = Medal(param1.data);
            _loc4_;
            _loc4_;
            if(§_-Pn§)
            {
               _loc4_;
               _loc3_ = §_-Q9§("medals_unlocked_" + username);
               _loc4_;
               if(!_loc3_)
               {
                  _loc5_;
                  _loc5_;
                  _loc3_ = new Object();
               }
               _loc3_[_loc2_.id] = true;
               _loc4_;
               _loc5_;
               _loc5_;
               §_-VL§("medals_unlocked_" + username,_loc3_);
            }
            else
            {
               _loc3_ = §_-Q9§("medals_unlocked");
               _loc4_;
               if(!_loc3_)
               {
                  _loc5_;
                  _loc3_ = new Object();
               }
               _loc3_[Medal(param1.data).id] = true;
               _loc5_;
               _loc5_;
               §_-VL§("medals_unlocked",_loc3_);
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               §_-tz§.§_-Lq§("User is not logged in. Medal \"" + _loc2_.name + "\" unlocked locally.");
            }
         }
      }
      
      private static function §_-cB§(param1:§_-E6§) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = null;
         _loc3_;
         _loc3_;
         if(§_-Pn§)
         {
            _loc4_;
            _loc4_;
            _loc2_ = §_-Q9§("medals_unlocked_" + username);
            _loc3_;
            if(!_loc2_)
            {
               _loc4_;
               _loc2_ = new Object();
               _loc3_;
            }
            else
            {
               delete _loc2_[Medal(param1.data).id];
               true;
            }
            _loc4_;
            _loc4_;
            §_-VL§("medals_unlocked_" + username,_loc2_);
         }
      }
      
      public static function §_-GB§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Medal = null;
         for each(_loc1_ in §_-7j§)
         {
            _loc5_;
            _loc1_.§_-cc§(false);
         }
         _loc4_;
         if(!§_-Pn§)
         {
            _loc4_;
            §_-VL§("medals_unlocked",new Object());
         }
      }
      
      public static function §_-lQ§(param1:String) : §_-nF§
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!§_-Kd§())
         {
            _loc2_;
            _loc2_;
            return null;
         }
         return §_-J-§[param1];
      }
      
      public static function loadScores(param1:String, param2:String = "All-Time", param3:uint = 1, param4:uint = 10, param5:String = null) : §_-nF§
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         if(!§_-Kd§())
         {
            _loc7_;
            return null;
         }
         var _loc6_:§_-nF§ = §_-J-§[param1];
         if(!_loc6_)
         {
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            §_-tz§.logError("No scoreboard named \"" + param1 + "\" was found.");
            _loc7_;
            dispatchEvent(§_-E6§.§_-Nr§,null,§_-E6§.§_-2z§);
            _loc8_;
            _loc8_;
            return null;
         }
         _loc6_.period = param2;
         _loc8_;
         _loc8_;
         _loc6_.§_-Qf§ = param3;
         _loc6_.§_-tr§ = param4;
         _loc6_.tag = param5;
         _loc6_.loadScores();
         return _loc6_;
      }
      
      public static function postScore(param1:String, param2:Number, param3:String = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(!§_-Kd§())
         {
            _loc5_;
            _loc5_;
            return;
         }
         if(!§_-Pn§)
         {
            §_-tz§.logError("The user must be logged-in to post a score.");
            dispatchEvent(§_-E6§.§_-p3§,null,§_-E6§.§_-Ea§);
            return;
         }
         var _loc4_:§_-nF§ = §_-J-§[param1];
         if(!_loc4_)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            §_-tz§.logError("No scoreboard named \"" + param1 + "\" was found.");
            _loc6_;
            _loc6_;
            dispatchEvent(§_-E6§.§_-p3§,null,§_-E6§.§_-2z§);
            _loc6_;
            _loc6_;
            return;
         }
         _loc4_.postScore(param2,param3);
      }
      
      public static function §_-W6§(param1:String) : §_-lX§
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(!§_-Kd§())
         {
            _loc2_;
            _loc2_;
            return null;
         }
         return §_-gl§[param1];
      }
      
      private static function §_-3W§(param1:uint) : §_-lX§
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:§_-lX§ = null;
         for each(_loc2_ in §_-gl§)
         {
            _loc5_;
            _loc5_;
            if(_loc2_.id == param1)
            {
               _loc6_;
               _loc6_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-ff§(param1:String) : §_-IH§
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         if(!§_-Kd§())
         {
            _loc3_;
            _loc3_;
            return null;
         }
         var _loc2_:§_-lX§ = §_-W6§(param1);
         _loc4_;
         if(!_loc2_)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            §_-tz§.logError("The save group \"" + param1 + "\" was not found.");
            _loc3_;
            return null;
         }
         return new §_-IH§(_loc2_);
      }
      
      public static function loadSaveFile(param1:uint, param2:Boolean = true) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         §_-tv§.§_-lu§("loadSaveFile",§_-dS§,{
            "save_id":param1,
            "get_contents":param2
         });
      }
      
      private static function §_-dS§(param1:§_-E6§) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-IH§ = null;
         _loc3_;
         _loc3_;
         if(param1.success)
         {
            _loc4_;
            _loc4_;
            _loc2_ = §_-IH§.§_-rR§(§_-3W§(param1.data.group_id),param1.data.file);
            _loc4_;
            _loc4_;
            if(param1.data.get_contents)
            {
               _loc3_;
               _loc2_.load();
               _loc3_;
               _loc3_;
            }
            else
            {
               dispatchEvent(§_-E6§.§var§,_loc2_);
            }
         }
         else
         {
            §_-tz§.logError("Unable to load file:",param1.error);
            _loc4_;
            dispatchEvent(§_-E6§.§var§,null,param1.error);
         }
      }
      
      public static function §_-jc§(param1:String) : §_-KJ§
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         if(!§_-Kd§())
         {
            _loc4_;
            _loc4_;
            return null;
         }
         var _loc2_:§_-lX§ = §_-W6§(param1);
         _loc4_;
         _loc4_;
         if(!_loc2_)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            §_-tz§.logError("The save group \"" + param1 + "\" was not found.");
            _loc5_;
            return null;
         }
         var _loc3_:§_-KJ§ = new §_-KJ§(_loc2_);
         return _loc3_;
      }
      
      public static function §_-LW§(param1:String, param2:Boolean = true) : §_-KJ§
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:§_-KJ§ = §_-jc§(param1);
         _loc5_;
         _loc5_;
         if(!_loc3_)
         {
            _loc5_;
            return null;
         }
         _loc3_.sortOn(§_-KJ§.§_-of§,param2);
         return _loc3_;
      }
      
      public static function §_-oo§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : §_-KJ§
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:§_-KJ§ = §_-jc§(param1);
         _loc7_;
         if(param3)
         {
            _loc7_;
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc7_;
            _loc7_;
         }
         if(param3)
         {
            _loc5_.§_-BI§(§_-KJ§.§_-vQ§,§_-KJ§.§_-6Z§,param2);
            return _loc5_;
         }
         _loc5_.§_-BI§(§_-KJ§.§_-vQ§,§_-KJ§.§continue§,param2);
         return _loc5_;
      }
      
      public static function §_-Pj§(param1:String, param2:String, param3:Boolean = true) : §_-KJ§
      {
         var _loc4_:§_-KJ§ = §_-jc§(param1);
         _loc4_.sortOn(param2,param3);
         return _loc4_;
      }
      
      private static function §_-DI§(param1:§_-E6§) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-IH§ = null;
         _loc4_;
         API.removeEventListener(§_-E6§.§var§,§_-DI§);
         _loc3_;
         if(param1.success)
         {
            _loc2_ = param1.data as §_-IH§;
            _loc4_;
            if(_loc2_)
            {
               _loc3_;
               dispatchEvent(§_-E6§.§extends§,_loc2_);
            }
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:int = 0, param4:Boolean = true) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         §_-lp§.addEventListener(param1,param2,false,param3,param4);
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         §_-lp§.removeEventListener(param1,param2);
      }
      
      private static function dispatchEvent(param1:String, param2:* = null, param3:String = null) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         §_-lp§.dispatchEvent(new §_-E6§(param1,param2,param3));
      }
      
      public static function §_-VL§(param1:String, param2:Object) : Boolean
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         var sharedObject:SharedObject = null;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         var sharedObjectName:String = null;
         _loc6_;
         _loc5_;
         var saveId:String = param1;
         _loc6_;
         _loc6_;
         var saveData:Object = param2;
         try
         {
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            sharedObjectName = "ng_ap_secure_" + §_-tv§.§_-wg§ + "_" + §class§.§_-dE§(saveId,§_-tv§.§_-jH§);
            _loc6_;
            _loc6_;
            if(!§_-Pt§[saveId])
            {
               _loc6_;
               _loc6_;
               §_-Pt§[saveId] = SharedObject.getLocal(sharedObjectName);
               _loc6_;
               _loc6_;
            }
            _loc6_;
            sharedObject = §_-Pt§[saveId];
            _loc6_;
            sharedObject.data.data = §_-mx§(saveData);
         }
         catch(error:Error)
         {
            §_-tz§.logError("Unable to save local data.",error);
            return false;
         }
         return true;
      }
      
      public static function §_-Q9§(param1:String) : Object
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc5_;
         var sharedObject:SharedObject = null;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         var sharedObjectName:String = null;
         _loc4_;
         _loc4_;
         var saveId:String = param1;
         try
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            sharedObjectName = "ng_ap_secure_" + §_-tv§.§_-wg§ + "_" + §class§.§_-dE§(saveId,§_-tv§.§_-jH§);
            _loc4_;
            if(!§_-Pt§[saveId])
            {
               §_-Pt§[saveId] = SharedObject.getLocal(sharedObjectName);
            }
            _loc4_;
            sharedObject = §_-Pt§[saveId];
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if((sharedObject) && (sharedObject.data) && (sharedObject.data.data))
            {
               return §_-KT§(sharedObject.data.data);
            }
            _loc4_;
            return null;
         }
         catch(error:Error)
         {
            §_-tz§.logError("Unable to load local data.",error);
         }
         return null;
      }
      
      public static function logCustomEvent(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(§_-Kd§())
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            §_-tz§.§_-Lq§("Logged event: " + param1);
            _loc2_;
            _loc2_;
            §_-tv§.§_-lu§("logCustomEvent",null,{"event":param1});
         }
      }
      
      private static function §_-mx§(param1:Object) : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!§_-tv§.§_-hp§())
         {
            _loc2_;
            _loc2_;
            return null;
         }
         return §class§.§_-dE§(§_-4K§.§_-hz§(param1),§_-tv§.§_-jH§);
      }
      
      private static function §_-KT§(param1:String) : Object
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(!§_-tv§.§_-hp§())
         {
            _loc3_;
            _loc3_;
            return null;
         }
         try
         {
            return §_-4K§.decode(§class§.§_-At§(param1,§_-tv§.§_-jH§)) as Object;
         }
         catch(error:Error)
         {
         }
         return null;
      }
      
      public static function §_-dz§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         §_-K4§.§_-dz§();
         _loc1_;
         §_-tz§.§_-Lq§("Pending commands stopped.");
      }
      
      private static function §_-af§(param1:String) : String
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(!param1)
         {
            _loc5_;
            _loc5_;
            return null;
         }
         var _loc2_:* = 0;
         while(true)
         {
            _loc5_;
            if(param1.charAt(_loc2_) != " ")
            {
               break;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         var _loc3_:int = param1.length - 1;
         _loc5_;
         _loc5_;
         while(true)
         {
            _loc4_;
            _loc5_;
            _loc4_;
            if(!(param1.charAt(_loc3_) == " " && _loc3_ >= 0))
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc3_--;
            _loc5_;
            _loc5_;
         }
         return param1.slice(_loc2_,_loc3_ + 1);
      }
      
      public static const §_-6G§:String = "3.2 AS3";
      
      private static function §_-g§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var event:Event = param1;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         var loaderInfo:LoaderInfo = §_-rs§.loaderInfo;
         _loc5_;
         if(loaderInfo)
         {
            try
            {
               while(loaderInfo.loader)
               {
                  _loc4_;
                  _loc4_;
                  loaderInfo = loaderInfo.loader.loaderInfo;
                  _loc4_;
               }
               _loc4_;
               _loc4_;
            }
            catch(error:Error)
            {
               return;
            }
            §_-rs§.removeEventListener(Event.ENTER_FRAME,§_-g§);
            _loc4_;
            §_-tv§.§_-Rb§ = loaderInfo.url;
            _loc5_;
            §_-OP§(loaderInfo.parameters);
         }
      }
   }
}
