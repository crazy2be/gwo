package bridge.utils
{
   import bridge.VaultItem;
   import bridge.generated.messages.*;
   import bridge.PayVaultHistoryEntry;
   import bridge.generated.PlayerIOError;
   import bridge.RoomInfo;
   import bridge.DatabaseObject;
   import flash.utils.ByteArray;
   import bridge.helpers.FieldToBeRemoved;
   import bridge.generated.ValueType;
   
   public class Converter extends Object
   {
      
      public function Converter()
      {
         super();
      }
      
      public static function toVaultItemArray(param1:Array) : Array
      {
         var _loc4_:PayVaultItem = null;
         var _loc5_:Date = null;
         var _loc6_:VaultItem = null;
         var _loc7_:* = 0;
         var _loc8_:ObjectProperty = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as PayVaultItem;
            _loc5_ = new Date();
            _loc5_.setTime(_loc4_.purchaseDate);
            _loc6_ = new VaultItem(_loc4_.id,_loc4_.itemKey,_loc5_);
            _loc7_ = 0;
            while(_loc7_ < _loc4_.properties.length)
            {
               _loc8_ = _loc4_.properties[_loc7_];
               _loc6_[_loc8_.name] = deserializeValueObject(_loc8_.value);
               _loc7_++;
            }
            _loc2_.push(_loc6_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function toPayVaultHistoryEntryArray(param1:Array) : Array
      {
         var _loc4_:PayVaultHistoryEntry = null;
         var _loc5_:Date = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as bridge.generated.messages.PayVaultHistoryEntry;
            _loc5_ = new Date();
            _loc5_.setTime(_loc4_.timestamp);
            _loc2_.push(new bridge.PayVaultHistoryEntry(_loc4_.amount,_loc4_.type,_loc5_,_loc4_.itemKeys,_loc4_.reason,_loc4_.providerTransactionId,_loc4_.providerPrice));
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function toBuyItemInfoArray(param1:Array) : Array
      {
         var _loc4_:Object = null;
         var _loc5_:PayVaultBuyItemInfo = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(!(_loc4_.itemKey is String))
            {
               throw new PlayerIOError("itemKey not defined on parsed item",2);
            }
            else
            {
               _loc5_ = new PayVaultBuyItemInfo();
               _loc5_.itemKey = _loc4_.itemKey;
               _loc5_.payload = getObjectProperties(_loc4_,false,"itemKey");
               _loc2_.push(_loc5_);
               _loc3_++;
               continue;
            }
         }
         return _loc2_;
      }
      
      public static function toKeyValueArray(param1:Object) : Array
      {
         var _loc3_:String = null;
         var _loc4_:KeyValuePair = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = new KeyValuePair();
            _loc4_.key = _loc3_;
            _loc4_.value = param1[_loc3_].toString();
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function toKeyValueObject(param1:Array) : Object
      {
         var _loc4_:KeyValuePair = null;
         var _loc2_:Object = {};
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as KeyValuePair;
            _loc2_[_loc4_.key] = _loc4_.value;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function toRoomInfoArray(param1:Array) : Array
      {
         var _loc4_:RoomInfo = null;
         var _loc5_:RoomInfo = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as bridge.generated.messages.RoomInfo;
            _loc5_ = new bridge.RoomInfo(_loc4_.id,_loc4_.roomType,_loc4_.onlineUsers,Converter.toKeyValueObject(_loc4_.roomData));
            _loc2_.push(_loc5_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function toDatabaseObject(param1:String, param2:BigDBObject, param3:Boolean, param4:Function) : DatabaseObject
      {
         var _loc6_:ObjectProperty = null;
         if(param2 == null)
         {
            return null;
         }
         var _loc5_:DatabaseObject = new DatabaseObject(param1,param2.key,param2.version,param2.creator,param3,param4);
         for each(_loc6_ in param2.properties)
         {
            _loc5_[_loc6_.name] = deserializeValueObject(_loc6_.value);
         }
         if(param4 != null)
         {
            _loc5_.commit();
         }
         return _loc5_;
      }
      
      public static function toSparseBigDBObject(param1:String, param2:String, param3:int, param4:Object) : BigDBObject
      {
         var _loc6_:String = null;
         var _loc7_:ObjectProperty = null;
         var _loc5_:BigDBObject = new BigDBObject();
         _loc5_.key = param1;
         _loc5_.version = param2;
         _loc5_.creator = param3;
         var param4:Object = param4 || {};
         for(_loc6_ in param4)
         {
            if(param4[_loc6_] !== undefined)
            {
               _loc7_ = new ObjectProperty();
               _loc7_.name = _loc6_;
               _loc7_.value = getValueObject(param4[_loc6_],true);
               _loc5_.properties.push(_loc7_);
            }
         }
         return _loc5_;
      }
      
      public static function toBigDBObject(param1:String, param2:String, param3:int, param4:Object) : BigDBObject
      {
         var _loc6_:String = null;
         var _loc7_:ObjectProperty = null;
         var _loc5_:BigDBObject = new BigDBObject();
         _loc5_.key = param1;
         _loc5_.version = param2;
         _loc5_.creator = param3;
         var param4:Object = param4 || {};
         for(_loc6_ in param4)
         {
            _loc7_ = new ObjectProperty();
            _loc7_.name = _loc6_;
            _loc7_.value = getValueObject(param4[_loc6_]);
            _loc5_.properties.push(_loc7_);
         }
         return _loc5_;
      }
      
      public static function toNewBigDBObject(param1:String, param2:String, param3:Object) : NewBigDBObject
      {
         var _loc5_:String = null;
         var _loc6_:ObjectProperty = null;
         var _loc4_:NewBigDBObject = new NewBigDBObject();
         _loc4_.table = param1;
         _loc4_.key = param2;
         var param3:Object = param3 || {};
         for(_loc5_ in param3)
         {
            _loc6_ = new ObjectProperty();
            _loc6_.name = _loc5_;
            _loc6_.value = getValueObject(param3[_loc5_],true);
            _loc4_.properties.push(_loc6_);
         }
         return _loc4_;
      }
      
      public static function toValueObjectArray(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(getValueObject(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }
      
      private static function getValueObject(param1:*, param2:Boolean = false) : ValueObject
      {
         var _loc4_:ByteArray = null;
         var _loc5_:ByteArray = null;
         var _loc3_:ValueObject = new ValueObject();
         if(param1 is FieldToBeRemoved)
         {
            return null;
         }
         if(param1 === undefined)
         {
            return null;
         }
         if(param1 === null)
         {
            _loc3_.valueType = ValueType.STRING;
            _loc3_.string = null;
         }
         else if(param1 is Date)
         {
            _loc3_.valueType = ValueType.DATETIME;
            _loc3_.dateTime = (param1 as Date).getTime();
         }
         else if(param1 is Array)
         {
            _loc3_.valueType = ValueType.ARRAY;
            _loc3_.arrayProperties = getArrayProperties(param1,param2);
         }
         else if(param1 is String)
         {
            _loc3_.valueType = ValueType.STRING;
            _loc3_.string = param1;
         }
         else if(param1 is Boolean)
         {
            _loc3_.valueType = ValueType.BOOL;
            _loc3_.bool = param1;
         }
         else if(param1 is ByteArray)
         {
            _loc3_.valueType = ValueType.BYTEARRAY;
            _loc3_.byteArray = param1;
         }
         else if(param1 is Number)
         {
            _loc4_ = new ByteArray();
            _loc4_.writeInt(param1);
            _loc4_.position = 0;
            _loc5_ = new ByteArray();
            _loc5_.writeUnsignedInt(param1);
            _loc5_.position = 0;
            if(_loc4_.readInt() == param1)
            {
               _loc3_.valueType = ValueType.INT;
               _loc3_.int32 = param1;
            }
            else if(_loc5_.readUnsignedInt() == param1)
            {
               _loc3_.valueType = ValueType.UINT;
               _loc3_.uInt = param1;
            }
            else if((Math.floor(param1) == param1) && (param1 <= 9.2233720368547748E18) && (param1 >= -9.2233720368547748E18))
            {
               _loc3_.valueType = ValueType.LONG;
               _loc3_.long = param1;
            }
            else
            {
               _loc4_ = new ByteArray();
               _loc4_.writeFloat(param1);
               _loc4_.position = 0;
               if(_loc4_.readFloat() == param1)
               {
                  _loc3_.valueType = ValueType.FLOAT;
                  _loc3_.float = param1;
               }
               else
               {
                  _loc3_.valueType = ValueType.DOUBLE;
                  _loc3_.double = param1;
               }
            }
            
            
         }
         else if(param1.constructor == Object)
         {
            _loc3_.valueType = ValueType.OBJ;
            _loc3_.objectProperties = getObjectProperties(param1,param2);
         }
         
         
         
         
         
         
         
         return _loc3_;
      }
      
      private static function getArrayProperties(param1:Array, param2:Boolean = false) : Array
      {
         var _loc5_:ArrayProperty = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            if(!((param1[_loc4_] === undefined) && (param2)))
            {
               _loc5_ = new ArrayProperty();
               _loc5_.index = _loc4_;
               _loc5_.value = getValueObject(param1[_loc4_],param2);
               _loc3_.push(_loc5_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function getObjectProperties(param1:Object, param2:Boolean = false, param3:String = null) : Array
      {
         var _loc5_:String = null;
         var _loc6_:ObjectProperty = null;
         var _loc4_:Array = [];
         for(_loc5_ in param1)
         {
            if(!((param1[_loc5_] === undefined) && (param2) || (_loc5_ == param3)))
            {
               _loc6_ = new ObjectProperty();
               _loc6_.name = _loc5_;
               _loc6_.value = getValueObject(param1[_loc5_],param2);
               _loc4_.push(_loc6_);
            }
         }
         return _loc4_;
      }
      
      private static function deserializeValueObject(param1:ValueObject) : *
      {
         var _loc2_:Date = null;
         switch(param1.valueType)
         {
            case ValueType.STRING:
               return param1.string;
            case ValueType.INT:
               return param1.int32 || 0;
            case ValueType.UINT:
               return param1.uInt || 0;
            case ValueType.LONG:
               return param1.long || 0;
            case ValueType.BOOL:
               return param1.bool;
            case ValueType.FLOAT:
               return param1.float || 0;
            case ValueType.DOUBLE:
               return param1.double || 0;
            case ValueType.BYTEARRAY:
               return param1.byteArray;
            case ValueType.DATETIME:
               _loc2_ = new Date();
               _loc2_.setTime(param1.dateTime);
               return _loc2_;
            case ValueType.ARRAY:
               return getArray(param1.arrayProperties);
            case ValueType.OBJ:
               return getObject(param1.objectProperties);
            default:
               throw new Error("Unknown valuetype in returned BigDBObject",0);
         }
      }
      
      private static function getArray(param1:Array) : Array
      {
         var _loc4_:ArrayProperty = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as ArrayProperty;
            if(_loc4_.value != null)
            {
               _loc2_[_loc4_.index] = deserializeValueObject(_loc4_.value);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private static function getObject(param1:Array) : Object
      {
         var _loc4_:ObjectProperty = null;
         var _loc2_:Object = {};
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_] as ObjectProperty;
            _loc2_[_loc4_.name] = deserializeValueObject(_loc4_.value);
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
