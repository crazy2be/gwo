package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultBuyArgs extends Message
   {
      
      public function PayVaultBuyArgs(param1:Array, param2:Boolean)
      {
         items = [];
         super();
         registerField("items","bridge.generated.messages.PayVaultBuyItemInfo",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         registerField("storeItems","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,2);
         this.items = param1;
         this.storeItems = param2;
      }
      
      public var items:Array;
      
      public var itemsDummy:PayVaultBuyItemInfo = null;
      
      public var storeItems:Boolean;
   }
}
