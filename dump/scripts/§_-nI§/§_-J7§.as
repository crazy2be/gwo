package §_-nI§
{
   import flash.system.Security;
   
   public class §_-J7§ extends Object
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-J7§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         this.reset();
      }
      
      public static const §_-wu§:String = "notConnected";
      
      public static const §_-rD§:String = "connecting";
      
      public static const §_-zb§:String = "connected";
      
      public var initialized:Boolean;
      
      public var §_-TR§:String = "notConnected";
      
      public var §_-uv§:String = "http://www.ngads.com/gateway_v2.php";
      
      public var §_-rp§:String;
      
      public var debug:Boolean;
      
      public var §_-Au§:uint;
      
      public var §_-6e§:uint;
      
      public var §_-4g§:String;
      
      public var sessionId:String;
      
      public var §_-MI§:String;
      
      public var username:String;
      
      public var §_-GQ§:uint;
      
      public var §_-5s§:uint;
      
      private var §_-Uk§:String;
      
      public var §_-Q9§:String;
      
      public function get §_-ah§() : String
      {
         return this.§_-Uk§;
      }
      
      public function set §_-ah§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         _loc3_;
         _loc3_;
         this.§_-Uk§ = param1;
         _loc3_;
         this.§_-Q9§ = null;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-Uk§)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = this.§_-Uk§.split("/");
            _loc3_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(!(_loc2_[0] == "file:") && !(this.§_-Uk§ == "localhost"))
            {
               _loc3_;
               _loc3_;
               this.§_-Q9§ = _loc2_.splice(0,3).join("/");
            }
         }
         if(!this.§_-Q9§)
         {
            _loc4_;
            _loc4_;
            this.§_-Q9§ = "localhost";
         }
      }
      
      public function get sandboxType() : String
      {
         return Security.sandboxType;
      }
      
      public function get §_-Zp§() : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if("localWithFile" === _loc1_)
         {
            _loc2_;
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if("localWithNetwork" === _loc1_)
            {
               _loc3_;
               _loc2_;
            }
            else
            {
               _loc3_;
               _loc2_;
               _loc2_;
               if("localTrusted" === _loc1_)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
               }
               else
               {
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  if("application" === _loc1_)
                  {
                     _loc2_;
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     switch(null)
                     {
                        case "remote":
                           _loc2_;
                           _loc2_;
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
      
      public function get §var §() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         return !(this.sessionId == null) && !(this.sessionId == "") && !(this.§_-6e§ == 0);
      }
      
      public function get connected() : Boolean
      {
         return this.§_-TR§ == §_-zb§;
      }
      
      public function reset() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-TR§ = §_-wu§;
         this.§_-4g§ = null;
         this.sessionId = null;
         this.§_-MI§ = null;
         this.username = null;
         this.§_-GQ§ = 0;
         this.§_-5s§ = 0;
      }
      
      public function §_-M§() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(!this.initialized)
         {
            _loc1_;
            _loc1_;
            §_-NZ§.logError("You must initialized the API using API.connect() before using this command.");
            _loc2_;
            _loc1_;
            return false;
         }
         return true;
      }
      
      public function §_-Im§() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         if(!this.§_-TR§ == §_-zb§)
         {
            _loc2_;
            _loc2_;
            §_-NZ§.logError("You must establish a connection using API.connect() before using this command.");
            _loc2_;
            _loc2_;
            _loc2_;
            return false;
         }
         return true;
      }
      
      public function §_-PX§(param1:String, param2:Function, param3:Object = null, param4:Object = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:§_-u1§ = new §_-u1§(param1);
         _loc5_.parameters = param3;
         _loc7_;
         _loc7_;
         _loc5_.§_-ap§ = param4;
         _loc7_;
         _loc7_;
         if(param2 != null)
         {
            _loc7_;
            _loc7_;
            _loc5_.addEventListener(§_-6O§.§_-dE§,param2);
            _loc6_;
            _loc6_;
         }
         _loc5_.send(this);
      }
      
      public function §_-2x§(param1:§_-u1§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.send(this);
      }
      
      public function §_-ZD§(param1:String, param2:Boolean = true, param3:Object = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:§_-u1§ = new §_-u1§(param1);
         _loc4_.parameters = param3;
         _loc6_;
         _loc6_;
         _loc4_.§_-ZD§(this,param2);
      }
   }
}
