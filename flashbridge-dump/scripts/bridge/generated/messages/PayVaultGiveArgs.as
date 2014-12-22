package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultGiveArgs extends Message
   {
      
      public function PayVaultGiveArgs(param1:Array)
      {
         items = [];
         super();
         registerField("items","bridge.generated.messages.PayVaultBuyItemInfo",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         this.items = param1;
      }
      
      public var items:Array;
      
      public var itemsDummy:PayVaultBuyItemInfo = null;
   }
}
