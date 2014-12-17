package §_-8B§
{
   public class §_-KJ§ extends §_-Et§
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
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-KJ§(param1:§_-lX§)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.§_-5g§ = param1;
         _loc2_;
         _loc2_;
         this.§_-tv§ = param1.connection;
         _loc2_;
         _loc2_;
         this.reset();
      }
      
      public static const §_-Sb§:String = "fileId";
      
      public static const §_-V-§:String = "authorId";
      
      public static const §_-Lt§:String = "authorName";
      
      public static const §_-vQ§:String = "fileName";
      
      public static const §_-of§:String = "createdOn";
      
      public static const §_-Ly§:String = "updatedOn";
      
      public static const §_-pZ§:String = "fileViews";
      
      public static const §_-tR§:String = "fileStatus";
      
      private static const §_-y2§:Array = [§_-Sb§,§_-V-§,§_-Lt§,§_-vQ§,§_-of§,§_-Ly§,§_-pZ§,§_-tR§];
      
      public static const §_-6Z§:String = "=";
      
      public static const §_-bG§:String = "<";
      
      public static const §_-Q-§:String = ">";
      
      public static const §_-n9§:String = "!=";
      
      public static const §_-22§:String = "<=";
      
      public static const §_-fm§:String = ">=";
      
      public static const §continue§:String = "*";
      
      public static const §_-DG§:String = "!*";
      
      public static const §_-24§:String = "!*=";
      
      public static const §_-p9§:String = "!=*";
      
      public static const §_-1d§:String = "*=";
      
      public static const §_-iK§:String = "=*";
      
      private static const §_-Tn§:uint = 1;
      
      private static const §_-Nv§:uint = 2;
      
      private static const §_-KN§:uint = 3;
      
      private var §_-tv§:§_-Io§;
      
      private var §_-5g§:§_-lX§;
      
      private var §_-pj§:uint = 1;
      
      private var §_-9Z§:uint = 10;
      
      private var §_-GJ§:Boolean = false;
      
      private var §_-co§:Array;
      
      private var §_-Gl§:uint;
      
      private var §_-cV§:Array;
      
      private var §_-aE§:Array;
      
      private var §_-an§:Array;
      
      private var §_-RX§:Array;
      
      private var §_-ok§:Array;
      
      private var §_-oP§:Array;
      
      public function get group() : §_-lX§
      {
         return this.§_-5g§;
      }
      
      public function get §_-VG§() : uint
      {
         return this.§_-9Z§;
      }
      
      public function set §_-VG§(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-9Z§ = Math.min(Math.max(param1,1),100);
      }
      
      public function get page() : uint
      {
         return this.§_-pj§;
      }
      
      public function set page(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-pj§ = Math.max(param1,1);
      }
      
      public function §_-Yx§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         _loc4_;
         this.page--;
      }
      
      public function §import§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.page++;
      }
      
      public function get §_-bs§() : Boolean
      {
         return this.§_-GJ§;
      }
      
      public function set §_-bs§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-GJ§ = param1;
      }
      
      public function get files() : Array
      {
         return this.§_-co§;
      }
      
      public function reset() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-pj§ = 1;
         _loc2_;
         _loc2_;
         this.§_-9Z§ = 10;
         _loc2_;
         _loc2_;
         this.§_-GJ§ = false;
         _loc1_;
         this.§_-cV§ = [];
         this.§_-aE§ = [];
         this.§_-an§ = [];
         _loc2_;
         this.§_-RX§ = [];
         this.§_-ok§ = [];
         _loc2_;
         _loc2_;
         this.§_-oP§ = [];
         _loc1_;
         _loc1_;
         this.§_-co§ = [];
         this.§_-tC§();
      }
      
      public function clone() : §_-KJ§
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-KJ§ = new §_-KJ§(this.§_-5g§);
         _loc1_.§_-pj§ = this.§_-pj§;
         _loc1_.§_-9Z§ = this.§_-9Z§;
         _loc3_;
         _loc3_;
         _loc1_.§_-GJ§ = this.§_-GJ§;
         _loc2_;
         _loc2_;
         _loc1_.§_-cV§ = this.§_-cV§.concat();
         _loc1_.§_-aE§ = this.§_-aE§.concat();
         _loc1_.§_-an§ = this.§_-an§.concat();
         _loc1_.§_-RX§ = this.§_-RX§.concat();
         _loc2_;
         _loc1_.§_-ok§ = this.§_-ok§.concat();
         return _loc1_;
      }
      
      private function §_-tC§() : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:§_-lW§ = null;
         var _loc2_:§_-yV§ = null;
         while(true)
         {
            _loc6_;
            _loc6_;
            for each(_loc1_ in this.§_-5g§.keys)
            {
               _loc6_;
               this.§_-cV§.push(_loc1_.id);
            }
            break;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         for each(_loc2_ in this.§_-5g§.ratings)
         {
            _loc6_;
            _loc6_;
            this.§_-aE§.push(_loc2_.id);
         }
      }
      
      public function §_-BI§(param1:String, param2:String, param3:*) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:* = 0;
         var _loc5_:§_-lW§ = null;
         var _loc6_:Array = null;
         var _loc7_:§_-yV§ = null;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc4_ = §_-y2§.indexOf(param1);
         if((§_-y2§.indexOf(param1)) >= 0)
         {
            _loc8_;
            this.§_-an§.push({
               "field":_loc4_,
               "operator":param2,
               "value":param3
            });
         }
         else
         {
            _loc5_ = this.§_-5g§.getKey(param1);
            if(_loc5_)
            {
               var param3:* = _loc5_.§_-d7§(param3);
               _loc9_;
               this.§_-RX§.push({
                  "key_id":_loc5_.id,
                  "operator":param2,
                  "value":param3
               });
               _loc8_;
               return;
            }
            _loc6_ = param1.split(".");
            _loc7_ = this.§_-5g§.§_-TX§(_loc6_[0]);
            if(_loc7_)
            {
               _loc9_;
               _loc9_;
               if(_loc6_[1] != "votes")
               {
                  _loc9_;
                  _loc9_;
                  param3 = _loc7_.§_-d7§(param3);
               }
               this.§_-ok§.push({
                  "rating_id":_loc7_.id,
                  "operator":param2,
                  "value":param3,
                  "column":(_loc6_[1]?_loc6_[1]:"score")
               });
               _loc8_;
               _loc8_;
               return;
            }
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            §_-tz§.logError("The save group \"" + this.§_-5g§.name + "\" does not have a field named \"" + param1 + "\".");
         }
      }
      
      public function sortOn(param1:String, param2:Boolean = false) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = 0;
         var _loc4_:§_-lW§ = null;
         var _loc5_:Array = null;
         var _loc6_:§_-yV§ = null;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc3_ = §_-y2§.indexOf(param1);
         _loc8_;
         if(_loc3_ >= 0)
         {
            _loc7_;
            _loc7_;
            this.§_-oP§.push({
               "table":§_-Tn§,
               "field":_loc3_,
               "desc":param2
            });
         }
         else
         {
            _loc4_ = this.§_-5g§.getKey(param1);
            if(_loc4_)
            {
               _loc8_;
               _loc8_;
               this.§_-oP§.push({
                  "table":§_-Nv§,
                  "field":_loc4_.id,
                  "desc":param2
               });
               _loc8_;
               return;
            }
            _loc5_ = param1.split(".");
            _loc6_ = this.§_-5g§.§_-TX§(_loc5_[0]);
            if(_loc6_)
            {
               _loc7_;
               _loc8_;
               _loc8_;
               this.§_-oP§.push({
                  "table":§_-KN§,
                  "field":_loc6_.id,
                  "desc":param2,
                  "extra":(_loc5_[1]?_loc5_[1]:"score")
               });
               _loc8_;
               return;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            §_-tz§.logError("The save group \"" + this.§_-5g§.name + "\" does not have a field named \"" + param1 + "\".");
         }
      }
      
      public function execute() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc3_;
         _loc3_;
         _loc1_.page = this.§_-pj§;
         _loc2_;
         _loc1_.num_results = this.§_-9Z§;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.§_-GJ§)
         {
            _loc1_.randomize = 1;
            _loc2_;
            _loc2_;
         }
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if((this.§_-cV§) && (this.§_-cV§.length))
         {
            _loc1_.lookup_keys = this.§_-cV§;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if((this.§_-aE§) && (this.§_-aE§.length))
         {
            _loc3_;
            _loc1_.lookup_ratings = this.§_-aE§;
         }
         _loc2_;
         _loc2_;
         if((this.§_-an§) && (this.§_-an§.length))
         {
            _loc2_;
            _loc2_;
            _loc1_.file_conditions = this.§_-an§;
         }
         _loc2_;
         _loc2_;
         if((this.§_-RX§) && (this.§_-RX§.length))
         {
            _loc1_.key_conditions = this.§_-RX§;
         }
         _loc3_;
         _loc3_;
         if((this.§_-ok§) && (this.§_-ok§.length))
         {
            _loc2_;
            _loc2_;
            _loc1_.rating_conditions = this.§_-ok§;
            _loc2_;
            _loc2_;
         }
         _loc3_;
         if((this.§_-oP§) && (this.§_-oP§.length))
         {
            _loc1_.sort_conditions = this.§_-oP§;
         }
         this.§_-tv§.§_-lu§("lookupSaveFiles",this.§_-jZ§,{
            "publisher_id":this.§_-tv§.§_-eV§,
            "group_id":this.§_-5g§.id,
            "query":_loc1_
         });
      }
      
      private function §_-jZ§(param1:§_-E6§) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         var _loc3_:uint = 0;
         var _loc4_:§_-IH§ = null;
         _loc5_;
         _loc5_;
         if(param1.success)
         {
            _loc2_ = param1.data;
            _loc6_;
            _loc6_;
            this.§_-co§ = [];
            _loc5_;
            _loc5_;
            if(_loc2_.files)
            {
               _loc6_;
               _loc6_;
               _loc3_ = 0;
               while(_loc3_ < _loc2_.files.length)
               {
                  _loc4_ = §_-IH§.§_-rR§(this.§_-5g§,_loc2_.files[_loc3_]);
                  if(_loc4_)
                  {
                     _loc5_;
                     this.§_-co§.push(_loc4_);
                     _loc5_;
                  }
                  _loc6_;
                  _loc6_;
                  _loc3_++;
               }
               _loc5_;
            }
            dispatchEvent(new §_-E6§(§_-E6§.§_-RS§,this));
         }
         else
         {
            _loc6_;
            §_-tz§.logError("Query failed: " + param1.error);
            _loc5_;
            _loc5_;
            dispatchEvent(new §_-E6§(§_-E6§.§_-RS§,this,param1.error));
         }
      }
   }
}
