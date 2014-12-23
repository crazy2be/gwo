package bridge.generated.messages
{
   import com.protobuf.Message;
   import flash.utils.ByteArray;
   import com.protobuf.Descriptor;
   
   public final class ValueObject extends Message
   {
      
      public function ValueObject()
      {
         arrayProperties = [];
         objectProperties = [];
         super();
         registerField("valueType","",Descriptor.ENUM,Descriptor.LABEL_OPTIONAL,1);
         registerField("string","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("int32","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,3);
         registerField("uInt","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,4);
         registerField("long","",Descriptor.LONG,Descriptor.LABEL_OPTIONAL,5);
         registerField("bool","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,6);
         registerField("float","",Descriptor.FLOAT,Descriptor.LABEL_OPTIONAL,7);
         registerField("double","",Descriptor.DOUBLE,Descriptor.LABEL_OPTIONAL,8);
         registerField("byteArray","",Descriptor.BYTEARRAY,Descriptor.LABEL_OPTIONAL,9);
         registerField("dateTime","",Descriptor.LONG,Descriptor.LABEL_OPTIONAL,10);
         registerField("arrayProperties","bridge.generated.messages.ArrayProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,11);
         registerField("objectProperties","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,12);
      }
      
      public var valueType:int;
      
      public var string:String;
      
      public var int32:int;
      
      public var uInt:uint;
      
      public var long:Number;
      
      public var bool:Boolean;
      
      public var float:Number;
      
      public var double:Number;
      
      public var byteArray:ByteArray;
      
      public var dateTime:Number;
      
      public var arrayProperties:Array;
      
      public var arrayPropertiesDummy:ArrayProperty = null;
      
      public var objectProperties:Array;
      
      public var objectPropertiesDummy:ObjectProperty = null;
   }
}
