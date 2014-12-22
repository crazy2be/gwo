package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class JoinRoomOutput extends Message
   {
      
      public function JoinRoomOutput()
      {
         endpoints = [];
         super();
         registerField("joinKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("endpoints","bridge.generated.messages.ServerEndpoint",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
      }
      
      public var joinKey:String;
      
      public var endpoints:Array;
      
      public var endpointsDummy:ServerEndpoint = null;
   }
}
