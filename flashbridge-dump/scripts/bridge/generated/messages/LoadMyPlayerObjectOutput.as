package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class LoadMyPlayerObjectOutput extends Message
   {
      
      public function LoadMyPlayerObjectOutput()
      {
         super();
         registerField("playerObject","bridge.generated.messages.BigDBObject",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,1);
      }
      
      public var playerObject:BigDBObject;
      
      public var playerObjectDummy:BigDBObject = null;
   }
}
