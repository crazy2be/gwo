package playerio
{
   import _-zi.load;
   import _-zi.loadKeys;
   import _-zi.loadSingle;
   import _-zi.createObject;
   import _-zi.loadMyPlayerObject;
   import _-zi.loadRange;
   import _-zi.deleteKeys;
   import _-zi.deleteRange;
   import _-zi.loadOrCreate;
   import _-zi.loadKeysOrCreate;
   
   public interface BigDB
   {
      
      _-zi function load(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-zi function loadKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      _-zi function loadSingle(param1:String, param2:String, param3:Array, param4:Function = null, param5:Function = null) : void;
      
      _-zi function createObject(param1:String, param2:String, param3:Object, param4:Function = null, param5:Function = null) : void;
      
      _-zi function loadMyPlayerObject(param1:Function = null, param2:Function = null) : void;
      
      _-zi function loadRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:int, param7:Function = null, param8:Function = null) : void;
      
      _-zi function deleteKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      _-zi function deleteRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      _-zi function loadOrCreate(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-zi function loadKeysOrCreate(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
   }
}
