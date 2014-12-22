package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultUsePaymentInfoArgs extends Message
   {
      
      public function PayVaultUsePaymentInfoArgs(param1:String, param2:Array)
      {
         providerArguments = [];
         super();
         registerField("provider","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("providerArguments","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
         this.provider = param1;
         this.providerArguments = param2;
      }
      
      public var provider:String;
      
      public var providerArguments:Array;
      
      public var providerArgumentsDummy:KeyValuePair = null;
   }
}
