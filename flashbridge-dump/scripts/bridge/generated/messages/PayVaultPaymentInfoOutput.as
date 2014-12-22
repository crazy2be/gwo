package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultPaymentInfoOutput extends Message
   {
      
      public function PayVaultPaymentInfoOutput()
      {
         providerArguments = [];
         super();
         registerField("providerArguments","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
      }
      
      public var providerArguments:Array;
      
      public var providerArgumentsDummy:KeyValuePair = null;
   }
}
