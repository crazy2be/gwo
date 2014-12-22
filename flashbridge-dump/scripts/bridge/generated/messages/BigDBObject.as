package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class BigDBObject extends Message
   {
      
      public function BigDBObject()
      {
         properties = [];
         super();
         registerField("key","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("version","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("properties","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
         registerField("creator","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,4);
      }
      
      public var key:String;
      
      public var version:String;
      
      public var properties:Array;
      
      public var propertiesDummy:ObjectProperty = null;
      
      public var creator:uint;
   }
}
