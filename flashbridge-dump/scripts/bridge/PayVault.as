package bridge
{
   import bridge.generated.PayVault;
   import playerio.PayVault;
   import bridge.generated.PlayerIOError;
   import bridge.utils.*;
   import bridge.generated.messages.*;
   import playerio.VaultItem;
   
   public class PayVault extends bridge.generated.PayVault implements PayVault
   {
      
      public function PayVault(param1:HTTPChannel, param2:Client)
      {
         _items = [];
         super(param1,param2);
      }
      
      private var _version:String = null;
      
      private var _coins:int = 0;
      
      private var _items:Array;
      
      public function get coins() : int
      {
         if(_version !== null)
         {
            return _coins;
         }
         throw new PlayerIOError("Cannot access coins before vault has been loaded. Please refresh the vault first",50);
      }
      
      public function get items() : Array
      {
         if(_version !== null)
         {
            return _items;
         }
         throw new PlayerIOError("Cannot access items before vault has been loaded. Please refresh the vault first",50);
      }
      
      public function readHistory(param1:uint, param2:uint, param3:Function = null, param4:Function = null) : void
      {
         var page:uint = param1;
         var pageSize:uint = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         _payVaultReadHistory(page,pageSize,function(param1:Array):*
         {
            if(callback != null)
            {
               callback(Converter.toPayVaultHistoryEntryArray(param1));
            }
         },errorHandler);
      }
      
      public function refresh(param1:Function = null, param2:Function = null) : void
      {
         var callback:Function = param1;
         var errorHandler:Function = param2;
         _payVaultRefresh(_version,function(param1:PayVaultContents):*
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function credit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var amount:uint = param1;
         var reason:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         _payVaultCredit(amount,reason,function(param1:PayVaultContents):void
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function debit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var amount:uint = param1;
         var reason:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         _payVaultDebit(amount,reason,function(param1:PayVaultContents):void
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function consume(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var item:VaultItem = null;
         var items:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var ids:Array = [];
         var a:int = 0;
         while(a < items.length)
         {
            item = items[a] as bridge.VaultItem;
            if(item == null)
            {
               throw new PlayerIOError("Element is not a VaultItem: " + items[a],2);
            }
            else
            {
               ids.push(item.id);
               a++;
               continue;
            }
         }
         _payVaultConsume(ids,function(param1:PayVaultContents):void
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function getBuyDirectInfo(param1:String, param2:Object, param3:Array, param4:Function = null, param5:Function = null) : void
      {
         _payVaultPaymentInfo(param1,param2,Converter.toBuyItemInfoArray(param3),param4,param5);
      }
      
      public function getBuyCoinsInfo(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void
      {
         _payVaultPaymentInfo(param1,param2,null,param3,param4);
      }
      
      public function buy(param1:Array, param2:Boolean, param3:Function = null, param4:Function = null) : void
      {
         var items:Array = param1;
         var storeItems:Boolean = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         _payVaultBuy(Converter.toBuyItemInfoArray(items),storeItems,function(param1:PayVaultContents):void
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function give(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var items:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         _payVaultGive(Converter.toBuyItemInfoArray(items),function(param1:PayVaultContents):void
         {
            parseVault(param1);
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function usePaymentInfo(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void
      {
         var provider:String = param1;
         var providerArguments:Object = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         _payVaultUsePaymentInfo(provider,providerArguments,function(param1:Object, param2:PayVaultContents):void
         {
            parseVault(param2);
            if(callback != null)
            {
               callback(param1);
            }
         },errorHandler);
      }
      
      public function has(param1:String) : Boolean
      {
         var _loc3_:VaultItem = null;
         var _loc2_:int = 0;
         while(_loc2_ < items.length)
         {
            _loc3_ = items[_loc2_] as bridge.VaultItem;
            if(_loc3_.itemKey == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function first(param1:String) : §playerio.VaultItem§
      {
         var _loc3_:VaultItem = null;
         var _loc2_:int = 0;
         while(_loc2_ < items.length)
         {
            _loc3_ = items[_loc2_] as bridge.VaultItem;
            if(_loc3_.itemKey == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function count(param1:String) : uint
      {
         var _loc4_:VaultItem = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < items.length)
         {
            _loc4_ = items[_loc3_] as bridge.VaultItem;
            if(_loc4_.itemKey == param1)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function parseVault(param1:PayVaultContents) : void
      {
         if(param1 != null)
         {
            _version = param1.version;
            _coins = param1.coins;
            _items = Converter.toVaultItemArray(param1.items);
         }
      }
   }
}
