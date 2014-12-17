package playerio
{
   import _-6B.load;
   import _-6B.loadKeys;
   import _-6B.loadSingle;
   import _-6B.createObject;
   import _-6B.loadMyPlayerObject;
   import _-6B.loadRange;
   import _-6B.deleteKeys;
   import _-6B.deleteRange;
   import _-6B.loadOrCreate;
   import _-6B.loadKeysOrCreate;
   
   public interface BigDB
   {
      
      _-6B function load(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-6B function loadKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      _-6B function loadSingle(param1:String, param2:String, param3:Array, param4:Function = null, param5:Function = null) : void;
      
      _-6B function createObject(param1:String, param2:String, param3:Object, param4:Function = null, param5:Function = null) : void;
      
      _-6B function loadMyPlayerObject(param1:Function = null, param2:Function = null) : void;
      
      _-6B function loadRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:int, param7:Function = null, param8:Function = null) : void;
      
      _-6B function deleteKeys(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
      
      _-6B function deleteRange(param1:String, param2:String, param3:Array, param4:Object, param5:Object, param6:Function = null, param7:Function = null) : void;
      
      _-6B function loadOrCreate(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-6B function loadKeysOrCreate(param1:String, param2:Array, param3:Function = null, param4:Function = null) : void;
   }
}
