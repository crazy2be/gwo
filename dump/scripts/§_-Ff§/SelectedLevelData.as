package §_-Ff§
{
   import §_-Uq§.§_-w§;
   import §_-Uq§.§_-Ch§;
   
   public class SelectedLevelData extends Object
   {
      
      public function SelectedLevelData()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-Td§:Boolean = true;
      
      public var §_-tn§:Boolean = false;
      
      public var campaign_key:int = 1;
      
      public var campaign_id:int = 0;
      
      public var level_id:int = 0;
      
      public var thumbnail:String = "";
      
      public var §_-p2§:int = 0;
      
      public var screen_total:int = 5;
      
      public var map_id:String = "";
      
      public var room_name:String = "";
      
      public var created_by:String = "";
      
      public var slot_id:int;
      
      public var mods:String = "";
      
      public var max_players:int = 4;
      
      public var is_private:Boolean = false;
      
      public var §_-hx§:int = 1;
      
      public var §_-yb§ = "-1";
      
      public var §_-Ga§:Boolean = false;
      
      public var start_x:Number;
      
      public var start_y:Number;
      
      public var §_-Wn§:Boolean = false;
      
      public var from_browse_games:Boolean = false;
      
      public function §_-5H§() : void
      {
      }
      
      public function §_-sh§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-yb§ = String(Math.floor(param1 / 10));
      }
      
      public function §_-Vv§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = SafeGlobal.campaigns[this.campaign_id].unlocked;
         _loc3_;
         if(_loc1_[this.level_id] == 1)
         {
            _loc3_;
            this.§_-tn§ = false;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-tn§ = true;
         }
      }
      
      public function §_-uM§(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         if(param1 == 0)
         {
            this.campaign_key = 0;
            this.§_-Td§ = false;
            this.§_-tn§ = false;
         }
         else
         {
            this.§_-Td§ = true;
            this.campaign_key = param1;
            _loc3_;
            _loc3_;
            this.campaign_id = SafeGlobal.§_-Py§(this.campaign_key);
            _loc4_;
            this.level_id = SafeGlobal.§_-xg§(this.campaign_key);
            _loc2_ = SafeGlobal.campaigns[this.campaign_id].unlocked;
            _loc3_;
            _loc3_;
            if(_loc2_[this.level_id] == 1)
            {
               _loc4_;
               _loc4_;
               this.§_-tn§ = false;
               _loc3_;
            }
            else
            {
               this.§_-tn§ = true;
            }
         }
      }
      
      public function §_-rn§(param1:§_-w§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1.campaign_key == "0")
         {
            this.§_-Td§ = false;
            _loc3_;
            this.campaign_key = 0;
         }
         else
         {
            this.§_-Td§ = true;
            this.§_-uM§(parseInt(param1.campaign_key));
         }
         this.room_name = param1.room_name;
         _loc3_;
         _loc3_;
         this.map_id = param1.map_id;
         this.max_players = parseInt(param1.max_players);
         _loc3_;
         _loc3_;
         this.mods = param1.mods;
         if(param1.is_private == "0")
         {
            this.is_private = false;
         }
         else
         {
            this.is_private = true;
            _loc2_;
         }
         this.thumbnail = param1.thumbnail;
      }
      
      public function §_-OL§(param1:§_-Ch§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(param1.CampaignKey == "0")
         {
            _loc3_;
            _loc3_;
            this.§_-Td§ = false;
            this.campaign_key = 0;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-Td§ = true;
            this.§_-uM§(parseInt(param1.CampaignKey));
         }
         this.room_name = param1.RoomName;
         this.map_id = param1.MapId;
         this.max_players = parseInt(param1.MaxPlayers);
         this.mods = param1.Mods;
         _loc3_;
         if(param1.Private == "0")
         {
            this.is_private = false;
            _loc2_;
         }
         else
         {
            this.is_private = true;
         }
         this.thumbnail = param1.Thumbnail;
      }
   }
}
