package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ConnectArgs extends Message
   {
      
      public function ConnectArgs(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Array, param7:String, param8:Array)
      {
         playerInsightSegments = [];
         clientInfo = [];
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("connectionId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("userId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("auth","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("partnerId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("playerInsightSegments","",Descriptor.STRING,Descriptor.LABEL_REPEATED,6);
         registerField("clientAPI","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,7);
         registerField("clientInfo","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,8);
         this.gameId = param1;
         this.connectionId = param2;
         this.userId = param3;
         this.auth = param4;
         this.partnerId = param5;
         this.playerInsightSegments = param6;
         this.clientAPI = param7;
         this.clientInfo = param8;
      }
      
      public var gameId:String;
      
      public var connectionId:String;
      
      public var userId:String;
      
      public var auth:String;
      
      public var partnerId:String;
      
      public var playerInsightSegments:Array;
      
      public var clientAPI:String;
      
      public var clientInfo:Array;
      
      public var clientInfoDummy:KeyValuePair = null;
   }
}
