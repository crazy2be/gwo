package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultBuyItemInfo extends Message
   {
      
      public function PayVaultBuyItemInfo()
      {
         payload = [];
         super();
         registerField("itemKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("payload","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
      }
      
      public var itemKey:String;
      
      public var payload:Array;
      
      public var payloadDummy:ObjectProperty = null;
   }
}
