package bridge
{
   import playerio.DatabaseObject;
   import bridge.utils.Converter;
   import playerio.PlayerIOError;
   import bridge.helpers.FieldToBeRemoved;
   
   public dynamic class DatabaseObject extends playerio.DatabaseObject
   {
      
      public function DatabaseObject(param1:String, param2:String, param3:String, param4:uint, param5:Boolean, param6:Function)
      {
         saveQueue = [];
         super();
         this._table = param1;
         this._version = param3;
         this._creator = param4;
         this._key = param2;
         this._saveHandler = param6;
         this._createIfMissing = param5;
      }
      
      private var _table:String = "";
      
      private var _version:String = "";
      
      private var _creator:uint = 0;
      
      private var _key:String = "";
      
      private var _saveHandler:Function;
      
      private var _cache:bridge.DatabaseObject;
      
      private var _createIfMissing:Boolean = false;
      
      private var saveQueue:Array;
      
      private var inSave:Boolean = false;
      
      override public function save(param1:Boolean = false, param2:Boolean = false, param3:Function = null, param4:Function = null) : void
      {
         var _loc6_:SaveQueueItem = null;
         var _loc7_:SaveQueueItem = null;
         if(param2)
         {
            throw new Error("FullOverwrite is not yet supported by BigDB - Stay tuned at www.player.io for updates!",0);
         }
         else
         {
            var _loc5_:DatabaseObject = Converter.toDatabaseObject(table,Converter.toSparseBigDBObject(key,_version,_creator,this),_createIfMissing,null);
            if(inSave)
            {
               _loc6_ = saveQueue.length > 0?saveQueue[saveQueue.length - 1]:null;
               if((!(_loc6_ == null)) && (_loc6_.useOptimisticLock == param1) && (_loc6_.fullOverwrite == param2))
               {
                  _loc6_.data = _loc5_;
                  _loc6_.callbacks.push(param3);
                  _loc6_.errorHandlers.push(param4);
               }
               else
               {
                  _loc7_ = new SaveQueueItem();
                  _loc7_.data = _loc5_;
                  _loc7_.callbacks.push(param3);
                  _loc7_.errorHandlers.push(param4);
                  _loc7_.fullOverwrite = param2;
                  _loc7_.useOptimisticLock = param1;
                  saveQueue.push(_loc7_);
               }
               return;
            }
            doSave(_loc5_,param1,param2,param3,param4);
            return;
         }
      }
      
      public function commit() : void
      {
         _cache = Converter.toDatabaseObject(table,Converter.toSparseBigDBObject(key,_version,_creator,this),_createIfMissing,null);
      }
      
      private function doSave(param1:bridge.DatabaseObject, param2:Boolean = false, param3:Boolean = false, param4:Function = null, param5:Function = null) : void
      {
         var x:String = null;
         var cached:DatabaseObject = param1;
         var useOptimisticLock:Boolean = param2;
         var fullOverwrite:Boolean = param3;
         var callback:Function = param4;
         var errorHandler:Function = param5;
         inSave = true;
         var ret:Object = {};
         compareObject(_cache,cached,ret);
         var changed:Boolean = false;
         for(x in ret)
         {
            changed = true;
            if(!changed)
            {
               if(callback != null)
               {
                  callback();
               }
               emptyQueue();
               return;
            }
            this._saveHandler(_table,_key,_version,ret,useOptimisticLock,_createIfMissing,function(param1:String):*
            {
               if(param1 == null)
               {
                  if(errorHandler != null)
                  {
                     errorHandler(PlayerIOError.StaleVersion);
                  }
                  else
                  {
                     throw PlayerIOError.StaleVersion;
                  }
               }
               else
               {
                  _version = param1;
                  _cache = cached;
                  if(callback != null)
                  {
                     callback();
                  }
               }
               emptyQueue();
            },function(param1:PlayerIOError):void
            {
               emptyQueue();
               if(errorHandler == null)
               {
                  throw param1;
               }
               else
               {
                  errorHandler(param1);
                  return;
               }
            });
            return;
         }
      }
      
      private function emptyQueue() : void
      {
         var qi:SaveQueueItem = null;
         inSave = false;
         if(saveQueue.length != 0)
         {
            qi = saveQueue.shift();
            doSave(qi.data,qi.useOptimisticLock,qi.fullOverwrite,function():void
            {
               var _loc1_:int = 0;
               while(_loc1_ < qi.callbacks.length)
               {
                  if(qi.callbacks[_loc1_] != null)
                  {
                     qi.callbacks[_loc1_]();
                  }
                  _loc1_++;
               }
            },function(param1:PlayerIOError):void
            {
               var _loc2_:int = 0;
               while(_loc2_ < qi.errorHandlers.length)
               {
                  if(qi.errorHandlers[_loc2_] == null)
                  {
                     throw param1;
                  }
                  else
                  {
                     qi.errorHandlers[_loc2_](param1);
                     _loc2_++;
                     continue;
                  }
               }
            });
         }
      }
      
      override public function get table() : String
      {
         return _table;
      }
      
      override public function get key() : String
      {
         return _key;
      }
      
      private function compareObject(param1:Object, param2:Object, param3:Object = null) : Object
      {
         var ret:Object = null;
         var x:* = undefined;
         var na:Array = null;
         var no:Object = null;
         var changed:Boolean = false;
         var nx:String = null;
         var before:Object = param1;
         var after:Object = param2;
         var target:Object = param3;
         var setProp:Function = function(param1:String, param2:*):void
         {
            ret[param1] = param2;
         };
         ret = target || {};
         var prop:Object = mergePropertyList(before,after);
         for(x in prop)
         {
            if(before[x] !== after[x])
            {
               if(after[x] === undefined)
               {
                  setProp(x,new FieldToBeRemoved());
               }
               else if((before[x] is Array) && (after[x] is Array))
               {
                  na = objectToArray(compareObject(before[x],after[x]));
                  if(na.length > 0)
                  {
                     setProp(x,na);
                  }
               }
               else if((before[x] is Object) && (before[x].constructor == Object) && (after[x] is Object) && (after[x].constructor == Object))
               {
                  no = compareObject(before[x],after[x]);
                  changed = false;
                  for(nx in no)
                  {
                     changed = true;
                     if(changed)
                     {
                        setProp(x,no);
                     }
                  }
               }
               else
               {
                  setProp(x,after[x]);
               }
               
               
            }
         }
         return ret;
      }
      
      private function mergePropertyList(param1:Object, param2:Object) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function objectToArray(param1:Object) : Array
      {
         var _loc3_:String = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_[parseInt(_loc3_)] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private var prefix:String = "    ";
      
      public function toString() : String
      {
         var _loc1_:String = "[playerio.DatabaseObject]\n";
         _loc1_ = _loc1_ + (_table + "[\"" + key + "\"] = " + serialize(prefix,this) + " (Version:" + _version + ")");
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
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               if(param2[_loc6_] !== undefined)
               {
                  _loc5_.push({
                     "id":_loc6_,
                     "value":serialize(param1 + prefix,param2[_loc6_])
                  });
               }
               _loc6_++;
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
            if((param2.constructor == Object) || (param2.constructor == bridge.DatabaseObject))
            {
               _loc3_ = "{\n";
               for(_loc4_ in param2)
               {
                  _loc5_.push({
                     "id":_loc4_,
                     "value":serialize(param1 + prefix,param2[_loc4_])
                  });
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
         if(param2 === null)
         {
            return "null";
         }
         if(param2 === undefined)
         {
            return "undefined";
         }
         return param2.toString();
      }
   }
}
import bridge.DatabaseObject;

class SaveQueueItem extends Object
{
   
   function SaveQueueItem()
   {
      callbacks = [];
      errorHandlers = [];
      super();
   }
   
   public var data:DatabaseObject;
   
   public var callbacks:Array;
   
   public var errorHandlers:Array;
   
   public var useOptimisticLock:Boolean;
   
   public var fullOverwrite:Boolean;
}
