package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultRefreshOutput extends Message
   {
      
      public function PayVaultRefreshOutput()
      {
         super();
         registerField("vaultContents","bridge.generated.messages.PayVaultContents",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,1);
      }
      
      public var vaultContents:PayVaultContents;
      
      public var vaultContentsDummy:PayVaultContents = null;
   }
}
