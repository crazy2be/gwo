package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleConnectArgs extends Message
   {
      
      public function SimpleConnectArgs(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Array)
      {
         playerInsightSegments = [];
         clientInfo = [];
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("usernameOrEmail","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("password","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("playerInsightSegments","",Descriptor.STRING,Descriptor.LABEL_REPEATED,4);
         registerField("clientAPI","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("clientInfo","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,6);
         this.gameId = param1;
         this.usernameOrEmail = param2;
         this.password = param3;
         this.playerInsightSegments = param4;
         this.clientAPI = param5;
         this.clientInfo = param6;
      }
      
      public var gameId:String;
      
      public var usernameOrEmail:String;
      
      public var password:String;
      
      public var playerInsightSegments:Array;
      
      public var clientAPI:String;
      
      public var clientInfo:Array;
      
      public var clientInfoDummy:KeyValuePair = null;
   }
}
