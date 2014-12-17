package §_-Cv§
{
   import §_-j2§.§_-wG§;
   import §_-j2§.§_-FE§;
   
   public class SelectedLevelData extends Object
   {
      
      public function SelectedLevelData()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-L6§:Boolean = true;
      
      public var §_-uM§:Boolean = false;
      
      public var campaign_key:int = 1;
      
      public var campaign_id:int = 0;
      
      public var level_id:int = 0;
      
      public var thumbnail:String = "";
      
      public var §_-Tv§:int = 0;
      
      public var screen_total:int = 5;
      
      public var map_id:String = "";
      
      public var room_name:String = "";
      
      public var created_by:String = "";
      
      public var slot_id:int;
      
      public var mods:String = "";
      
      public var max_players:int = 4;
      
      public var is_private:Boolean = false;
      
      public var §_-RP§:int = 1;
      
      public var §_-Ar§ = "-1";
      
      public var §_-op§:Boolean = false;
      
      public var start_x:Number;
      
      public var start_y:Number;
      
      public var §_-F5§:Boolean = false;
      
      public var from_browse_games:Boolean = false;
      
      public function §_-Uj§() : void
      {
      }
      
      public function §_-kD§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Ar§ = String(Math.floor(param1 / 10));
      }
      
      public function §_-qP§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = SafeGlobal.campaigns[this.campaign_id].unlocked;
         _loc3_;
         if(_loc1_[this.level_id] == 1)
         {
            _loc3_;
            this.§_-uM§ = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-uM§ = true;
         }
      }
      
      public function §_-os§(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         if(param1 == 0)
         {
            _loc3_;
            this.campaign_key = 0;
            this.§_-L6§ = false;
            this.§_-uM§ = false;
            _loc3_;
         }
         else
         {
            this.§_-L6§ = true;
            this.campaign_key = param1;
            _loc4_;
            this.campaign_id = SafeGlobal.§_-QS§(this.campaign_key);
            this.level_id = SafeGlobal.§_-9c§(this.campaign_key);
            _loc2_ = SafeGlobal.campaigns[this.campaign_id].unlocked;
            _loc4_;
            if(_loc2_[this.level_id] == 1)
            {
               _loc4_;
               this.§_-uM§ = false;
               _loc4_;
            }
            else
            {
               this.§_-uM§ = true;
            }
         }
      }
      
      public function §_-Hx§(param1:§_-wG§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1.campaign_key == "0")
         {
            _loc3_;
            _loc3_;
            this.§_-L6§ = false;
            this.campaign_key = 0;
         }
         else
         {
            this.§_-L6§ = true;
            _loc3_;
            this.§_-os§(parseInt(param1.campaign_key));
            _loc3_;
         }
         this.room_name = param1.room_name;
         _loc2_;
         this.map_id = param1.map_id;
         _loc2_;
         this.max_players = parseInt(param1.max_players);
         this.mods = param1.mods;
         if(param1.is_private == "0")
         {
            this.is_private = false;
            _loc2_;
         }
         else
         {
            this.is_private = true;
            _loc2_;
            _loc2_;
         }
         this.thumbnail = param1.thumbnail;
      }
      
      public function §_-jx§(param1:§_-FE§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1.CampaignKey == "0")
         {
            this.§_-L6§ = false;
            _loc2_;
            this.campaign_key = 0;
            _loc2_;
         }
         else
         {
            this.§_-L6§ = true;
            this.§_-os§(parseInt(param1.CampaignKey));
            _loc2_;
            _loc2_;
         }
         this.room_name = param1.RoomName;
         this.map_id = param1.MapId;
         _loc3_;
         this.max_players = parseInt(param1.MaxPlayers);
         this.mods = param1.Mods;
         if(param1.Private == "0")
         {
            _loc3_;
            _loc3_;
            this.is_private = false;
         }
         else
         {
            this.is_private = true;
         }
         this.thumbnail = param1.Thumbnail;
      }
   }
}
