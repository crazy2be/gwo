package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ServerEndpoint extends Message
   {
      
      public function ServerEndpoint()
      {
         super();
         registerField("address","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("port","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var address:String;
      
      public var port:int;
   }
}
