package §_-j2§
{
   public class MessageToWaiting extends Object
   {
      
      public function MessageToWaiting()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         _loc1_;
         this.names = new Array();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.names["LeaveWaitingArea"] = "da";
         _loc2_;
         _loc2_;
         this.names["QuitWaitingArea"] = "db";
         _loc1_;
         _loc2_;
         this.names["ChangeGameColour"] = "dc";
         _loc2_;
         this.names["SendChat"] = "dd";
         _loc2_;
         this.names["RequestRoomPlayers"] = "de";
         _loc1_;
         _loc2_;
         _loc2_;
         this.names["ConfirmJoin"] = "df";
         _loc2_;
         this.names["SwapTeam"] = "dg";
      }
      
      private var names:Array;
      
      public function §_-GG§(param1:String) : String
      {
         return this.names[param1];
      }
   }
}
