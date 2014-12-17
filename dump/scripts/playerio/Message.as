package playerio
{
   import _-EJ.add;
   import _-EJ.getNumber;
   import _-EJ.getInt;
   import _-EJ.getUInt;
   import _-EJ.getString;
   import _-EJ.getBoolean;
   import _-EJ.getByteArray;
   import flash.utils.ByteArray;
   import _-EJ.length;
   import _-EJ.type;
   import _-EJ.toString;
   
   public interface Message
   {
      
      _-EJ function add(... rest) : void;
      
      _-EJ function getNumber(param1:int) : Number;
      
      _-EJ function getInt(param1:int) : int;
      
      _-EJ function getUInt(param1:int) : uint;
      
      _-EJ function getString(param1:int) : String;
      
      _-EJ function getBoolean(param1:int) : Boolean;
      
      _-EJ function getByteArray(param1:int) : ByteArray;
      
      _-EJ function get length() : int;
      
      _-EJ function get type() : String;
      
      _-EJ function set type(param1:String) : void;
      
      _-EJ function toString() : String;
   }
}
