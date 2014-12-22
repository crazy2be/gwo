package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultItem extends Message
   {
      
      public function PayVaultItem()
      {
         properties = [];
         super();
         registerField("id","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("itemKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("purchaseDate","",Descriptor.LONG,Descriptor.LABEL_OPTIONAL,3);
         registerField("properties","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
      }
      
      public var id:String;
      
      public var itemKey:String;
      
      public var purchaseDate:Number;
      
      public var properties:Array;
      
      public var propertiesDummy:ObjectProperty = null;
   }
}
