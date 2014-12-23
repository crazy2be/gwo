package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.Client;
   import bridge.generated.messages.CreateObjectsArgs;
   import bridge.generated.messages.CreateObjectsOutput;
   import bridge.generated.messages.CreateObjectsError;
   import bridge.generated.messages.LoadObjectsArgs;
   import bridge.generated.messages.LoadObjectsOutput;
   import bridge.generated.messages.LoadObjectsError;
   import bridge.generated.messages.SaveObjectChangesArgs;
   import bridge.generated.messages.SaveObjectChangesOutput;
   import bridge.generated.messages.SaveObjectChangesError;
   import bridge.generated.messages.DeleteObjectsArgs;
   import bridge.generated.messages.DeleteObjectsOutput;
   import bridge.generated.messages.DeleteObjectsError;
   import bridge.generated.messages.LoadMyPlayerObjectArgs;
   import bridge.generated.messages.LoadMyPlayerObjectOutput;
   import bridge.generated.messages.LoadMyPlayerObjectError;
   import bridge.generated.messages.LoadMatchingObjectsArgs;
   import bridge.generated.messages.LoadMatchingObjectsOutput;
   import bridge.generated.messages.LoadMatchingObjectsError;
   import bridge.generated.messages.LoadIndexRangeArgs;
   import bridge.generated.messages.LoadIndexRangeOutput;
   import bridge.generated.messages.LoadIndexRangeError;
   import bridge.generated.messages.DeleteIndexRangeArgs;
   import bridge.generated.messages.DeleteIndexRangeOutput;
   import bridge.generated.messages.DeleteIndexRangeError;
   
   public class BigDB extends Object
   {
      
      public function BigDB(param1:HTTPChannel, param2:Client)
      {
         super();
         this.channel = param1;
         this.client = param2;
      }
      
      protected var channel:HTTPChannel;
      
      protected var client:Client;
      
      protected function _createObjects(param1:Array, param2:Boolean, param3:Function = null, param4:Function = null) : void
      {
         var objects:Array = param1;
         var loadExisting:Boolean = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:CreateObjectsArgs = new CreateObjectsArgs(objects,loadExisting);
         var output:CreateObjectsOutput = new CreateObjectsOutput();
         channel.Request(82,input,output,new CreateObjectsError(),function(param1:CreateObjectsOutput):*
         {
            var output:CreateObjectsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.objects);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.createObjects",e);
                  throw e;
               }
            }
         },function(param1:CreateObjectsError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _loadObjects(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var objectIds:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:LoadObjectsArgs = new LoadObjectsArgs(objectIds);
         var output:LoadObjectsOutput = new LoadObjectsOutput();
         channel.Request(85,input,output,new LoadObjectsError(),function(param1:LoadObjectsOutput):*
         {
            var output:LoadObjectsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.objects);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.loadObjects",e);
                  throw e;
               }
            }
         },function(param1:LoadObjectsError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _saveObjectChanges(param1:int, param2:Array, param3:Boolean, param4:Function = null, param5:Function = null) : void
      {
         var lockType:int = param1;
         var changesets:Array = param2;
         var createIfMissing:Boolean = param3;
         var callback:Function = param4;
         var errorHandler:Function = param5;
         var input:SaveObjectChangesArgs = new SaveObjectChangesArgs(lockType,changesets,createIfMissing);
         var output:SaveObjectChangesOutput = new SaveObjectChangesOutput();
         channel.Request(88,input,output,new SaveObjectChangesError(),function(param1:SaveObjectChangesOutput):*
         {
            var output:SaveObjectChangesOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.versions);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.saveObjectChanges",e);
                  throw e;
               }
            }
         },function(param1:SaveObjectChangesError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _deleteObjects(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var objectIds:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:DeleteObjectsArgs = new DeleteObjectsArgs(objectIds);
         var output:DeleteObjectsOutput = new DeleteObjectsOutput();
         channel.Request(91,input,output,new DeleteObjectsError(),function(param1:DeleteObjectsOutput):*
         {
            var output:DeleteObjectsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.deleteObjects",e);
                  throw e;
               }
            }
         },function(param1:DeleteObjectsError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _loadMyPlayerObject(param1:Function = null, param2:Function = null) : void
      {
         var callback:Function = param1;
         var errorHandler:Function = param2;
         var input:LoadMyPlayerObjectArgs = new LoadMyPlayerObjectArgs();
         var output:LoadMyPlayerObjectOutput = new LoadMyPlayerObjectOutput();
         channel.Request(103,input,output,new LoadMyPlayerObjectError(),function(param1:LoadMyPlayerObjectOutput):*
         {
            var output:LoadMyPlayerObjectOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.playerObject);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.loadMyPlayerObject",e);
                  throw e;
               }
            }
         },function(param1:LoadMyPlayerObjectError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _loadMatchingObjects(param1:String, param2:String, param3:Array, param4:int, param5:Function = null, param6:Function = null) : void
      {
         var table:String = param1;
         var index:String = param2;
         var indexValue:Array = param3;
         var limit:int = param4;
         var callback:Function = param5;
         var errorHandler:Function = param6;
         var input:LoadMatchingObjectsArgs = new LoadMatchingObjectsArgs(table,index,indexValue,limit);
         var output:LoadMatchingObjectsOutput = new LoadMatchingObjectsOutput();
         channel.Request(94,input,output,new LoadMatchingObjectsError(),function(param1:LoadMatchingObjectsOutput):*
         {
            var output:LoadMatchingObjectsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.objects);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.loadMatchingObjects",e);
                  throw e;
               }
            }
         },function(param1:LoadMatchingObjectsError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _loadIndexRange(param1:String, param2:String, param3:Array, param4:Array, param5:int, param6:Function = null, param7:Function = null) : void
      {
         var table:String = param1;
         var index:String = param2;
         var startIndexValue:Array = param3;
         var stopIndexValue:Array = param4;
         var limit:int = param5;
         var callback:Function = param6;
         var errorHandler:Function = param7;
         var input:LoadIndexRangeArgs = new LoadIndexRangeArgs(table,index,startIndexValue,stopIndexValue,limit);
         var output:LoadIndexRangeOutput = new LoadIndexRangeOutput();
         channel.Request(97,input,output,new LoadIndexRangeError(),function(param1:LoadIndexRangeOutput):*
         {
            var output:LoadIndexRangeOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.objects);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.loadIndexRange",e);
                  throw e;
               }
            }
         },function(param1:LoadIndexRangeError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _deleteIndexRange(param1:String, param2:String, param3:Array, param4:Array, param5:Function = null, param6:Function = null) : void
      {
         var table:String = param1;
         var index:String = param2;
         var startIndexValue:Array = param3;
         var stopIndexValue:Array = param4;
         var callback:Function = param5;
         var errorHandler:Function = param6;
         var input:DeleteIndexRangeArgs = new DeleteIndexRangeArgs(table,index,startIndexValue,stopIndexValue);
         var output:DeleteIndexRangeOutput = new DeleteIndexRangeOutput();
         channel.Request(100,input,output,new DeleteIndexRangeError(),function(param1:DeleteIndexRangeOutput):*
         {
            var output:DeleteIndexRangeOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("BigDB.deleteIndexRange",e);
                  throw e;
               }
            }
         },function(param1:DeleteIndexRangeError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
   }
}
