package bridge.generated
{
   import flash.display.MovieClip;
   import bridge.utils.HTTPChannel;
   import bridge.generated.messages.ConnectArgs;
   import bridge.generated.messages.ConnectOutput;
   import bridge.utils.Converter;
   import bridge.generated.messages.ConnectError;
   
   public class PlayerIO extends MovieClip
   {
      
      public function PlayerIO()
      {
         super();
      }
      
      protected function _connect(param1:HTTPChannel, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Array, param8:String, param9:Object, param10:Function = null, param11:Function = null) : void
      {
         var channel:HTTPChannel = param1;
         var gameId:String = param2;
         var connectionId:String = param3;
         var userId:String = param4;
         var auth:String = param5;
         var partnerId:String = param6;
         var playerInsightSegments:Array = param7;
         var clientAPI:String = param8;
         var clientInfo:Object = param9;
         var callback:Function = param10;
         var errorHandler:Function = param11;
         var input:ConnectArgs = new ConnectArgs(gameId,connectionId,userId,auth,partnerId,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:ConnectOutput = new ConnectOutput();
         channel.Request(10,input,output,new ConnectError(),function(param1:ConnectOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.partnerId,param1.playerInsightState);
            }
         },function(param1:ConnectError):*
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
