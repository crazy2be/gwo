package §_-8B§
{
   import flash.events.Event;
   
   public class §_-E6§ extends Event
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
      }
      
      public function §_-E6§(param1:String, param2:* = null, param3:String = null)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         super(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(!param3 || param3 == "" || param3 == §_-fJ§)
         {
            this.§_-gG§ = §_-fJ§;
            _loc4_;
            _loc4_;
            this.§_-IO§ = true;
         }
         else
         {
            this.§_-gG§ = param3;
            _loc5_;
            _loc5_;
            this.§_-IO§ = false;
         }
         if(param2)
         {
            _loc5_;
            _loc5_;
            this._data = param2;
         }
         else
         {
            this._data = {};
         }
      }
      
      static const §_-tI§:String = "commandComplete";
      
      static const §_-cH§:String = "medalUnlockConfirmed";
      
      static const §_-K6§:String = "iconLoaded";
      
      static const §_-bk§:String = "brdigeEventReceived";
      
      public static const §_-al§:String = "movieConnected";
      
      public static const §_-Sa§:String = "log";
      
      public static const §_-NU§:String = "medalUnlocked";
      
      public static const §_-Nr§:String = "scoresLoaded";
      
      public static const §_-p3§:String = "scorePosted";
      
      public static const §_-RS§:String = "queryComplete";
      
      public static const §var§:String = "fileLoaded";
      
      public static const §_-Mh§:String = "fileSaved";
      
      public static const §_-Ha§:String = "fileDeleted";
      
      public static const §extends§:String = "fileRequested";
      
      public static const §_-pi§:String = "voteComplete";
      
      public static const §_-N5§:String = "userSignedIn";
      
      public static const §_-fJ§:String = "noError";
      
      public static const §_-2x§:String = "unknownError";
      
      public static const §_-84§:String = "commandFailed";
      
      public static const § null§:String = "notConnected";
      
      public static const §_-2z§:String = "invalidArgument";
      
      public static const §_-S6§:String = "timedOut";
      
      public static const §_-zx§:String = "badFile";
      
      public static const §_-Ll§:String = "badResponse";
      
      public static const §_-XJ§:String = "errorSendingCommand";
      
      public static const §_-SK§:String = "hostBlocked";
      
      public static const §_-9b§:String = "alreadyVoted";
      
      public static const §_-Ea§:String = "notLoggedIn";
      
      public static const §_-eu§:String = "wrongEncryptionKey";
      
      public static const §_-S2§:String = "signInFailed";
      
      private var _data;
      
      private var §_-IO§:Boolean;
      
      private var §_-gG§:String;
      
      override public function clone() : Event
      {
         return new §_-E6§(type,this._data,this.§_-gG§);
      }
      
      public function get success() : Boolean
      {
         return this.§_-IO§;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      public function get error() : String
      {
         return this.§_-gG§;
      }
   }
}
