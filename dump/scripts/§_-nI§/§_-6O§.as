package §_-nI§
{
   import flash.events.Event;
   
   public class §_-6O§ extends Event
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
      }
      
      public function §_-6O§(param1:String, param2:* = null, param3:String = null)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!param3 || param3 == "" || param3 == §_-M3§)
         {
            this.§_-od§ = §_-M3§;
            _loc4_;
            this.§_-CB§ = true;
         }
         else
         {
            this.§_-od§ = param3;
            this.§_-CB§ = false;
            _loc5_;
         }
         if(param2)
         {
            this._data = param2;
         }
         else
         {
            this._data = {};
         }
      }
      
      static const §_-dE§:String = "commandComplete";
      
      static const §_-JE§:String = "medalUnlockConfirmed";
      
      static const §_-DV§:String = "iconLoaded";
      
      static const §_-wK§:String = "brdigeEventReceived";
      
      public static const §_-IA§:String = "movieConnected";
      
      public static const §_-09§:String = "log";
      
      public static const §_-7f§:String = "medalUnlocked";
      
      public static const §_-3f§:String = "scoresLoaded";
      
      public static const §_-DA§:String = "scorePosted";
      
      public static const §_-vD§:String = "queryComplete";
      
      public static const §_-dB§:String = "fileLoaded";
      
      public static const §_-EF§:String = "fileSaved";
      
      public static const §_-2q§:String = "fileDeleted";
      
      public static const §_-5-§:String = "fileRequested";
      
      public static const §_-yy§:String = "voteComplete";
      
      public static const §_-Hg§:String = "userSignedIn";
      
      public static const §_-M3§:String = "noError";
      
      public static const §_-MF§:String = "unknownError";
      
      public static const §_-vY§:String = "commandFailed";
      
      public static const §_-9§:String = "notConnected";
      
      public static const §_-gE§:String = "invalidArgument";
      
      public static const §_-eT§:String = "timedOut";
      
      public static const §_-Ag§:String = "badFile";
      
      public static const §_-0u§:String = "badResponse";
      
      public static const §_-g9§:String = "errorSendingCommand";
      
      public static const §_-Zy§:String = "hostBlocked";
      
      public static const §_-Yx§:String = "alreadyVoted";
      
      public static const §_-bp§:String = "notLoggedIn";
      
      public static const §_-Yy§:String = "wrongEncryptionKey";
      
      public static const §_-iO§:String = "signInFailed";
      
      private var _data;
      
      private var §_-CB§:Boolean;
      
      private var §_-od§:String;
      
      override public function clone() : Event
      {
         return new §_-6O§(type,this._data,this.§_-od§);
      }
      
      public function get success() : Boolean
      {
         return this.§_-CB§;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      public function get error() : String
      {
         return this.§_-od§;
      }
   }
}
