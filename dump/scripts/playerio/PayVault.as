package playerio
{
   import _-e2.coins;
   import _-e2.items;
   import _-e2.has;
   import _-e2.first;
   import _-e2.count;
   import _-e2.refresh;
   import _-e2.readHistory;
   import _-e2.credit;
   import _-e2.debit;
   import _-e2.consume;
   import _-e2.buy;
   import _-e2.give;
   import _-e2.getBuyDirectInfo;
   import _-e2.getBuyCoinsInfo;
   
   public interface PayVault
   {
      
      _-e2 function get coins() : int;
      
      _-e2 function get items() : Array;
      
      _-e2 function has(param1:String) : Boolean;
      
      _-e2 function first(param1:String) : VaultItem;
      
      _-e2 function count(param1:String) : uint;
      
      _-e2 function refresh(param1:Function = null, param2:Function = null) : void;
      
      _-e2 function readHistory(param1:uint, param2:uint, param3:Function = null, param4:Function = null) : void;
      
      _-e2 function credit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-e2 function debit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void;
      
      _-e2 function consume(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      _-e2 function buy(param1:Array, param2:Boolean, param3:Function = null, param4:Function = null) : void;
      
      _-e2 function give(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      _-e2 function getBuyDirectInfo(param1:String, param2:Object, param3:Array, param4:Function = null, param5:Function = null) : void;
      
      _-e2 function getBuyCoinsInfo(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void;
   }
}
