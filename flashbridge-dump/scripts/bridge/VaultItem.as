package bridge
{
   import playerio.VaultItem;
   
   public dynamic class VaultItem extends playerio.VaultItem
   {
      
      public function VaultItem(param1:String, param2:String, param3:Date)
      {
         super();
         this._id = param1;
         this._itemKey = param2;
         this._purchaseDate = param3;
      }
      
      private var _id:String;
      
      private var _itemKey:String;
      
      private var _purchaseDate:Date;
      
      override public function get id() : String
      {
         return _id;
      }
      
      override public function get itemKey() : String
      {
         return _itemKey;
      }
      
      override public function get purchaseDate() : Date
      {
         return _purchaseDate;
      }
      
      private var prefix:String = "    ";
      
      public function toString() : String
      {
         var _loc1_:String = "[playerio.VaultItem]";
         _loc1_ = _loc1_ + ("[itemKey=\"" + _itemKey + "\", id=\"" + _id + "\", purchaseDate=" + _purchaseDate + "] = " + serialize(prefix,this));
         return _loc1_;
      }
      
      private function serialize(param1:String, param2:*) : String
      {
         var _loc6_:* = 0;
         var _loc3_:String = "";
         var _loc4_:String = "";
         var _loc5_:Array = [];
         if(param2 is String)
         {
            return "\"" + param2 + "\"";
         }
         if(param2 is Array)
         {
            _loc3_ = "[\n";
            for(_loc4_ in param2)
            {
               if(param2[_loc4_] !== undefined)
               {
                  _loc5_.push({
                     "id":_loc4_,
                     "value":serialize(param1 + prefix,param2[_loc4_])
                  });
               }
            }
            _loc5_.sortOn("id",Array.NUMERIC);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc3_ = _loc3_ + (param1 + _loc5_[_loc6_].id + ":" + _loc5_[_loc6_].value + "\n");
               _loc6_++;
            }
            _loc3_ = _loc3_ + (param1.substring(4) + "]");
            return _loc3_;
         }
         if(param2 is Object)
         {
            if((param2.constructor == Object) || (param2.constructor == bridge.VaultItem))
            {
               _loc3_ = "{\n";
               for(_loc4_ in param2)
               {
                  if(param2[_loc4_] !== undefined)
                  {
                     _loc5_.push({
                        "id":_loc4_,
                        "value":serialize(param1 + prefix,param2[_loc4_])
                     });
                  }
               }
               _loc5_.sortOn("id");
               _loc6_ = 0;
               while(_loc6_ < _loc5_.length)
               {
                  _loc3_ = _loc3_ + (param1 + _loc5_[_loc6_].id + ":" + _loc5_[_loc6_].value + "\n");
                  _loc6_++;
               }
               _loc3_ = _loc3_ + (param1.substring(4) + "}");
               return _loc3_;
            }
         }
         if(param2 == null)
         {
            return param2;
         }
         return param2.toString();
      }
   }
}
