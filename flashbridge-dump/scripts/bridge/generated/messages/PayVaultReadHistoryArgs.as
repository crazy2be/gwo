package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultReadHistoryArgs extends Message
   {
      
      public function PayVaultReadHistoryArgs(param1:uint, param2:uint)
      {
         super();
         registerField("page","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,1);
         registerField("pageSize","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,2);
         this.page = param1;
         this.pageSize = param2;
      }
      
      public var page:uint;
      
      public var pageSize:uint;
   }
}
