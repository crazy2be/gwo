package bridge.utils
{
   import com.protobuf.Message;
   import flash.utils.ByteArray;
   import flash.net.*;
   import flash.events.*;
   
   public class HTTPChannel extends Object
   {
      
      public function HTTPChannel()
      {
         super();
      }
      
      private var endpoint:String = "http://api.playerio.com/api";
      
      private var _token:String = "";
      
      private var _gameid:String = "";
      
      public function Request(param1:int, param2:Message, param3:Message, param4:Message, param5:Function, param6:Function) : *
      {
         var loader:URLLoader = null;
         var tba:ByteArray = null;
         var RPCMethod:int = param1;
         var messageInput:Message = param2;
         var messageOutput:Message = param3;
         var messageError:Message = param4;
         var success:Function = param5;
         var error:Function = param6;
         loader = new URLLoader();
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         loader.addEventListener(Event.COMPLETE,function(param1:*):*
         {
            var _loc4_:* = 0;
            var _loc2_:ByteArray = loader.data;
            _loc2_.position = 0;
            if(_loc2_.readUnsignedByte() != 0)
            {
               _loc4_ = _loc2_.readUnsignedShort();
               _token = _loc2_.readUTFBytes(_loc4_);
            }
            var _loc3_:int = _loc2_.readUnsignedByte();
            if(_loc3_ == 0)
            {
               messageError.readFromDataOutput(_loc2_);
               error(messageError);
            }
            else if(_loc3_ == 1)
            {
               messageOutput.readFromDataOutput(_loc2_);
               success(messageOutput);
            }
            
         });
         loader.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):*
         {
            try
            {
               (messageError as Object).message = "[PlayerIOError] " + param1.text;
            }
            catch(e:Error)
            {
            }
            error(messageError);
         });
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function(param1:SecurityError):*
         {
            try
            {
               (messageError as Object).message = "[PlayerIOError] " + param1.message;
            }
            catch(e:Error)
            {
            }
            error(messageError);
         });
         var r:URLRequest = new URLRequest(endpoint + "/" + RPCMethod);
         r.method = URLRequestMethod.POST;
         if(_token != "")
         {
            r.requestHeaders = [new URLRequestHeader("playertoken",_token)];
         }
         var b:ByteArray = new ByteArray();
         messageInput.writeToDataOutput(b);
         if(b.length == 0)
         {
            tba = new ByteArray();
            tba.writeByte(8);
            tba.writeByte(0);
            r.data = tba;
         }
         else
         {
            r.data = b;
         }
         loader.load(r);
      }
      
      public function set token(param1:String) : *
      {
         _token = param1;
      }
      
      public function get gameId() : String
      {
         return _gameid;
      }
   }
}
