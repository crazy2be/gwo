package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleConnectOutput extends Message
   {
      
      public function SimpleConnectOutput()
      {
         super();
         registerField("token","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("userId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("showBranding","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         registerField("gameFSRedirectMap","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("partnerId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("playerInsightState","bridge.generated.messages.PlayerInsightState",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,6);
      }
      
      public var token:String;
      
      public var userId:String;
      
      public var showBranding:Boolean;
      
      public var gameFSRedirectMap:String;
      
      public var partnerId:String;
      
      public var playerInsightState:PlayerInsightState;
      
      public var playerInsightStateDummy:PlayerInsightState = null;
   }
}
