package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class KeyValuePair extends Message
   {
      
      public function KeyValuePair()
      {
         super();
         registerField("key","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("value","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var key:String;
      
      public var value:String;
   }
}
