package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SaveObjectChangesOutput extends Message
   {
      
      public function SaveObjectChangesOutput()
      {
         versions = [];
         super();
         registerField("versions","",Descriptor.STRING,Descriptor.LABEL_REPEATED,1);
      }
      
      public var versions:Array;
   }
}
