package playerio
{
   import _-TX.add;
   import _-TX.getNumber;
   import _-TX.getInt;
   import _-TX.getUInt;
   import _-TX.getString;
   import _-TX.getBoolean;
   import _-TX.getByteArray;
   import flash.utils.ByteArray;
   import _-TX.length;
   import _-TX.type;
   import _-TX.toString;
   
   public interface Message
   {
      
      _-TX function add(... rest) : void;
      
      _-TX function getNumber(param1:int) : Number;
      
      _-TX function getInt(param1:int) : int;
      
      _-TX function getUInt(param1:int) : uint;
      
      _-TX function getString(param1:int) : String;
      
      _-TX function getBoolean(param1:int) : Boolean;
      
      _-TX function getByteArray(param1:int) : ByteArray;
      
      _-TX function get length() : int;
      
      _-TX function get type() : String;
      
      _-TX function set type(param1:String) : void;
      
      _-TX function toString() : String;
   }
}
