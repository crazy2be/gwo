package playerio
{
   import _-Jw.createRoom;
   import _-Jw.createJoinRoom;
   import _-Jw.joinRoom;
   import _-Jw.listRooms;
   import _-Jw.developmentServer;
   
   public interface Multiplayer
   {
      
      _-Jw function createRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Function = null, param6:Function = null) : void;
      
      _-Jw function createJoinRoom(param1:String, param2:String, param3:Boolean, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      _-Jw function joinRoom(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void;
      
      _-Jw function listRooms(param1:String, param2:Object, param3:int, param4:int, param5:Function = null, param6:Function = null) : void;
      
      _-Jw function set developmentServer(param1:String) : void;
      
      _-Jw function get developmentServer() : String;
   }
}
