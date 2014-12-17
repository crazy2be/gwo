package §_-8B§
{
   public class §_-nF§ extends §_-Et§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-nF§(param1:§_-Io§, param2:String, param3:uint)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         super();
         _loc4_;
         this.§_-tv§ = param1;
         _loc5_;
         this._name = param2;
         _loc5_;
         _loc5_;
         this.§_-C7§ = param3;
      }
      
      public static const §_-pm§:String = "Today";
      
      public static const §_-wf§:String = "This Week";
      
      public static const §_-pE§:String = "This Month";
      
      public static const §_-PD§:String = "This Year";
      
      public static const §_-jN§:String = "All-Time";
      
      private var §_-tv§:§_-Io§;
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var §_-NF§:String = "All-Time";
      
      private var §_-Je§:uint = 1;
      
      private var §_-Cs§:uint = 10;
      
      private var _tag:String;
      
      private var §_-O4§:Array;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get scores() : Array
      {
         return this.§_-O4§;
      }
      
      public function get period() : String
      {
         return this.§_-NF§;
      }
      
      public function set period(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-NF§ = param1;
      }
      
      public function get §_-Qf§() : uint
      {
         return this.§_-Je§;
      }
      
      public function set §_-Qf§(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-Je§ = Math.max(1,param1);
      }
      
      public function get §_-tr§() : uint
      {
         return this.§_-Cs§;
      }
      
      public function set §_-tr§(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Cs§ = param1;
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
      
      public function set tag(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this._tag = param1;
      }
      
      public function get page() : uint
      {
         return Math.ceil((this.§_-Je§ - 1) / this.§_-Cs§) + 1;
      }
      
      public function §_-Yx§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-Qf§ > this.§_-Cs§)
         {
            _loc2_;
            _loc2_;
            this.§_-Qf§ = this.§_-Qf§ - this.§_-Cs§;
         }
      }
      
      public function §import§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Qf§ = this.§_-Qf§ + this.§_-Cs§;
      }
      
      public function loadScores() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-tv§.§_-lu§("loadScores",this.§_-NZ§,{
            "publisher_id":this.§_-tv§.§_-eV§,
            "board":this.§_-C7§,
            "page":(this.§_-Je§ - 1) / this.§_-Cs§ + 1,
            "num_results":this.§_-Cs§,
            "period":this.§_-NF§,
            "tag":this._tag
         });
      }
      
      public function postScore(param1:Number, param2:String = null) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(isNaN(param1))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            §_-tz§.logError("Cannot post invalid score: " + param1);
            _loc3_;
            _loc3_;
            dispatchEvent(new §_-E6§(§_-E6§.§_-p3§,null,§_-E6§.§_-2z§));
            _loc3_;
            return;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         §_-tz§.§_-Lq§("Posting a score of " + param1 + " by " + this.§_-tv§.username + " to scoreboard \"" + this._name + "\"...");
         _loc4_;
         this.§_-tv§.§_-lu§("postScore",this.§_-M1§,null,{
            "user_name":this.§_-tv§.username,
            "board":this.§_-C7§,
            "value":param1,
            "tag":param2
         });
      }
      
      private function §_-NZ§(param1:§_-E6§) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         var _loc2_:Object = param1.data;
         this.§_-O4§ = [];
         _loc6_;
         if(_loc2_.first_result)
         {
            _loc7_;
            _loc7_;
            _loc3_ = _loc2_.first_result;
            _loc6_;
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = this.§_-Je§;
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
                  this.§_-O4§[_loc4_] = new §_-kU§(_loc3_,_loc5_.username,_loc5_.value,_loc5_.numeric_value,_loc5_.tag);
                  _loc7_;
               }
               _loc6_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_++;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc3_++;
            }
            _loc6_;
            _loc6_;
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-Nr§,this));
      }
      
      private function §_-M1§(param1:§_-E6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc4_;
         if(param1.success)
         {
            _loc4_;
            §_-tz§.§_-Lq§("Score posted!");
            _loc4_;
            _loc4_;
            _loc2_ = param1.data;
            _loc3_ = {};
            _loc5_;
            _loc3_.score = _loc2_.value;
            _loc5_;
            _loc5_;
            _loc3_.scoreBoard = this;
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
            §_-tz§.logError("Error posting score: " + param1.error);
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-p3§,_loc3_,param1.error));
      }
      
      override public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         return "Scoreboard: " + this._name;
      }
   }
}
