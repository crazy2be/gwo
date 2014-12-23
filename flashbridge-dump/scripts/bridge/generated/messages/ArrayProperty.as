package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ArrayProperty extends Message
   {
      
      public function ArrayProperty()
      {
         super();
         registerField("index","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,1);
         registerField("value","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var index:int;
      
      public var value:ValueObject;
      
      public var valueDummy:ValueObject = null;
   }
}
