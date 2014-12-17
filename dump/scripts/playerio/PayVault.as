package playerio
{
   import _-M-.coins;
   import _-M-.items;
   import _-M-.has;
   import _-M-.first;
   import _-M-.count;
   import _-M-.refresh;
   import _-M-.readHistory;
   import _-M-.credit;
   import _-M-.debit;
   import _-M-.consume;
   import _-M-.buy;
   import _-M-.give;
   import _-M-.getBuyDirectInfo;
   import _-M-.getBuyCoinsInfo;
   
   public interface PayVault
   {
      
      _-M- function get coins() : int;
      
      _-M- function get items() : Array;
      
      _-M- function has(param1:String) : Boolean;
      
      _-M- function first(param1:String) : VaultItem;
      
      _-M- function count(param1:String) : uint;
      
      _-M- function refresh(param1:Function = null, param2:Function = null) : void;
      
      _-M- function readHistory(param1:uint, param2:uint, param3:Function = null, param4:Function = null) : void;
      
      _-M- function credit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-M- function debit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-M- function consume(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      _-M- function buy(param1:Array, param2:Boolean, param3:Function = null, param4:Function = null) : void;
      
      _-M- function give(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      _-M- function getBuyDirectInfo(param1:String, param2:Object, param3:Array, param4:Function = null, param5:Function = null) : void;
      
      _-M- function getBuyCoinsInfo(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void;
   }
}
