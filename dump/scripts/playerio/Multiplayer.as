package playerio
{
   import _-2t.createRoom;
   import _-2t.createJoinRoom;
   import _-2t.joinRoom;
   import _-2t.listRooms;
   import _-2t.developmentServer;
   
   public interface Multiplayer
   {
      
      _-2t function createRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Function = null, param6:Function = null) : void;
      
      _-2t function createJoinRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      _-2t function joinRoom(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void;
      
      _-2t function listRooms(param1:String, param2:Object, param3:int, param4:int, param5:Function = null, param6:Function = null) : void;
      
      _-2t function set developmentServer(param1:String) : void;
      
      _-2t function get developmentServer() : String;
   }
}
