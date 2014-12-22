package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class CreateJoinRoomOutput extends Message
   {
      
      public function CreateJoinRoomOutput()
      {
         endpoints = [];
         super();
         registerField("roomId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("joinKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("endpoints","bridge.generated.messages.ServerEndpoint",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
      }
      
      public var roomId:String;
      
      public var joinKey:String;
      
      public var endpoints:Array;
      
      public var endpointsDummy:ServerEndpoint = null;
   }
}
