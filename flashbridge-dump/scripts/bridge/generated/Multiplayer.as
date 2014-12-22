package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.Client;
   import bridge.generated.messages.CreateRoomArgs;
   import bridge.generated.messages.CreateRoomOutput;
   import bridge.utils.Converter;
   import bridge.generated.messages.CreateRoomError;
   import bridge.generated.messages.JoinRoomArgs;
   import bridge.generated.messages.JoinRoomOutput;
   import bridge.generated.messages.JoinRoomError;
   import bridge.generated.messages.ListRoomsArgs;
   import bridge.generated.messages.ListRoomsOutput;
   import bridge.generated.messages.ListRoomsError;
   import bridge.generated.messages.CreateJoinRoomArgs;
   import bridge.generated.messages.CreateJoinRoomOutput;
   import bridge.generated.messages.CreateJoinRoomError;
   
   public class Multiplayer extends Object
   {
      
      public function Multiplayer(param1:HTTPChannel, param2:Client)
      {
         super();
         this.channel = param1;
         this.client = param2;
      }
      
      protected var channel:HTTPChannel;
      
      protected var client:Client;
      
      protected function _createRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Boolean, param6:Function = null, param7:Function = null) : void
      {
         var roomId:String = param1;
         var roomType:String = param2;
         var visible:Boolean = param3;
         var roomData:Object = param4;
         var isDevRoom:Boolean = param5;
         var callback:Function = param6;
         var errorHandler:Function = param7;
         var input:CreateRoomArgs = new CreateRoomArgs(roomId,roomType,visible,Converter.toKeyValueArray(roomData),isDevRoom);
         var output:CreateRoomOutput = new CreateRoomOutput();
         channel.Request(21,input,output,new CreateRoomError(),function(param1:CreateRoomOutput):*
         {
            var output:CreateRoomOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.roomId);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Multiplayer.createRoom",e);
                  throw e;
               }
            }
         },function(param1:CreateRoomError):*
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
      
      protected function _joinRoom(param1:String, param2:Object, param3:Boolean, param4:Function = null, param5:Function = null) : void
      {
         var roomId:String = param1;
         var joinData:Object = param2;
         var isDevRoom:Boolean = param3;
         var callback:Function = param4;
         var errorHandler:Function = param5;
         var input:JoinRoomArgs = new JoinRoomArgs(roomId,Converter.toKeyValueArray(joinData),isDevRoom);
         var output:JoinRoomOutput = new JoinRoomOutput();
         channel.Request(24,input,output,new JoinRoomError(),function(param1:JoinRoomOutput):*
         {
            var output:JoinRoomOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.joinKey,output.endpoints);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Multiplayer.joinRoom",e);
                  throw e;
               }
            }
         },function(param1:JoinRoomError):*
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
      
      protected function _listRooms(param1:String, param2:Object, param3:int, param4:int, param5:Boolean, param6:Function = null, param7:Function = null) : void
      {
         var roomType:String = param1;
         var searchCriteria:Object = param2;
         var resultLimit:int = param3;
         var resultOffset:int = param4;
         var onlyDevRooms:Boolean = param5;
         var callback:Function = param6;
         var errorHandler:Function = param7;
         var input:ListRoomsArgs = new ListRoomsArgs(roomType,Converter.toKeyValueArray(searchCriteria),resultLimit,resultOffset,onlyDevRooms);
         var output:ListRoomsOutput = new ListRoomsOutput();
         channel.Request(30,input,output,new ListRoomsError(),function(param1:ListRoomsOutput):*
         {
            var output:ListRoomsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(Converter.toRoomInfoArray(output.rooms));
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Multiplayer.listRooms",e);
                  throw e;
               }
            }
         },function(param1:ListRoomsError):*
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
      
      protected function _createJoinRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Object, param6:Boolean, param7:Function = null, param8:Function = null) : void
      {
         var roomId:String = param1;
         var roomType:String = param2;
         var visible:Boolean = param3;
         var roomData:Object = param4;
         var joinData:Object = param5;
         var isDevRoom:Boolean = param6;
         var callback:Function = param7;
         var errorHandler:Function = param8;
         var input:CreateJoinRoomArgs = new CreateJoinRoomArgs(roomId,roomType,visible,Converter.toKeyValueArray(roomData),Converter.toKeyValueArray(joinData),isDevRoom);
         var output:CreateJoinRoomOutput = new CreateJoinRoomOutput();
         channel.Request(27,input,output,new CreateJoinRoomError(),function(param1:CreateJoinRoomOutput):*
         {
            var output:CreateJoinRoomOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.roomId,output.joinKey,output.endpoints);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Multiplayer.createJoinRoom",e);
                  throw e;
               }
            }
         },function(param1:CreateJoinRoomError):*
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
