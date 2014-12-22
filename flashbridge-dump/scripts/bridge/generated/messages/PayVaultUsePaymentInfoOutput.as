package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultUsePaymentInfoOutput extends Message
   {
      
      public function PayVaultUsePaymentInfoOutput()
      {
         providerResults = [];
         super();
         registerField("providerResults","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         registerField("vaultContents","bridge.generated.messages.PayVaultContents",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var providerResults:Array;
      
      public var providerResultsDummy:KeyValuePair = null;
      
      public var vaultContents:PayVaultContents;
      
      public var vaultContentsDummy:PayVaultContents = null;
   }
}
