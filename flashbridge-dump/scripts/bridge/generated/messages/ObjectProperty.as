package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ObjectProperty extends Message
   {
      
      public function ObjectProperty()
      {
         super();
         registerField("name","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("value","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var name:String;
      
      public var value:ValueObject;
      
      public var valueDummy:ValueObject = null;
   }
}
