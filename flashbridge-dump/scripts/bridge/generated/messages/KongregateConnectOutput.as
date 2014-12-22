package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class KongregateConnectOutput extends Message
   {
      
      public function KongregateConnectOutput()
      {
         super();
         registerField("token","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("userId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("showBranding","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         registerField("gameFSRedirectMap","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("playerInsightState","bridge.generated.messages.PlayerInsightState",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,5);
      }
      
      public var token:String;
      
      public var userId:String;
      
      public var showBranding:Boolean;
      
      public var gameFSRedirectMap:String;
      
      public var playerInsightState:PlayerInsightState;
      
      public var playerInsightStateDummy:PlayerInsightState = null;
   }
}
