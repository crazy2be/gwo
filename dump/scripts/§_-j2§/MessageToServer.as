package §_-j2§
{
   public class MessageToServer extends Object
   {
      
      public function MessageToServer()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.names = new Array();
         _loc1_;
         _loc1_;
         _loc1_;
         this.names["PlayerReady"] = "a";
         _loc2_;
         _loc2_;
         _loc2_;
         this.names["SetupReady"] = "b";
         _loc1_;
         _loc1_;
         this.names["UseWeapon"] = "c";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.names["EndOfTurn"] = "d";
         this.names["EndSim"] = "e";
         this.names["StartWalk"] = "f";
         _loc1_;
         _loc2_;
         _loc2_;
         this.names["StopWalk"] = "g";
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.names["SendChat"] = "h";
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.names["BackToLobby"] = "i";
         _loc1_;
         _loc1_;
         this.names["Taunt"] = "j";
         _loc1_;
         _loc1_;
         this.names["SendMD5s"] = "k";
         this.names["LevelRebuilt"] = "l";
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.names["ConfirmPlayingAgain"] = "m";
         _loc1_;
         _loc1_;
         _loc1_;
         this.names["PlayerQuitsGame"] = "n";
         _loc2_;
         _loc2_;
         this.names["Validate"] = "o";
         _loc2_;
         _loc1_;
         this.names["LogSyncError"] = "p";
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.names["CacheProgress"] = "q";
         _loc1_;
         _loc1_;
         _loc2_;
         this.names["RequestLatestCache"] = "r";
         _loc1_;
         _loc1_;
         this.names["FlashErrorLog"] = "s";
         _loc1_;
         _loc1_;
         _loc1_;
         this.names["AFKKicked"] = "t";
         this.names["AFKBack"] = "u";
      }
      
      private var names:Array;
      
      public function §_-GG§(param1:String) : String
      {
         return this.names[param1];
      }
   }
}
