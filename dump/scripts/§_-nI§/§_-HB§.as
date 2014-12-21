package §_-nI§
{
   public class §_-HB§ extends §_-kM§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-HB§(param1:§_-Iy§)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc2_;
         this.§_-97§ = param1;
         _loc3_;
         _loc3_;
         this.§_-KT§ = param1.connection;
         _loc3_;
         this.reset();
      }
      
      public static const §_-AO§:String = "fileId";
      
      public static const §_-iD§:String = "authorId";
      
      public static const §_-qk§:String = "authorName";
      
      public static const §_-K4§:String = "fileName";
      
      public static const §_-9O§:String = "createdOn";
      
      public static const §_-It§:String = "updatedOn";
      
      public static const §_-Xx§:String = "fileViews";
      
      public static const §_-52§:String = "fileStatus";
      
      private static const §false§:Array = [§_-AO§,§_-iD§,§_-qk§,§_-K4§,§_-9O§,§_-It§,§_-Xx§,§_-52§];
      
      public static const §_-T5§:String = "=";
      
      public static const §_-k3§:String = "<";
      
      public static const §_-dP§:String = ">";
      
      public static const §_-To§:String = "!=";
      
      public static const §_-vA§:String = "<=";
      
      public static const §_-PZ§:String = ">=";
      
      public static const §_-WF§:String = "*";
      
      public static const §_-tA§:String = "!*";
      
      public static const §in§:String = "!*=";
      
      public static const §_-9a§:String = "!=*";
      
      public static const §_-gp§:String = "*=";
      
      public static const §_-VX§:String = "=*";
      
      private static const §_-N9§:uint = 1;
      
      private static const §_-Xn§:uint = 2;
      
      private static const §_-ae§:uint = 3;
      
      private var §_-KT§:§_-J7§;
      
      private var §_-97§:§_-Iy§;
      
      private var §_-Sy§:uint = 1;
      
      private var §_-FO§:uint = 10;
      
      private var § try§:Boolean = false;
      
      private var §const§:Array;
      
      private var §_-BE§:uint;
      
      private var §_-vQ§:Array;
      
      private var §_-MS§:Array;
      
      private var §_-5a§:Array;
      
      private var §_-cg§:Array;
      
      private var §_-oe§:Array;
      
      private var §_-2L§:Array;
      
      public function get group() : §_-Iy§
      {
         return this.§_-97§;
      }
      
      public function get §_-L7§() : uint
      {
         return this.§_-FO§;
      }
      
      public function set §_-L7§(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-FO§ = Math.min(Math.max(param1,1),100);
      }
      
      public function get page() : uint
      {
         return this.§_-Sy§;
      }
      
      public function set page(param1:uint) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Sy§ = Math.max(param1,1);
      }
      
      public function §_-7s§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc4_;
         this.page--;
      }
      
      public function §_-jp§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.page++;
      }
      
      public function get §_-V0§() : Boolean
      {
         return this.§ try§;
      }
      
      public function set §_-V0§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§ try§ = param1;
      }
      
      public function get files() : Array
      {
         return this.§const§;
      }
      
      public function reset() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-Sy§ = 1;
         this.§_-FO§ = 10;
         _loc2_;
         this.§ try§ = false;
         this.§_-vQ§ = [];
         this.§_-MS§ = [];
         _loc1_;
         _loc1_;
         this.§_-5a§ = [];
         _loc1_;
         _loc1_;
         this.§_-cg§ = [];
         _loc1_;
         this.§_-oe§ = [];
         _loc1_;
         _loc1_;
         this.§_-2L§ = [];
         this.§const§ = [];
         this.§_-I7§();
      }
      
      public function clone() : §_-HB§
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:§_-HB§ = new §_-HB§(this.§_-97§);
         _loc1_.§_-Sy§ = this.§_-Sy§;
         _loc1_.§_-FO§ = this.§_-FO§;
         _loc1_.§ try§ = this.§ try§;
         _loc2_;
         _loc1_.§_-vQ§ = this.§_-vQ§.concat();
         _loc3_;
         _loc1_.§_-MS§ = this.§_-MS§.concat();
         _loc1_.§_-5a§ = this.§_-5a§.concat();
         _loc1_.§_-cg§ = this.§_-cg§.concat();
         _loc3_;
         _loc1_.§_-oe§ = this.§_-oe§.concat();
         return _loc1_;
      }
      
      private function §_-I7§() : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:§_-au§ = null;
         var _loc2_:§_-b7§ = null;
         while(true)
         {
            _loc6_;
            for each(_loc1_ in this.§_-97§.keys)
            {
               _loc5_;
               _loc5_;
               this.§_-vQ§.push(_loc1_.id);
            }
            break;
         }
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         for each(_loc2_ in this.§_-97§.ratings)
         {
            _loc6_;
            this.§_-MS§.push(_loc2_.id);
         }
      }
      
      public function §_-Mn§(param1:String, param2:String, param3:*) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:* = 0;
         var _loc5_:§_-au§ = null;
         var _loc6_:Array = null;
         var _loc7_:§_-b7§ = null;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc4_ = §false§.indexOf(param1);
         if((§false§.indexOf(param1)) >= 0)
         {
            _loc9_;
            _loc9_;
            this.§_-5a§.push({
               "field":_loc4_,
               "operator":param2,
               "value":param3
            });
         }
         else
         {
            _loc5_ = this.§_-97§.getKey(param1);
            if(_loc5_)
            {
               var param3:* = _loc5_.§_-M5§(param3);
               _loc8_;
               _loc8_;
               this.§_-cg§.push({
                  "key_id":_loc5_.id,
                  "operator":param2,
                  "value":param3
               });
               _loc8_;
               return;
            }
            _loc6_ = param1.split(".");
            _loc7_ = this.§_-97§.§_-UB§(_loc6_[0]);
            if(_loc7_)
            {
               _loc9_;
               _loc9_;
               if(_loc6_[1] != "votes")
               {
                  _loc9_;
                  param3 = _loc7_.§_-M5§(param3);
               }
               this.§_-oe§.push({
                  "rating_id":_loc7_.id,
                  "operator":param2,
                  "value":param3,
                  "column":(_loc6_[1]?_loc6_[1]:"score")
               });
               _loc8_;
               return;
            }
            _loc8_;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc9_;
            §_-NZ§.logError("The save group \"" + this.§_-97§.name + "\" does not have a field named \"" + param1 + "\".");
         }
      }
      
      public function sortOn(param1:String, param2:Boolean = false) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = 0;
         var _loc4_:§_-au§ = null;
         var _loc5_:Array = null;
         var _loc6_:§_-b7§ = null;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc3_ = §false§.indexOf(param1);
         _loc7_;
         if(_loc3_ >= 0)
         {
            _loc7_;
            _loc7_;
            this.§_-2L§.push({
               "table":§_-N9§,
               "field":_loc3_,
               "desc":param2
            });
         }
         else
         {
            _loc4_ = this.§_-97§.getKey(param1);
            if(_loc4_)
            {
               _loc8_;
               this.§_-2L§.push({
                  "table":§_-Xn§,
                  "field":_loc4_.id,
                  "desc":param2
               });
               _loc7_;
               _loc7_;
               return;
            }
            _loc5_ = param1.split(".");
            _loc6_ = this.§_-97§.§_-UB§(_loc5_[0]);
            if(_loc6_)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               this.§_-2L§.push({
                  "table":§_-ae§,
                  "field":_loc6_.id,
                  "desc":param2,
                  "extra":(_loc5_[1]?_loc5_[1]:"score")
               });
               _loc8_;
               _loc8_;
               return;
            }
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            §_-NZ§.logError("The save group \"" + this.§_-97§.name + "\" does not have a field named \"" + param1 + "\".");
         }
      }
      
      public function execute() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.page = this.§_-Sy§;
         _loc2_;
         _loc2_;
         _loc1_.num_results = this.§_-FO§;
         if(this.§ try§)
         {
            _loc1_.randomize = 1;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if((this.§_-vQ§) && (this.§_-vQ§.length))
         {
            _loc1_.lookup_keys = this.§_-vQ§;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if((this.§_-MS§) && (this.§_-MS§.length))
         {
            _loc1_.lookup_ratings = this.§_-MS§;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         if((this.§_-5a§) && (this.§_-5a§.length))
         {
            _loc1_.file_conditions = this.§_-5a§;
         }
         _loc3_;
         _loc3_;
         if((this.§_-cg§) && (this.§_-cg§.length))
         {
            _loc3_;
            _loc3_;
            _loc1_.key_conditions = this.§_-cg§;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if((this.§_-oe§) && (this.§_-oe§.length))
         {
            _loc1_.rating_conditions = this.§_-oe§;
         }
         _loc3_;
         if((this.§_-2L§) && (this.§_-2L§.length))
         {
            _loc1_.sort_conditions = this.§_-2L§;
         }
         this.§_-KT§.§_-PX§("lookupSaveFiles",this.§_-Xs§,{
            "publisher_id":this.§_-KT§.§_-6e§,
            "group_id":this.§_-97§.id,
            "query":_loc1_
         });
      }
      
      private function §_-Xs§(param1:§_-6O§) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         var _loc3_:uint = 0;
         var _loc4_:§_-MO§ = null;
         _loc5_;
         if(param1.success)
         {
            _loc2_ = param1.data;
            _loc5_;
            _loc5_;
            this.§const§ = [];
            _loc6_;
            _loc6_;
            if(_loc2_.files)
            {
               _loc5_;
               _loc5_;
               _loc3_ = 0;
               while(_loc3_ < _loc2_.files.length)
               {
                  _loc4_ = §_-MO§.§_-ti§(this.§_-97§,_loc2_.files[_loc3_]);
                  if(_loc4_)
                  {
                     _loc5_;
                     _loc5_;
                     this.§const§.push(_loc4_);
                     _loc6_;
                  }
                  _loc6_;
                  _loc6_;
                  _loc3_++;
               }
               _loc6_;
               _loc6_;
            }
            dispatchEvent(new §_-6O§(§_-6O§.§_-vD§,this));
         }
         else
         {
            _loc6_;
            §_-NZ§.logError("Query failed: " + param1.error);
            _loc6_;
            _loc6_;
            dispatchEvent(new §_-6O§(§_-6O§.§_-vD§,this,param1.error));
         }
      }
   }
}
