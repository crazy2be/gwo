package §_-nI§
{
   public class §_-ld§ extends §_-kM§
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
      }
      
      public function §_-ld§(param1:§_-J7§, param2:String, param3:uint)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this.§_-KT§ = param1;
         _loc5_;
         _loc5_;
         this._name = param2;
         _loc5_;
         _loc5_;
         this.§_-Ee§ = param3;
      }
      
      public static const §_-WI§:String = "Today";
      
      public static const §_-JJ§:String = "This Week";
      
      public static const §_-sd§:String = "This Month";
      
      public static const §_-iU§:String = "This Year";
      
      public static const §implements§:String = "All-Time";
      
      private var §_-KT§:§_-J7§;
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var §_-ZB§:String = "All-Time";
      
      private var §_-O5§:uint = 1;
      
      private var §_-ZG§:uint = 10;
      
      private var _tag:String;
      
      private var §_-N8§:Array;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get scores() : Array
      {
         return this.§_-N8§;
      }
      
      public function get period() : String
      {
         return this.§_-ZB§;
      }
      
      public function set period(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-ZB§ = param1;
      }
      
      public function get §_-4i§() : uint
      {
         return this.§_-O5§;
      }
      
      public function set §_-4i§(param1:uint) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-O5§ = Math.max(1,param1);
      }
      
      public function get §_-ff§() : uint
      {
         return this.§_-ZG§;
      }
      
      public function set §_-ff§(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-ZG§ = param1;
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
      
      public function set tag(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this._tag = param1;
      }
      
      public function get page() : uint
      {
         return Math.ceil((this.§_-O5§ - 1) / this.§_-ZG§) + 1;
      }
      
      public function §_-7s§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-4i§ > this.§_-ZG§)
         {
            _loc2_;
            this.§_-4i§ = this.§_-4i§ - this.§_-ZG§;
         }
      }
      
      public function §_-jp§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-4i§ = this.§_-4i§ + this.§_-ZG§;
      }
      
      public function loadScores() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-KT§.§_-PX§("loadScores",this.§_-gN§,{
            "publisher_id":this.§_-KT§.§_-6e§,
            "board":this.§_-Ee§,
            "page":(this.§_-O5§ - 1) / this.§_-ZG§ + 1,
            "num_results":this.§_-ZG§,
            "period":this.§_-ZB§,
            "tag":this._tag
         });
      }
      
      public function postScore(param1:Number, param2:String = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(isNaN(param1))
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            §_-NZ§.logError("Cannot post invalid score: " + param1);
            dispatchEvent(new §_-6O§(§_-6O§.§_-DA§,null,§_-6O§.§_-gE§));
            _loc4_;
            return;
         }
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         §_-NZ§.§_-Bv§("Posting a score of " + param1 + " by " + this.§_-KT§.username + " to scoreboard \"" + this._name + "\"...");
         this.§_-KT§.§_-PX§("postScore",this.§_-IM§,null,{
            "user_name":this.§_-KT§.username,
            "board":this.§_-Ee§,
            "value":param1,
            "tag":param2
         });
      }
      
      private function §_-gN§(param1:§_-6O§) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         var _loc2_:Object = param1.data;
         _loc6_;
         this.§_-N8§ = [];
         if(_loc2_.first_result)
         {
            _loc6_;
            _loc6_;
            _loc3_ = _loc2_.first_result;
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = this.§_-O5§;
         }
         if(_loc2_.scores)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.scores.length)
            {
               _loc5_ = _loc2_.scores[_loc4_];
               if(_loc5_)
               {
                  _loc6_;
                  _loc6_;
                  this.§_-N8§[_loc4_] = new §_-V4§(_loc3_,_loc5_.username,_loc5_.value,_loc5_.numeric_value,_loc5_.tag);
                  _loc7_;
               }
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_++;
               _loc7_;
               _loc6_;
               _loc3_++;
            }
            _loc7_;
            _loc7_;
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-3f§,this));
      }
      
      private function §_-IM§(param1:§_-6O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc5_;
         if(param1.success)
         {
            _loc4_;
            §_-NZ§.§_-Bv§("Score posted!");
            _loc4_;
            _loc2_ = param1.data;
            _loc3_ = {};
            _loc4_;
            _loc3_.score = _loc2_.value;
            _loc5_;
            _loc5_;
            _loc3_.scoreBoard = this;
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc5_;
            §_-NZ§.logError("Error posting score: " + param1.error);
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-DA§,_loc3_,param1.error));
      }
      
      override public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         return "Scoreboard: " + this._name;
      }
   }
}
