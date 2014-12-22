package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.Client;
   import bridge.generated.messages.PayVaultReadHistoryArgs;
   import bridge.generated.messages.PayVaultReadHistoryOutput;
   import bridge.generated.messages.PayVaultReadHistoryError;
   import bridge.generated.messages.PayVaultRefreshArgs;
   import bridge.generated.messages.PayVaultRefreshOutput;
   import bridge.generated.messages.PayVaultRefreshError;
   import bridge.generated.messages.PayVaultConsumeArgs;
   import bridge.generated.messages.PayVaultConsumeOutput;
   import bridge.generated.messages.PayVaultConsumeError;
   import bridge.generated.messages.PayVaultCreditArgs;
   import bridge.generated.messages.PayVaultCreditOutput;
   import bridge.generated.messages.PayVaultCreditError;
   import bridge.generated.messages.PayVaultDebitArgs;
   import bridge.generated.messages.PayVaultDebitOutput;
   import bridge.generated.messages.PayVaultDebitError;
   import bridge.generated.messages.PayVaultBuyArgs;
   import bridge.generated.messages.PayVaultBuyOutput;
   import bridge.generated.messages.PayVaultBuyError;
   import bridge.generated.messages.PayVaultGiveArgs;
   import bridge.generated.messages.PayVaultGiveOutput;
   import bridge.generated.messages.PayVaultGiveError;
   import bridge.generated.messages.PayVaultPaymentInfoArgs;
   import bridge.generated.messages.PayVaultPaymentInfoOutput;
   import bridge.utils.Converter;
   import bridge.generated.messages.PayVaultPaymentInfoError;
   import bridge.generated.messages.PayVaultUsePaymentInfoArgs;
   import bridge.generated.messages.PayVaultUsePaymentInfoOutput;
   import bridge.generated.messages.PayVaultUsePaymentInfoError;
   
   public class PayVault extends Object
   {
      
      public function PayVault(param1:HTTPChannel, param2:Client)
      {
         super();
         this.channel = param1;
         this.client = param2;
      }
      
      protected var channel:HTTPChannel;
      
      protected var client:Client;
      
      protected function _payVaultReadHistory(param1:uint, param2:uint, param3:Function = null, param4:Function = null) : void
      {
         var page:uint = param1;
         var pageSize:uint = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PayVaultReadHistoryArgs = new PayVaultReadHistoryArgs(page,pageSize);
         var output:PayVaultReadHistoryOutput = new PayVaultReadHistoryOutput();
         channel.Request(160,input,output,new PayVaultReadHistoryError(),function(param1:PayVaultReadHistoryOutput):*
         {
            var output:PayVaultReadHistoryOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.entries);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultReadHistory",e);
                  throw e;
               }
            }
         },function(param1:PayVaultReadHistoryError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultRefresh(param1:String, param2:Function = null, param3:Function = null) : void
      {
         var lastVersion:String = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PayVaultRefreshArgs = new PayVaultRefreshArgs(lastVersion);
         var output:PayVaultRefreshOutput = new PayVaultRefreshOutput();
         channel.Request(163,input,output,new PayVaultRefreshError(),function(param1:PayVaultRefreshOutput):*
         {
            var output:PayVaultRefreshOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultRefresh",e);
                  throw e;
               }
            }
         },function(param1:PayVaultRefreshError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultConsume(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var ids:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PayVaultConsumeArgs = new PayVaultConsumeArgs(ids);
         var output:PayVaultConsumeOutput = new PayVaultConsumeOutput();
         channel.Request(166,input,output,new PayVaultConsumeError(),function(param1:PayVaultConsumeOutput):*
         {
            var output:PayVaultConsumeOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultConsume",e);
                  throw e;
               }
            }
         },function(param1:PayVaultConsumeError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultCredit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var amount:uint = param1;
         var reason:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PayVaultCreditArgs = new PayVaultCreditArgs(amount,reason);
         var output:PayVaultCreditOutput = new PayVaultCreditOutput();
         channel.Request(169,input,output,new PayVaultCreditError(),function(param1:PayVaultCreditOutput):*
         {
            var output:PayVaultCreditOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultCredit",e);
                  throw e;
               }
            }
         },function(param1:PayVaultCreditError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultDebit(param1:uint, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var amount:uint = param1;
         var reason:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PayVaultDebitArgs = new PayVaultDebitArgs(amount,reason);
         var output:PayVaultDebitOutput = new PayVaultDebitOutput();
         channel.Request(172,input,output,new PayVaultDebitError(),function(param1:PayVaultDebitOutput):*
         {
            var output:PayVaultDebitOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultDebit",e);
                  throw e;
               }
            }
         },function(param1:PayVaultDebitError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultBuy(param1:Array, param2:Boolean, param3:Function = null, param4:Function = null) : void
      {
         var items:Array = param1;
         var storeItems:Boolean = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PayVaultBuyArgs = new PayVaultBuyArgs(items,storeItems);
         var output:PayVaultBuyOutput = new PayVaultBuyOutput();
         channel.Request(175,input,output,new PayVaultBuyError(),function(param1:PayVaultBuyOutput):*
         {
            var output:PayVaultBuyOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultBuy",e);
                  throw e;
               }
            }
         },function(param1:PayVaultBuyError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultGive(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var items:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PayVaultGiveArgs = new PayVaultGiveArgs(items);
         var output:PayVaultGiveOutput = new PayVaultGiveOutput();
         channel.Request(178,input,output,new PayVaultGiveError(),function(param1:PayVaultGiveOutput):*
         {
            var output:PayVaultGiveOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultGive",e);
                  throw e;
               }
            }
         },function(param1:PayVaultGiveError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultPaymentInfo(param1:String, param2:Object, param3:Array, param4:Function = null, param5:Function = null) : void
      {
         var provider:String = param1;
         var purchaseArguments:Object = param2;
         var items:Array = param3;
         var callback:Function = param4;
         var errorHandler:Function = param5;
         var input:PayVaultPaymentInfoArgs = new PayVaultPaymentInfoArgs(provider,Converter.toKeyValueArray(purchaseArguments),items);
         var output:PayVaultPaymentInfoOutput = new PayVaultPaymentInfoOutput();
         channel.Request(181,input,output,new PayVaultPaymentInfoError(),function(param1:PayVaultPaymentInfoOutput):*
         {
            var output:PayVaultPaymentInfoOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(Converter.toKeyValueObject(output.providerArguments));
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultPaymentInfo",e);
                  throw e;
               }
            }
         },function(param1:PayVaultPaymentInfoError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _payVaultUsePaymentInfo(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void
      {
         var provider:String = param1;
         var providerArguments:Object = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PayVaultUsePaymentInfoArgs = new PayVaultUsePaymentInfoArgs(provider,Converter.toKeyValueArray(providerArguments));
         var output:PayVaultUsePaymentInfoOutput = new PayVaultUsePaymentInfoOutput();
         channel.Request(184,input,output,new PayVaultUsePaymentInfoError(),function(param1:PayVaultUsePaymentInfoOutput):*
         {
            var output:PayVaultUsePaymentInfoOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(Converter.toKeyValueObject(output.providerResults),output.vaultContents);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PayVault.payVaultUsePaymentInfo",e);
                  throw e;
               }
            }
         },function(param1:PayVaultUsePaymentInfoError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
   }
}
