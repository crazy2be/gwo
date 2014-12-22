package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultDebitArgs extends Message
   {
      
      public function PayVaultDebitArgs(param1:uint, param2:String)
      {
         super();
         registerField("amount","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,1);
         registerField("reason","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         this.amount = param1;
         this.reason = param2;
      }
      
      public var amount:uint;
      
      public var reason:String;
   }
}
