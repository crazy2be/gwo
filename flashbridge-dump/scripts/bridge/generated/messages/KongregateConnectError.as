package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class KongregateConnectError extends Message
   {
      
      public function KongregateConnectError()
      {
         super();
         registerField("errorCode","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,1);
         registerField("message","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var errorCode:int;
      
      public var message:String;
   }
}
