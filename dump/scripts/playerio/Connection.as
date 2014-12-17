package playerio
{
   import _-Po.addMessageHandler;
   import _-Po.removeMessageHandler;
   import _-Po.addDisconnectHandler;
   import _-Po.removeDisconnectHandler;
   import _-Po.connected;
   import _-Po.createMessage;
   import _-Po.send;
   import _-Po.sendMessage;
   import _-Po.disconnect;
   
   public interface Connection
   {
      
      _-Po function addMessageHandler(param1:String, param2:Function) : void;
      
      _-Po function removeMessageHandler(param1:String, param2:Function) : void;
      
      _-Po function addDisconnectHandler(param1:Function) : void;
      
      _-Po function removeDisconnectHandler(param1:Function) : void;
      
      _-Po function get connected() : Boolean;
      
      _-Po function createMessage(param1:String, ... rest) : Message;
      
      _-Po function send(param1:String, ... rest) : void;
      
      _-Po function sendMessage(param1:Message) : void;
      
      _-Po function disconnect() : void;
   }
}
