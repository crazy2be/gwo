package §_-Uq§
{
   public class §_-w§ extends Object
   {
      
      public function §_-w§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String)
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc10_;
         _loc10_;
         super();
         this.player_name = param1;
         _loc9_;
         _loc9_;
         this.player_uid = param2;
         _loc10_;
         _loc10_;
         this.room_name = param3;
         this.map_id = param4;
         this.thumbnail = param5;
         this.mods = param6;
         this.max_players = param7;
         this.is_private = param8;
         _loc9_;
         _loc9_;
         this.valid = true;
         _loc10_;
         if(param4.length < 5)
         {
            _loc10_;
            this.campaign_key = param4;
         }
      }
      
      public var player_name:String = "";
      
      public var player_uid:String = "";
      
      public var room_name:String = "";
      
      public var map_id:String = "";
      
      public var thumbnail:String = "";
      
      public var mods:String = "";
      
      public var max_players:String = "4";
      
      public var is_private:String = "0";
      
      public var campaign_key:String = "0";
      
      public var valid:Boolean = false;
   }
}
