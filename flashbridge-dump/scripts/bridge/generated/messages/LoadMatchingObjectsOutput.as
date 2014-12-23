package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class LoadMatchingObjectsOutput extends Message
   {
      
      public function LoadMatchingObjectsOutput()
      {
         objects = [];
         super();
         registerField("objects","bridge.generated.messages.BigDBObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
      }
      
      public var objects:Array;
      
      public var objectsDummy:BigDBObject = null;
   }
}
