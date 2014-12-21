package playerio
{
   import _-Rg.addMessageHandler;
   import _-Rg.removeMessageHandler;
   import _-Rg.addDisconnectHandler;
   import _-Rg.removeDisconnectHandler;
   import _-Rg.connected;
   import _-Rg.createMessage;
   import _-Rg.send;
   import _-Rg.sendMessage;
   import _-Rg.disconnect;
   
   public interface Connection
   {
      
      _-Rg function addMessageHandler(param1:String, param2:Function) : void;
      
      _-Rg function removeMessageHandler(param1:String, param2:Function) : void;
      
      _-Rg function addDisconnectHandler(param1:Function) : void;
      
      _-Rg function removeDisconnectHandler(param1:Function) : void;
      
      _-Rg function get connected() : Boolean;
      
      _-Rg function createMessage(param1:String, ... rest) : Message;
      
      _-Rg function send(param1:String, ... rest) : void;
      
      _-Rg function sendMessage(param1:Message) : void;
      
      _-Rg function disconnect() : void;
   }
}
