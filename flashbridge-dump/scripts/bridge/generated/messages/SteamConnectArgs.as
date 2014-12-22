package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SteamConnectArgs extends Message
   {
      
      public function SteamConnectArgs(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Array)
      {
         playerInsightSegments = [];
         clientInfo = [];
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("steamAppId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("steamSessionTicket","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("playerInsightSegments","",Descriptor.STRING,Descriptor.LABEL_REPEATED,4);
         registerField("clientAPI","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("clientInfo","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,6);
         this.gameId = param1;
         this.steamAppId = param2;
         this.steamSessionTicket = param3;
         this.playerInsightSegments = param4;
         this.clientAPI = param5;
         this.clientInfo = param6;
      }
      
      public var gameId:String;
      
      public var steamAppId:String;
      
      public var steamSessionTicket:String;
      
      public var playerInsightSegments:Array;
      
      public var clientAPI:String;
      
      public var clientInfo:Array;
      
      public var clientInfoDummy:KeyValuePair = null;
   }
}
