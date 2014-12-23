package bridge
{
   import playerio.Connection;
   import flash.utils.ByteArray;
   import bridge.utils.*;
   import flash.events.*;
   import flash.net.Socket;
   import bridge.generated.messages.ServerEndpoint;
   import playerio.Message;
   import bridge.generated.PlayerIOError;
   
   public class Connection extends Object implements Connection
   {
      
      public function Connection(param1:Client, param2:String, param3:String, param4:Array, param5:Object, param6:Function, param7:Function, param8:String)
      {
         messageHandlers = [];
         disconnectHandlers = [];
         debugArr = new ByteArray();
         super();
         connections.push(this);
         this.client = param1;
         this.roomId = param2;
         this.errorHandler = param7;
         this.devserver = param8;
         this.callback = param6;
         serializer = new BinarySerializer();
         serializer.addEventListener(MessageEvent.ON_MESSAGE,handleMessage);
         if((param4.length > 1) && (param4[0].port == 80))
         {
            param4.push(param4.shift());
         }
         doConnect(param3,param5,param4);
      }
      
      private static var connections:Array = [];
      
      private static const encodeChars:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","+","/"];
      
      private static const decodeChars:Array = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1];
      
      public static function encode(param1:ByteArray) : String
      {
         var _loc7_:* = 0;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param1.length % 3;
         var _loc6_:int = param1.length - _loc5_;
         while(_loc3_ < _loc6_)
         {
            _loc7_ = param1[_loc3_++] << 16 | param1[_loc3_++] << 8 | param1[_loc3_++];
            _loc2_[_loc4_++] = encodeChars[_loc7_ >> 18] + encodeChars[_loc7_ >> 12 & 63] + encodeChars[_loc7_ >> 6 & 63] + encodeChars[_loc7_ & 63];
         }
         if(_loc5_ == 1)
         {
            _loc7_ = param1[_loc3_++];
            _loc2_[_loc4_++] = encodeChars[_loc7_ >> 2] + encodeChars[(_loc7_ & 3) << 4] + "==";
         }
         else if(_loc5_ == 2)
         {
            _loc7_ = param1[_loc3_++] << 8 | param1[_loc3_++];
            _loc2_[_loc4_++] = encodeChars[_loc7_ >> 10] + encodeChars[_loc7_ >> 4 & 63] + encodeChars[(_loc7_ & 15) << 2] + "=";
         }
         
         return _loc2_.join("");
      }
      
      private var socket:Socket;
      
      private var serializer:BinarySerializer;
      
      private var messageHandlers:Array;
      
      private var disconnectHandlers:Array;
      
      private var errorHandler:Function;
      
      private var client:Client;
      
      private var devserver:String;
      
      private var callback:Function;
      
      public var roomId:String;
      
      private var debugArr:ByteArray;
      
      private var sendDebugInfo:Boolean = true;
      
      private function doConnect(param1:String, param2:Object, param3:Array) : void
      {
         var hadConnection:Boolean = false;
         var disposed:Boolean = false;
         var tempSS:Socket = null;
         var serverInfo:Array = null;
         var key:String = param1;
         var joinData:Object = param2;
         var endpoints:Array = param3;
         var endpoint:ServerEndpoint = endpoints.shift() as ServerEndpoint;
         hadConnection = false;
         disposed = false;
         if(devserver != null)
         {
            serverInfo = devserver.split(":");
            tempSS = new Socket(serverInfo[0],serverInfo[1]);
         }
         else
         {
            tempSS = new Socket(endpoint.address,endpoint.port);
         }
         tempSS.addEventListener(Event.CLOSE,function():*
         {
            var handler:Function = null;
            if(disposed)
            {
               return;
            }
            for each(handler in disconnectHandlers)
            {
               try
               {
                  handler();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Connection.addDisconnectHandler",e);
                  throw e;
               }
            }
         });
         tempSS.addEventListener(Event.CONNECT,function(param1:Event):*
         {
            var _loc3_:String = null;
            if(disposed)
            {
               try
               {
                  tempSS.close();
               }
               catch(e:*)
               {
               }
               return;
            }
            socket = tempSS;
            hadConnection = true;
            tempSS.writeByte(0);
            tempSS.flush();
            var _loc2_:Message = createMessage("join",key);
            for(_loc3_ in joinData)
            {
               _loc2_.add(_loc3_.toString());
               _loc2_.add(joinData[_loc3_].toString());
            }
            sendMessage(_loc2_);
         });
         tempSS.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):*
         {
            disposed = true;
            try
            {
               tempSS.close();
            }
            catch(e:*)
            {
            }
            if(devserver)
            {
               throwError("Unable to connect to development server on " + devserver + ". Is the development server running?",1);
            }
            else if((!(endpoints.length == 0)) && (!hadConnection))
            {
               doConnect(key,joinData,endpoints);
            }
            else
            {
               throwError("Unable to connect to player.io multiplayer server due to IO Error [" + param1.text + "]",1);
            }
            
         });
         tempSS.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function(param1:SecurityErrorEvent):*
         {
            disposed = true;
            try
            {
               tempSS.close();
            }
            catch(e:*)
            {
            }
            if(!hadConnection)
            {
               if((!(endpoints.length == 0)) && (!hadConnection))
               {
                  doConnect(key,joinData,endpoints);
               }
               else
               {
                  throwError("Unable to connect to player.io multiplayer server due to Security Error [" + param1.text + "]",1);
               }
            }
         });
         tempSS.addEventListener(ProgressEvent.SOCKET_DATA,function():*
         {
            var b:int = 0;
            if(disposed)
            {
               try
               {
                  tempSS.close();
               }
               catch(e:*)
               {
               }
               return;
            }
            var l:int = tempSS.bytesAvailable;
            var a:int = 0;
            while(a < l)
            {
               b = tempSS.readUnsignedByte();
               if(debugArr.length < 1024 * 100)
               {
                  debugArr.writeByte(b);
               }
               else
               {
                  sendDebugInfo = false;
               }
               try
               {
                  serializer.AddByte(b);
               }
               catch(e:Error)
               {
                  if(sendDebugInfo)
                  {
                     client.handleSystemError("Unable to deserialize multiplayer message",e,{"binary":encode(debugArr)});
                  }
                  throw e;
               }
               a++;
            }
         });
      }
      
      public function addMessageHandler(param1:String, param2:Function) : void
      {
         messageHandlers.push(new MessageHandler(param1,param2));
      }
      
      public function removeMessageHandler(param1:String, param2:Function) : void
      {
         var _loc4_:MessageHandler = null;
         var _loc3_:int = 0;
         while(_loc3_ < messageHandlers.length)
         {
            _loc4_ = messageHandlers[_loc3_] as MessageHandler;
            if((_loc4_.type == param1) && (_loc4_.handler == param2))
            {
               messageHandlers.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function disconnect() : void
      {
         if((socket) && (socket.connected))
         {
            socket.close();
         }
      }
      
      public function addDisconnectHandler(param1:Function) : void
      {
         disconnectHandlers.push(param1);
      }
      
      public function removeDisconnectHandler(param1:Function) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < disconnectHandlers.length)
         {
            if(disconnectHandlers[_loc2_] == param1)
            {
               disconnectHandlers.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get connected() : Boolean
      {
         return socket.connected;
      }
      
      public function createMessage(param1:String, ... rest) : §playerio.Message§
      {
         var _loc3_:Message = new bridge.Message(param1);
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_.add(rest[_loc4_]);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function send(param1:String, ... rest) : void
      {
         var _loc3_:Message = new bridge.Message(param1);
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_.add(rest[_loc4_]);
            _loc4_++;
         }
         sendMessage(_loc3_);
      }
      
      public function sendMessage(param1:playerio.Message) : void
      {
         var _loc2_:ByteArray = null;
         if((socket) && (socket.connected))
         {
            _loc2_ = serializer.SerializeMessage(param1 as bridge.Message);
            _loc2_.position = 0;
            socket.writeBytes(_loc2_,0,_loc2_.length);
            socket.flush();
         }
         else
         {
            throwError("Unable to send data to server when disconnected from server",2);
         }
      }
      
      private var messagesReceived:int = 0;
      
      private function handleMessage(param1:MessageEvent) : *
      {
         var err:PlayerIOError = null;
         var a:int = 0;
         var m:MessageHandler = null;
         var args:Array = null;
         var b:int = 0;
         var e:MessageEvent = param1;
         messagesReceived++;
         if(e.message.type == "playerio.joinresult")
         {
            if(e.message.getBoolean(0))
            {
               try
               {
                  callback(this);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("Connection.connect",e);
                  throw e;
               }
            }
            else
            {
               err = new PlayerIOError(e.message.getString(2),e.message.getInt(1));
               if(errorHandler != null)
               {
                  errorHandler(err);
               }
               else
               {
                  throw err;
               }
            }
         }
         else
         {
            a = 0;
            while(a < messageHandlers.length)
            {
               m = messageHandlers[a] as MessageHandler;
               if((m.type == e.message.type) || (m.type == null) || (m.type == "*"))
               {
                  args = [e.message];
                  b = 0;
                  while((b < e.message.length) && (b < m.handler.length - 1))
                  {
                     args.push(e.message.getObject(b));
                     b++;
                  }
                  try
                  {
                     m.handler.apply(m.handler,args);
                  }
                  catch(e:Error)
                  {
                     client.handleCallbackError("Connection.addMessageHandler(\"" + m.type + "\")",e);
                     throw e;
                  }
               }
               a++;
            }
         }
      }
      
      private function throwError(param1:String, param2:int) : void
      {
         var _loc3_:PlayerIOError = new PlayerIOError(param1,param2);
         if(errorHandler != null)
         {
            errorHandler(_loc3_);
            return;
         }
         client.handleCallbackErrorVerbose("Error occurred while talking to player.io multiplayer servers.",_loc3_);
         throw _loc3_;
      }
   }
}
class MessageHandler extends Object
{
   
   function MessageHandler(param1:String, param2:Function)
   {
      super();
      this.type = param1;
      this.handler = param2;
   }
   
   public var type:String;
   
   public var handler:Function;
}
