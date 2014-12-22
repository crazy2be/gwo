package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultConsumeArgs extends Message
   {
      
      public function PayVaultConsumeArgs(param1:Array)
      {
         ids = [];
         super();
         registerField("ids","",Descriptor.STRING,Descriptor.LABEL_REPEATED,1);
         this.ids = param1;
      }
      
      public var ids:Array;
   }
}
