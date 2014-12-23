package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class BigDBObjectId extends Message
   {
      
      public function BigDBObjectId()
      {
         keys = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("keys","",Descriptor.STRING,Descriptor.LABEL_REPEATED,2);
      }
      
      public var table:String;
      
      public var keys:Array;
   }
}
