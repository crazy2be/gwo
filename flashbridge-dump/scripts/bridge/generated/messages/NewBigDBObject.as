package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class NewBigDBObject extends Message
   {
      
      public function NewBigDBObject()
      {
         properties = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("key","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("properties","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
      }
      
      public var table:String;
      
      public var key:String;
      
      public var properties:Array;
      
      public var propertiesDummy:ObjectProperty = null;
   }
}
