package bridge
{
   import bridge.generated.PlayerIO;
   import bridge.utils.HTTPChannel;
   import flash.display.Stage;
   import bridge.utils.Utilities;
   import bridge.generated.messages.PlayerInsightState;
   
   public final class PlayerIO extends bridge.generated.PlayerIO
   {
      
      public function PlayerIO()
      {
         channel = new HTTPChannel();
         qc = new QuickConnect(channel);
         super();
      }
      
      public namespace inside = "http://playerio.com/inside/";
      
      public static var clients:Object = {};
      
      private var channel:HTTPChannel;
      
      private var qc:QuickConnect;
      
      public function connect(param1:Stage, param2:String, param3:String, param4:String, param5:String, param6:* = null, param7:* = null, param8:* = null, param9:* = null) : void
      {
         var stage:Stage = param1;
         var gameId:String = param2;
         var connectionId:String = param3;
         var userId:String = param4;
         var auth:String = param5;
         var partnerId:* = param6;
         var playerInsightSegments:* = param7;
         var callback:* = param8;
         var errorHandler:* = param9;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(partnerId is Function)
            {
               connect(stage,gameId,connectionId,userId,auth,null,null,partnerId,playerInsightSegments);
               return;
            }
            if(playerInsightSegments is Function)
            {
               connect(stage,gameId,connectionId,userId,auth,partnerId,null,playerInsightSegments,callback);
               return;
            }
            _connect(channel,gameId,connectionId,userId,auth,partnerId,playerInsightSegments,Utilities.clientAPI,Utilities.getSystemInfo(),function(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:PlayerInsightState):*
            {
               if((param3) && (Minilogo.showLogo))
               {
                  stage.addChild(new Minilogo());
               }
               var _loc7_:HTTPChannel = new HTTPChannel();
               _loc7_.token = param1;
               callback(PlayerIO.clients[gameId] = new Client(_loc7_,param2,stage,param4,param5,param6));
            },errorHandler);
            return;
         }
      }
      
      public function showLogo(param1:Stage, param2:String) : void
      {
         if((param1 == null) || (param1.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            param1.addChild(new Minilogo(param2));
            return;
         }
      }
      
      public function get quickConnect() : QuickConnect
      {
         return qc;
      }
      
      public function getURL(param1:String, param2:String) : String
      {
         if(clients[param1])
         {
            return clients[param1].gameFS.getURL(param2);
         }
         return "http://r.playerio.com/r/" + param1 + param2;
      }
   }
}
