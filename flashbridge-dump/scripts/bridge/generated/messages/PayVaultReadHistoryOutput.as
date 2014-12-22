package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultReadHistoryOutput extends Message
   {
      
      public function PayVaultReadHistoryOutput()
      {
         entries = [];
         super();
         registerField("entries","bridge.generated.messages.PayVaultHistoryEntry",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
      }
      
      public var entries:Array;
      
      public var entriesDummy:PayVaultHistoryEntry = null;
   }
}
