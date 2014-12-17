package §_-8B§
{
   import flash.system.Security;
   
   public class §_-Io§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
      }
      
      public function §_-Io§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.reset();
      }
      
      public static const §_-Xr§:String = "notConnected";
      
      public static const §_-lE§:String = "connecting";
      
      public static const §use§:String = "connected";
      
      public var initialized:Boolean;
      
      public var §_-cj§:String = "notConnected";
      
      public var §_-k4§:String = "http://www.ngads.com/gateway_v2.php";
      
      public var §_-XR§:String;
      
      public var debug:Boolean;
      
      public var §_-wg§:uint;
      
      public var §_-eV§:uint;
      
      public var §_-jH§:String;
      
      public var sessionId:String;
      
      public var §_-fq§:String;
      
      public var username:String;
      
      public var §_-0r§:uint;
      
      public var §_-jP§:uint;
      
      private var §_-2X§:String;
      
      public var §_-CY§:String;
      
      public function get §_-Rb§() : String
      {
         return this.§_-2X§;
      }
      
      public function set §_-Rb§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         _loc3_;
         this.§_-2X§ = param1;
         _loc4_;
         _loc4_;
         this.§_-CY§ = null;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-2X§)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = this.§_-2X§.split("/");
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(!(_loc2_[0] == "file:") && !(this.§_-2X§ == "localhost"))
            {
               _loc3_;
               _loc3_;
               this.§_-CY§ = _loc2_.splice(0,3).join("/");
            }
         }
         if(!this.§_-CY§)
         {
            _loc3_;
            _loc3_;
            this.§_-CY§ = "localhost";
         }
      }
      
      public function get sandboxType() : String
      {
         return Security.sandboxType;
      }
      
      public function get §_-ZJ§() : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if("localWithFile" === _loc1_)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if("localWithNetwork" === _loc1_)
            {
               _loc2_;
               _loc3_;
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc3_;
               if("localTrusted" === _loc1_)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  if("application" === _loc1_)
                  {
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     switch(null)
                     {
                        case "remote":
                           _loc3_;
                           _loc3_;
                           return false;
                        default:
                           return true;
                     }
                  }
                  if("application" === _loc1_)
                  {
                  }
               }
               if("localTrusted" === _loc1_)
               {
               }
            }
            if("localWithNetwork" === _loc1_)
            {
            }
         }
         if("localWithFile" === _loc1_)
         {
         }
      }
      
      public function get §_-Pn§() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         return !(this.sessionId == null) && !(this.sessionId == "") && !(this.§_-eV§ == 0);
      }
      
      public function get connected() : Boolean
      {
         return this.§_-cj§ == §use§;
      }
      
      public function reset() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-cj§ = §_-Xr§;
         _loc2_;
         this.§_-jH§ = null;
         this.sessionId = null;
         this.§_-fq§ = null;
         this.username = null;
         this.§_-0r§ = 0;
         this.§_-jP§ = 0;
      }
      
      public function §_-hp§() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc1_;
         if(!this.initialized)
         {
            _loc2_;
            _loc2_;
            §_-tz§.logError("You must initialized the API using API.connect() before using this command.");
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            return false;
         }
         return true;
      }
      
      public function §_-Kd§() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         if(!this.§_-cj§ == §use§)
         {
            _loc1_;
            §_-tz§.logError("You must establish a connection using API.connect() before using this command.");
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            return false;
         }
         return true;
      }
      
      public function §_-lu§(param1:String, param2:Function, param3:Object = null, param4:Object = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:§_-K4§ = new §_-K4§(param1);
         _loc5_.parameters = param3;
         _loc6_;
         _loc5_.§_-Va§ = param4;
         _loc7_;
         if(param2 != null)
         {
            _loc7_;
            _loc5_.addEventListener(§_-E6§.§_-tI§,param2);
            _loc7_;
            _loc7_;
         }
         _loc5_.send(this);
      }
      
      public function §_-P3§(param1:§_-K4§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         param1.send(this);
      }
      
      public function §_-mV§(param1:String, param2:Boolean = true, param3:Object = null) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:§_-K4§ = new §_-K4§(param1);
         _loc4_.parameters = param3;
         _loc6_;
         _loc6_;
         _loc4_.§_-mV§(this,param2);
      }
   }
}
