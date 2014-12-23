package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.Client;
   import bridge.generated.messages.PartnerPayTriggerArgs;
   import bridge.generated.messages.PartnerPayTriggerOutput;
   import bridge.generated.messages.PartnerPayTriggerError;
   import bridge.generated.messages.PartnerPaySetTagArgs;
   import bridge.generated.messages.PartnerPaySetTagOutput;
   import bridge.generated.messages.PartnerPaySetTagError;
   
   public class PartnerPay extends Object
   {
      
      public function PartnerPay(param1:HTTPChannel, param2:Client)
      {
         super();
         this.channel = param1;
         this.client = param2;
      }
      
      protected var channel:HTTPChannel;
      
      protected var client:Client;
      
      protected function _partnerPayTrigger(param1:String, param2:uint, param3:Function = null, param4:Function = null) : void
      {
         var key:String = param1;
         var count:uint = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PartnerPayTriggerArgs = new PartnerPayTriggerArgs(key,count);
         var output:PartnerPayTriggerOutput = new PartnerPayTriggerOutput();
         channel.Request(200,input,output,new PartnerPayTriggerError(),function(param1:PartnerPayTriggerOutput):*
         {
            var output:PartnerPayTriggerOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PartnerPay.partnerPayTrigger",e);
                  throw e;
               }
            }
         },function(param1:PartnerPayTriggerError):*
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
      
      protected function _partnerPaySetTag(param1:String, param2:Function = null, param3:Function = null) : void
      {
         var partnerId:String = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PartnerPaySetTagArgs = new PartnerPaySetTagArgs(partnerId);
         var output:PartnerPaySetTagOutput = new PartnerPaySetTagOutput();
         channel.Request(203,input,output,new PartnerPaySetTagError(),function(param1:PartnerPaySetTagOutput):*
         {
            var output:PartnerPaySetTagOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PartnerPay.partnerPaySetTag",e);
                  throw e;
               }
            }
         },function(param1:PartnerPaySetTagError):*
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
