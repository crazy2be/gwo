package §_-nI§
{
   import flash.display.DisplayObject;
   import flash.system.Security;
   import flash.events.Event;
   import §_-QU§.MD5;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.net.SharedObject;
   import §_-QU§.§_-yv§;
   import §_-k-§.§_-Ge§;
   import flash.display.LoaderInfo;
   
   public class API extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function API()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public static const RELEASE_MODE:String = "releaseMode";
      
      public static const DEBUG_MODE_LOGGED_IN:String = "debugModeLoggedIn";
      
      public static const DEBUG_MODE_LOGGED_OUT:String = "debugModeLoggedOut";
      
      public static const DEBUG_MODE_NEW_VERSION:String = "debugModeNewVersion";
      
      public static const DEBUG_MODE_HOST_BLOCKED:String = "debugModeHostBlocked";
      
      private static const §_-Ol§:String = "http://www.ngads.com/adtest.php";
      
      private static const §_-SO§:String = "https://www.newgrounds.com/login/remote/";
      
      private static var §_-Mr§:Bridge;
      
      private static var §_-Rh§:§_-kM§ = new §_-kM§();
      
      private static var § in§:String;
      
      private static var §_-gw§:String;
      
      private static var §_-XZ§:DisplayObject;
      
      private static var §_-KT§:§_-J7§ = new §_-J7§();
      
      private static var §_-Gx§:String = DEBUG_MODE_LOGGED_IN;
      
      private static var §_-pH§:Boolean;
      
      private static var §_-sZ§:Date;
      
      public static function get connected() : Boolean
      {
         return §_-KT§.connected;
      }
      
      public static function get §_-Zp§() : Boolean
      {
         return §_-KT§.§_-Zp§;
      }
      
      public static function get §_-rp§() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         §_-KT§.§_-M§();
         return §_-KT§.§_-rp§;
      }
      
      public static function get debugMode() : String
      {
         return §_-Gx§;
      }
      
      public static function set debugMode(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-Gx§ = param1;
      }
      
      public static function get §_-6e§() : uint
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         §_-KT§.§_-M§();
         return §_-KT§.§_-6e§;
      }
      
      public static function get sessionId() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         §_-KT§.§_-M§();
         return §_-KT§.sessionId;
      }
      
      public static function get §_-Q9§() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         §_-KT§.§_-M§();
         return §_-KT§.§_-Q9§;
      }
      
      public static function get §_-ah§() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         §_-KT§.§_-M§();
         return §_-KT§.§_-ah§;
      }
      
      public static function get §_-aA§() : Boolean
      {
         return §_-KT§.§_-6e§ == 1;
      }
      
      public static function get §var §() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc1_;
         §_-KT§.§_-M§();
         return §_-KT§.§var §;
      }
      
      public static function get username() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         §_-KT§.§_-M§();
         return §_-KT§.username;
      }
      
      public static function get §_-GQ§() : uint
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         §_-KT§.§_-M§();
         return §_-KT§.§_-GQ§;
      }
      
      private static function §_-Im§(param1:String = null) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         if(§_-KT§.§_-Im§())
         {
            _loc3_;
            _loc3_;
            return true;
         }
         if(param1)
         {
            _loc3_;
            dispatchEvent(param1,null,§_-6O§.§_-9§);
         }
         return false;
      }
      
      public static function get §_-h7§() : Date
      {
         return §_-sZ§;
      }
      
      private static var §_-48§:Boolean = false;
      
      private static var §_-YR§:String;
      
      private static var §_-Gy§:Object = new Object();
      
      private static var §_-D6§:Array = [];
      
      private static var §_-Sj§:Object = new Object();
      
      private static var §_-xm§:Array = [];
      
      private static var §_-p9§:Object = new Object();
      
      private static var §_-VD§:Array = [];
      
      private static var §_-Q-§:String;
      
      private static var §_-8j§:String;
      
      private static var §_-p1§:Object = new Object();
      
      private static var §_-bz§:uint;
      
      private static var §_-Oo§:uint;
      
      public static function get §_-iq§() : Boolean
      {
         return §_-48§;
      }
      
      public static function get §_-SV§() : String
      {
         return §_-YR§;
      }
      
      public static function get medals() : Array
      {
         return §_-D6§;
      }
      
      public static function get §_-4X§() : Array
      {
         return §_-xm§;
      }
      
      public static function get §_-ab§() : Array
      {
         return §_-VD§;
      }
      
      public static function connect(param1:DisplayObject, param2:String, param3:String = null, param4:String = "") : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:uint = 0;
         _loc7_;
         §_-kM§.§_-tx§ = §_-Rh§;
         Security.loadPolicyFile("http://apifiles.ngfiles.com/crossdomain.xml");
         _loc7_;
         _loc7_;
         if(§_-KT§.initialized)
         {
            §_-NZ§.logError("Connection already in progress. Please call API.disconnect() before attempting another connection.");
            _loc6_;
            _loc6_;
            dispatchEvent(§_-6O§.§_-IA§,false,§_-6O§.§_-9§);
            return;
         }
         _loc7_;
         var param2:String = §_-m§(param2);
         if(param3)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            var param3:String = §_-m§(param3);
         }
         _loc7_;
         _loc7_;
         if(!param2 || param2 == "")
         {
            _loc6_;
            _loc6_;
            §_-NZ§.logError("No apiId given. Please use the API ID from your API settings page.");
            dispatchEvent(§_-6O§.§_-IA§,false,§_-6O§.§_-gE§);
            _loc7_;
            _loc7_;
            return;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         §_-NZ§.§_-Bv§("====== Newgrounds API v" + §_-a4§ + " ======");
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         §_-KT§.§_-TR§ = §_-J7§.§_-rD§;
         _loc6_;
         §_-XZ§ = param1;
         _loc7_;
         _loc7_;
         §_-gw§ = param4;
         _loc6_;
         _loc6_;
         _loc6_;
         §_-KT§.§_-rp§ = param2;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc5_ = param2.indexOf(":");
         _loc7_;
         _loc7_;
         if(_loc5_ != -1)
         {
            §_-KT§.§_-Au§ = uint(param2.substring(0,_loc5_));
         }
         else
         {
            §_-KT§.§_-Au§ = uint(param2);
            _loc6_;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         if(!§_-KT§.§_-Au§)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            §_-NZ§.logError("Invalid API ID: " + param2);
            dispatchEvent(§_-6O§.§_-IA§,false,§_-6O§.§_-gE§);
            return;
         }
         §_-KT§.§_-4g§ = param3;
         _loc7_;
         §_-KT§.initialized = true;
         _loc7_;
         _loc7_;
         if(!§_-XZ§.loaderInfo)
         {
            §_-NZ§.§_-Q7§("The root DisplayObject is currently not on the stage. Connection will be completed once it is added to stage.");
            _loc6_;
            _loc6_;
         }
         §_-XZ§.addEventListener(Event.ENTER_FRAME,§_-nG§);
         _loc6_;
         _loc6_;
         §_-nG§(null);
      }
      
      private static function §_-uA§(param1:Object) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         if((§_-Zp§) && !(§_-Gx§ == RELEASE_MODE))
         {
            _loc3_;
            §_-NZ§.§_-Bv§("Live file detected, turning off debug mode.");
            _loc2_;
            §_-Gx§ = RELEASE_MODE;
         }
         _loc3_;
         _loc3_;
         if((param1) && (param1.NewgroundsAPI_SandboxID))
         {
            §_-Mr§ = new Bridge(param1.NewgroundsAPI_SandboxID);
            §_-u1§.§_-Dp§ = §_-Mr§;
         }
         else
         {
            §_-Mr§ = new Bridge(MD5.hash(String(Math.random())));
            §_-u1§.§_-Dp§ = §_-Mr§;
         }
         _loc3_;
         _loc3_;
         if(§_-Gx§ == RELEASE_MODE)
         {
            _loc2_;
            _loc2_;
            if(param1)
            {
               if(param1.NewgroundsAPI_UserName)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  §_-KT§.username = param1.NewgroundsAPI_UserName;
                  _loc3_;
                  _loc3_;
               }
               if(param1.NewgroundsAPI_UserID)
               {
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  §_-KT§.§_-GQ§ = param1.NewgroundsAPI_UserID;
                  _loc2_;
                  _loc2_;
               }
               if(param1.NewgroundsAPI_PublisherID)
               {
                  §_-KT§.§_-6e§ = param1.NewgroundsAPI_PublisherID;
                  _loc3_;
                  _loc3_;
               }
               if(param1.NewgroundsAPI_UserpageFormat)
               {
                  _loc3_;
                  §_-KT§.§_-5s§ = param1.NewgroundsAPI_UserpageFormat;
               }
               if(param1.NewgroundsAPI_SessionID)
               {
                  _loc2_;
                  §_-KT§.sessionId = param1.NewgroundsAPI_SessionID;
               }
               if(param1.NewgroundsAPI_SaveGroupID)
               {
                  §_-Oo§ = param1.NewgroundsAPI_SaveGroupID;
               }
               if(param1.NewgroundsAPI_SaveFileID)
               {
                  _loc3_;
                  _loc3_;
                  §_-bz§ = param1.NewgroundsAPI_SaveFileID;
               }
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            §_-KT§.debug = true;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(§_-Gx§ == DEBUG_MODE_LOGGED_IN || §_-Gx§ == DEBUG_MODE_LOGGED_OUT)
            {
               _loc3_;
               _loc3_;
               §_-KT§.§_-6e§ = 1;
            }
            if(§_-Gx§ == DEBUG_MODE_LOGGED_IN)
            {
               _loc3_;
               _loc2_;
               §_-KT§.sessionId = "D3bu64p1U53R";
               _loc2_;
               _loc2_;
               §_-KT§.§_-GQ§ = 10;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               §_-KT§.username = "API-Debugger";
               _loc2_;
               _loc2_;
            }
         }
         §_-KT§.§_-PX§("connectMovie",§_-dY§,{
            "host":§_-KT§.§_-Q9§,
            "movie_version":§_-gw§,
            "publisher_id":§_-KT§.§_-6e§
         });
      }
      
      private static function §_-dY§(param1:§_-6O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = param1.data;
         if(!param1.success)
         {
            §_-NZ§.logError("Unable to connect to the API.");
            _loc4_;
            §_-KT§.reset();
            dispatchEvent(§_-6O§.§_-IA§,param1.data,param1.error);
            return;
         }
         if(debugMode != RELEASE_MODE)
         {
            §_-YR§ = §_-Ol§;
            _loc4_;
         }
         else if(_loc2_.ad_url)
         {
            _loc5_;
            §_-YR§ = unescape(_loc2_.ad_url);
         }
         
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(-1 === _loc3_)
         {
            _loc5_;
            _loc4_;
         }
         else
         {
            _loc5_;
            if(0 === _loc3_)
            {
               _loc4_;
               _loc4_;
            }
            else
            {
               switch(null)
               {
                  case 1:
                     §_-NZ§.§_-Q7§("Your movie is not approved to run Flash Ads.");
                     break;
               }
               §_-48§ = _loc2_.ad_status == 1;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc4_;
               if(§_-Gx§ == DEBUG_MODE_HOST_BLOCKED || (_loc2_.deny_host))
               {
                  §_-NZ§.§_-Q7§(§_-KT§.§_-Q9§ + " does not have permission to host this movie!","Update your API configuration to allow this host.");
                  dispatchEvent(§_-6O§.§_-IA§,{"officialURL":unescape(_loc2_.movie_url)},§_-6O§.§_-Zy§);
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  §_-KT§.reset();
                  _loc5_;
                  return;
               }
               _loc4_;
               _loc4_;
               § in§ = _loc2_.movieName?_loc2_.movieName:"";
               _loc5_;
               _loc5_;
               _loc5_;
               §_-NZ§.§_-Bv§("Connecting to the Newgrounds API Gateway...","----- " + _loc2_.movie_name + " -----");
               _loc4_;
               _loc4_;
               if(§_-Gx§ == DEBUG_MODE_NEW_VERSION)
               {
                  _loc2_.movie_version = "Debug Mode";
                  _loc4_;
                  _loc4_;
               }
               if(_loc2_.movie_version)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  §_-NZ§.§_-Bv§("A new version of this movie is available.","Current version:\t" + §_-gw§,"Newest version:\t" + _loc2_.movie_version,"Use API.loadOfficialVersion() to link to the latest version.");
                  §_-pH§ = true;
               }
               else
               {
                  §_-pH§ = false;
                  _loc5_;
                  _loc5_;
               }
               §_-sZ§ = new Date(int(_loc2_.time) * 1000);
               _loc5_;
               if(_loc2_.request_portal_url)
               {
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  §_-KT§.§_-PX§("setPortalID",null,{"portal_url":§_-KT§.§_-ah§});
                  _loc5_;
                  _loc5_;
               }
               §_-KT§.§_-PX§("preloadSettings",§_-8J§,{
                  "publisher_id":§_-KT§.§_-6e§,
                  "user_id":§_-KT§.§_-GQ§
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
      
      private static function §_-8J§(param1:§_-6O§) : void
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
         _loc4_;
         _loc4_;
         _loc4_;
         if(!§_-KT§.connected)
         {
            _loc4_;
            §_-NZ§.§_-Q7§("The Newgrounds API is already disconnected.");
            _loc4_;
            _loc4_;
            return;
         }
         §_-KT§.reset();
         for each(_loc1_ in §_-Gy§)
         {
            _loc5_;
            _loc5_;
            _loc1_.removeEventListener(§_-6O§.§_-7f§,§_-NT§);
            _loc4_;
            _loc4_;
            _loc1_.removeEventListener(§_-6O§.§_-JE§,§_-Ct§);
         }
         §_-pH§ = false;
         §_-Gy§ = new Object();
         _loc5_;
         §_-D6§ = [];
         §_-Sj§ = new Object();
         _loc5_;
         §_-xm§ = [];
         §_-p9§ = new Object();
         §_-VD§ = [];
         §_-p1§ = new Object();
         _loc4_;
         _loc4_;
         §_-Q-§ = null;
         §_-8j§ = null;
         §_-NZ§.§_-Bv§("Disconnected from the Newgrounds API.");
      }
      
      public static function loadNewgrounds() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         §_-KT§.§_-ZD§("loadNewgrounds");
      }
      
      public static function loadOfficialVersion() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(§_-KT§.§_-M§())
         {
            _loc1_;
            _loc1_;
            §_-KT§.§_-ZD§("loadOfficialVersion",false);
         }
      }
      
      public static function §_-OK§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(§_-KT§.§_-M§())
         {
            _loc1_;
            _loc1_;
            navigateToURL(new URLRequest(§_-SO§ + §_-Mr§.§_-oM§),"_blank");
            _loc2_;
            §_-Mr§.addEventListener(§_-6O§.§_-wK§,§_-8g§,false,0,true);
         }
      }
      
      private static function §_-8g§(param1:§_-6O§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         §_-Mr§.removeEventListener(§_-6O§.§_-wK§,§_-8g§);
         var _loc2_:Object = param1.data;
         _loc4_;
         _loc4_;
         if(param1.success)
         {
            try
            {
               if(_loc2_.NewgroundsAPI_UserName)
               {
                  _loc5_;
                  _loc4_;
                  §_-KT§.username = _loc2_.NewgroundsAPI_UserName;
               }
               if(_loc2_.NewgroundsAPI_UserID)
               {
                  _loc5_;
                  _loc5_;
                  §_-KT§.§_-GQ§ = _loc2_.NewgroundsAPI_UserID;
                  _loc5_;
               }
               if(_loc2_.NewgroundsAPI_PublisherID)
               {
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  §_-KT§.§_-6e§ = _loc2_.NewgroundsAPI_PublisherID;
                  _loc5_;
                  _loc5_;
               }
               if(_loc2_.NewgroundsAPI_SessionID)
               {
                  _loc5_;
                  _loc5_;
                  §_-KT§.sessionId = _loc2_.NewgroundsAPI_SessionID;
                  _loc5_;
                  _loc5_;
               }
               §_-KT§.§_-PX§("preloadSettings",§_-8J§,{
                  "publisher_id":§_-KT§.§_-6e§,
                  "user_id":§_-KT§.§_-GQ§
               });
            }
            catch(error:*)
            {
            }
            _loc4_;
            _loc4_;
            _loc4_;
            §_-NZ§.§_-Bv§("User " + §_-KT§.username + " signed in.");
            _loc5_;
            _loc5_;
         }
         if(param1.success)
         {
            _loc5_;
            _loc5_;
            if(param1.success)
            {
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc4_;
               _loc4_;
            }
            if(param1.success)
            {
               dispatchEvent(§_-6O§.§_-Hg§,null,null);
               return;
            }
            dispatchEvent(§_-6O§.§_-Hg§,null,§_-6O§.§_-iO§);
            return;
         }
         _loc5_;
         _loc5_;
         if(param1.success)
         {
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
         }
         if(param1.success)
         {
            dispatchEvent(§_-6O§.§_-Hg§,null,null);
            return;
         }
         dispatchEvent(§_-6O§.§_-Hg§,null,§_-6O§.§_-iO§);
      }
      
      public static function loadMySite() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(§_-KT§.§_-M§())
         {
            _loc2_;
            §_-KT§.§_-ZD§("loadMySite");
         }
      }
      
      public static function loadCustomLink(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         if(§_-KT§.§_-M§())
         {
            _loc3_;
            _loc3_;
            §_-KT§.§_-ZD§("loadCustomLink",true,{"link":param1});
         }
      }
      
      public static function §_-r5§(param1:String) : Medal
      {
         return §_-Gy§[param1];
      }
      
      public static function unlockMedal(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         if(!§_-Im§())
         {
            _loc3_;
            return;
         }
         var _loc2_:Medal = §_-Gy§[param1];
         _loc4_;
         if(!_loc2_)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            §_-NZ§.logError("No medal named \"" + param1 + "\" was found.");
            _loc4_;
            _loc4_;
            return;
         }
         _loc2_.unlock();
      }
      
      private static function §_-NT§(param1:§_-6O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Medal = null;
         var _loc3_:Object = null;
         _loc5_;
         _loc5_;
         if(param1.success)
         {
            _loc2_ = Medal(param1.data);
            _loc5_;
            _loc5_;
            if(§var §)
            {
               _loc5_;
               _loc3_ = §_-bF§("medals_unlocked_" + username);
               _loc4_;
               _loc4_;
               if(!_loc3_)
               {
                  _loc4_;
                  _loc4_;
                  _loc3_ = new Object();
               }
               _loc3_[_loc2_.id] = true;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               §_-x9§("medals_unlocked_" + username,_loc3_);
            }
            else
            {
               _loc3_ = §_-bF§("medals_unlocked");
               _loc5_;
               _loc5_;
               if(!_loc3_)
               {
                  _loc5_;
                  _loc5_;
                  _loc3_ = new Object();
               }
               _loc3_[Medal(param1.data).id] = true;
               _loc4_;
               _loc4_;
               §_-x9§("medals_unlocked",_loc3_);
               _loc5_;
               _loc5_;
               _loc5_;
               §_-NZ§.§_-Bv§("User is not logged in. Medal \"" + _loc2_.name + "\" unlocked locally.");
            }
         }
      }
      
      private static function §_-Ct§(param1:§_-6O§) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = null;
         _loc4_;
         _loc4_;
         if(§var §)
         {
            _loc4_;
            _loc2_ = §_-bF§("medals_unlocked_" + username);
            _loc3_;
            if(!_loc2_)
            {
               _loc3_;
               _loc3_;
               _loc2_ = new Object();
               _loc3_;
               _loc3_;
            }
            else
            {
               delete _loc2_[Medal(param1.data).id];
               true;
            }
            _loc3_;
            _loc3_;
            §_-x9§("medals_unlocked_" + username,_loc2_);
         }
      }
      
      public static function §_-Y-§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Medal = null;
         for each(_loc1_ in §_-Gy§)
         {
            _loc4_;
            _loc4_;
            _loc1_.§_-eA§(false);
         }
         _loc5_;
         if(!§var §)
         {
            _loc5_;
            §_-x9§("medals_unlocked",new Object());
         }
      }
      
      public static function §_-FC§(param1:String) : §_-ld§
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!§_-Im§())
         {
            _loc2_;
            return null;
         }
         return §_-Sj§[param1];
      }
      
      public static function loadScores(param1:String, param2:String = "All-Time", param3:uint = 1, param4:uint = 10, param5:String = null) : §_-ld§
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         if(!§_-Im§())
         {
            _loc7_;
            return null;
         }
         var _loc6_:§_-ld§ = §_-Sj§[param1];
         if(!_loc6_)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            §_-NZ§.logError("No scoreboard named \"" + param1 + "\" was found.");
            dispatchEvent(§_-6O§.§_-3f§,null,§_-6O§.§_-gE§);
            return null;
         }
         _loc6_.period = param2;
         _loc7_;
         _loc7_;
         _loc6_.§_-4i§ = param3;
         _loc7_;
         _loc7_;
         _loc6_.§_-ff§ = param4;
         _loc6_.tag = param5;
         _loc6_.loadScores();
         return _loc6_;
      }
      
      public static function postScore(param1:String, param2:Number, param3:String = null) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         if(!§_-Im§())
         {
            return;
         }
         if(!§var §)
         {
            §_-NZ§.logError("The user must be logged-in to post a score.");
            _loc5_;
            dispatchEvent(§_-6O§.§_-DA§,null,§_-6O§.§_-bp§);
            return;
         }
         var _loc4_:§_-ld§ = §_-Sj§[param1];
         if(!_loc4_)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            §_-NZ§.logError("No scoreboard named \"" + param1 + "\" was found.");
            _loc6_;
            _loc6_;
            dispatchEvent(§_-6O§.§_-DA§,null,§_-6O§.§_-gE§);
            _loc5_;
            return;
         }
         _loc4_.postScore(param2,param3);
      }
      
      public static function §_-Kz§(param1:String) : §_-Iy§
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!§_-Im§())
         {
            _loc2_;
            return null;
         }
         return §_-p9§[param1];
      }
      
      private static function §_-8v§(param1:uint) : §_-Iy§
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:§_-Iy§ = null;
         for each(_loc2_ in §_-p9§)
         {
            _loc6_;
            if(_loc2_.id == param1)
            {
               _loc5_;
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-Ws§(param1:String) : §_-MO§
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         if(!§_-Im§())
         {
            _loc4_;
            _loc4_;
            return null;
         }
         var _loc2_:§_-Iy§ = §_-Kz§(param1);
         _loc3_;
         if(!_loc2_)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            §_-NZ§.logError("The save group \"" + param1 + "\" was not found.");
            _loc4_;
            _loc4_;
            return null;
         }
         return new §_-MO§(_loc2_);
      }
      
      public static function loadSaveFile(param1:uint, param2:Boolean = true) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         §_-KT§.§_-PX§("loadSaveFile",§_-bh§,{
            "save_id":param1,
            "get_contents":param2
         });
      }
      
      private static function §_-bh§(param1:§_-6O§) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-MO§ = null;
         _loc3_;
         if(param1.success)
         {
            _loc4_;
            _loc2_ = §_-MO§.§_-ti§(§_-8v§(param1.data.group_id),param1.data.file);
            _loc3_;
            _loc3_;
            if(param1.data.get_contents)
            {
               _loc3_;
               _loc2_.load();
               _loc4_;
            }
            else
            {
               dispatchEvent(§_-6O§.§_-dB§,_loc2_);
            }
         }
         else
         {
            §_-NZ§.logError("Unable to load file:",param1.error);
            _loc3_;
            _loc3_;
            dispatchEvent(§_-6O§.§_-dB§,null,param1.error);
         }
      }
      
      public static function §_-6o§(param1:String) : §_-HB§
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(!§_-Im§())
         {
            _loc4_;
            _loc4_;
            return null;
         }
         var _loc2_:§_-Iy§ = §_-Kz§(param1);
         _loc4_;
         if(!_loc2_)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            §_-NZ§.logError("The save group \"" + param1 + "\" was not found.");
            _loc5_;
            _loc5_;
            return null;
         }
         var _loc3_:§_-HB§ = new §_-HB§(_loc2_);
         return _loc3_;
      }
      
      public static function §_-kN§(param1:String, param2:Boolean = true) : §_-HB§
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:§_-HB§ = §_-6o§(param1);
         _loc4_;
         if(!_loc3_)
         {
            _loc4_;
            _loc4_;
            return null;
         }
         _loc3_.sortOn(§_-HB§.§_-9O§,param2);
         return _loc3_;
      }
      
      public static function §_-iR§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : §_-HB§
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:§_-HB§ = §_-6o§(param1);
         _loc6_;
         _loc6_;
         if(param3)
         {
            _loc7_;
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc7_;
         }
         if(param3)
         {
            _loc5_.§_-Mn§(§_-HB§.§_-K4§,§_-HB§.§_-T5§,param2);
            return _loc5_;
         }
         _loc5_.§_-Mn§(§_-HB§.§_-K4§,§_-HB§.§_-WF§,param2);
         return _loc5_;
      }
      
      public static function §_-ym§(param1:String, param2:String, param3:Boolean = true) : §_-HB§
      {
         var _loc4_:§_-HB§ = §_-6o§(param1);
         _loc4_.sortOn(param2,param3);
         return _loc4_;
      }
      
      private static function §_-86§(param1:§_-6O§) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-MO§ = null;
         _loc3_;
         API.removeEventListener(§_-6O§.§_-dB§,§_-86§);
         _loc3_;
         if(param1.success)
         {
            _loc2_ = param1.data as §_-MO§;
            _loc3_;
            _loc3_;
            if(_loc2_)
            {
               _loc3_;
               dispatchEvent(§_-6O§.§_-5-§,_loc2_);
            }
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:int = 0, param4:Boolean = true) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         §_-Rh§.addEventListener(param1,param2,false,param3,param4);
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         §_-Rh§.removeEventListener(param1,param2);
      }
      
      private static function dispatchEvent(param1:String, param2:* = null, param3:String = null) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         §_-Rh§.dispatchEvent(new §_-6O§(param1,param2,param3));
      }
      
      public static function §_-x9§(param1:String, param2:Object) : Boolean
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         var sharedObject:SharedObject = null;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         var sharedObjectName:String = null;
         _loc5_;
         _loc5_;
         _loc5_;
         var saveId:String = param1;
         _loc5_;
         _loc5_;
         var saveData:Object = param2;
         try
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            sharedObjectName = "ng_ap_secure_" + §_-KT§.§_-Au§ + "_" + §_-yv§.§_-is§(saveId,§_-KT§.§_-4g§);
            _loc6_;
            _loc6_;
            if(!§_-p1§[saveId])
            {
               _loc6_;
               _loc6_;
               §_-p1§[saveId] = SharedObject.getLocal(sharedObjectName);
               _loc6_;
            }
            _loc5_;
            _loc5_;
            sharedObject = §_-p1§[saveId];
            _loc6_;
            _loc6_;
            sharedObject.data.data = §_-BH§(saveData);
         }
         catch(error:Error)
         {
            §_-NZ§.logError("Unable to save local data.",error);
            return false;
         }
         return true;
      }
      
      public static function §_-bF§(param1:String) : Object
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc5_;
         var sharedObject:SharedObject = null;
         _loc4_;
         _loc4_;
         _loc4_;
         var sharedObjectName:String = null;
         _loc5_;
         var saveId:String = param1;
         try
         {
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            sharedObjectName = "ng_ap_secure_" + §_-KT§.§_-Au§ + "_" + §_-yv§.§_-is§(saveId,§_-KT§.§_-4g§);
            _loc4_;
            if(!§_-p1§[saveId])
            {
               §_-p1§[saveId] = SharedObject.getLocal(sharedObjectName);
            }
            _loc5_;
            _loc5_;
            sharedObject = §_-p1§[saveId];
            _loc4_;
            _loc4_;
            _loc4_;
            if((sharedObject) && (sharedObject.data) && (sharedObject.data.data))
            {
               return §_-rq§(sharedObject.data.data);
            }
            _loc5_;
            _loc5_;
            return null;
         }
         catch(error:Error)
         {
            §_-NZ§.logError("Unable to load local data.",error);
         }
         return null;
      }
      
      public static function logCustomEvent(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(§_-Im§())
         {
            _loc3_;
            _loc2_;
            §_-NZ§.§_-Bv§("Logged event: " + param1);
            _loc2_;
            _loc2_;
            §_-KT§.§_-PX§("logCustomEvent",null,{"event":param1});
         }
      }
      
      private static function §_-BH§(param1:Object) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(!§_-KT§.§_-M§())
         {
            _loc3_;
            return null;
         }
         return §_-yv§.§_-is§(§_-Ge§.§_-R-§(param1),§_-KT§.§_-4g§);
      }
      
      private static function §_-rq§(param1:String) : Object
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(!§_-KT§.§_-M§())
         {
            _loc3_;
            _loc3_;
            return null;
         }
         try
         {
            return §_-Ge§.decode(§_-yv§.§_-4Y§(param1,§_-KT§.§_-4g§)) as Object;
         }
         catch(error:Error)
         {
         }
         return null;
      }
      
      public static function §_-b6§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         §_-u1§.§_-b6§();
         _loc1_;
         §_-NZ§.§_-Bv§("Pending commands stopped.");
      }
      
      private static function §_-m§(param1:String) : String
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         if(!param1)
         {
            _loc4_;
            _loc4_;
            return null;
         }
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
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
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(!(param1.charAt(_loc3_) == " " && _loc3_ >= 0))
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_--;
            _loc5_;
         }
         return param1.slice(_loc2_,_loc3_ + 1);
      }
      
      public static const §_-a4§:String = "3.2 AS3";
      
      private static function §_-nG§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var event:Event = param1;
         _loc5_;
         _loc4_;
         var loaderInfo:LoaderInfo = §_-XZ§.loaderInfo;
         _loc4_;
         _loc4_;
         if(loaderInfo)
         {
            try
            {
               while(loaderInfo.loader)
               {
                  _loc5_;
                  loaderInfo = loaderInfo.loader.loaderInfo;
                  _loc5_;
                  _loc5_;
               }
               _loc5_;
               _loc5_;
            }
            catch(error:Error)
            {
               return;
            }
            §_-XZ§.removeEventListener(Event.ENTER_FRAME,§_-nG§);
            _loc4_;
            _loc4_;
            §_-KT§.§_-ah§ = loaderInfo.url;
            _loc4_;
            _loc4_;
            §_-uA§(loaderInfo.parameters);
         }
      }
   }
}
