package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.Client;
   import bridge.generated.messages.PlayerInsightRefreshArgs;
   import bridge.generated.messages.PlayerInsightRefreshOutput;
   import bridge.generated.messages.PlayerInsightRefreshError;
   import bridge.generated.messages.PlayerInsightSetSegmentsArgs;
   import bridge.generated.messages.PlayerInsightSetSegmentsOutput;
   import bridge.generated.messages.PlayerInsightSetSegmentsError;
   import bridge.generated.messages.PlayerInsightTrackInvitedByArgs;
   import bridge.generated.messages.PlayerInsightTrackInvitedByOutput;
   import bridge.generated.messages.PlayerInsightTrackInvitedByError;
   import bridge.generated.messages.PlayerInsightTrackEventsArgs;
   import bridge.generated.messages.PlayerInsightTrackEventsOutput;
   import bridge.generated.messages.PlayerInsightTrackEventsError;
   import bridge.generated.messages.PlayerInsightTrackExternalPaymentArgs;
   import bridge.generated.messages.PlayerInsightTrackExternalPaymentOutput;
   import bridge.generated.messages.PlayerInsightTrackExternalPaymentError;
   
   public class PlayerInsight extends Object
   {
      
      public function PlayerInsight(param1:HTTPChannel, param2:Client)
      {
         super();
         this.channel = param1;
         this.client = param2;
      }
      
      protected var channel:HTTPChannel;
      
      protected var client:Client;
      
      protected function _playerInsightRefresh(param1:Function = null, param2:Function = null) : void
      {
         var callback:Function = param1;
         var errorHandler:Function = param2;
         var input:PlayerInsightRefreshArgs = new PlayerInsightRefreshArgs();
         var output:PlayerInsightRefreshOutput = new PlayerInsightRefreshOutput();
         channel.Request(301,input,output,new PlayerInsightRefreshError(),function(param1:PlayerInsightRefreshOutput):*
         {
            var output:PlayerInsightRefreshOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.state);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PlayerInsight.playerInsightRefresh",e);
                  throw e;
               }
            }
         },function(param1:PlayerInsightRefreshError):*
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
      
      protected function _playerInsightSetSegments(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var segments:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PlayerInsightSetSegmentsArgs = new PlayerInsightSetSegmentsArgs(segments);
         var output:PlayerInsightSetSegmentsOutput = new PlayerInsightSetSegmentsOutput();
         channel.Request(304,input,output,new PlayerInsightSetSegmentsError(),function(param1:PlayerInsightSetSegmentsOutput):*
         {
            var output:PlayerInsightSetSegmentsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback(output.state);
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PlayerInsight.playerInsightSetSegments",e);
                  throw e;
               }
            }
         },function(param1:PlayerInsightSetSegmentsError):*
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
      
      protected function _playerInsightTrackInvitedBy(param1:String, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var invitingUserId:String = param1;
         var invitationChannel:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PlayerInsightTrackInvitedByArgs = new PlayerInsightTrackInvitedByArgs(invitingUserId,invitationChannel);
         var output:PlayerInsightTrackInvitedByOutput = new PlayerInsightTrackInvitedByOutput();
         channel.Request(307,input,output,new PlayerInsightTrackInvitedByError(),function(param1:PlayerInsightTrackInvitedByOutput):*
         {
            var output:PlayerInsightTrackInvitedByOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PlayerInsight.playerInsightTrackInvitedBy",e);
                  throw e;
               }
            }
         },function(param1:PlayerInsightTrackInvitedByError):*
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
      
      protected function _playerInsightTrackEvents(param1:Array, param2:Function = null, param3:Function = null) : void
      {
         var events:Array = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         var input:PlayerInsightTrackEventsArgs = new PlayerInsightTrackEventsArgs(events);
         var output:PlayerInsightTrackEventsOutput = new PlayerInsightTrackEventsOutput();
         channel.Request(311,input,output,new PlayerInsightTrackEventsError(),function(param1:PlayerInsightTrackEventsOutput):*
         {
            var output:PlayerInsightTrackEventsOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PlayerInsight.playerInsightTrackEvents",e);
                  throw e;
               }
            }
         },function(param1:PlayerInsightTrackEventsError):*
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
      
      protected function _playerInsightTrackExternalPayment(param1:String, param2:int, param3:Function = null, param4:Function = null) : void
      {
         var currency:String = param1;
         var amount:int = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:PlayerInsightTrackExternalPaymentArgs = new PlayerInsightTrackExternalPaymentArgs(currency,amount);
         var output:PlayerInsightTrackExternalPaymentOutput = new PlayerInsightTrackExternalPaymentOutput();
         channel.Request(314,input,output,new PlayerInsightTrackExternalPaymentError(),function(param1:PlayerInsightTrackExternalPaymentOutput):*
         {
            var output:PlayerInsightTrackExternalPaymentOutput = param1;
            if(callback != null)
            {
               try
               {
                  callback();
               }
               catch(e:Error)
               {
                  client.handleCallbackError("PlayerInsight.playerInsightTrackExternalPayment",e);
                  throw e;
               }
            }
         },function(param1:PlayerInsightTrackExternalPaymentError):*
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
