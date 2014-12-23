package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultRefreshArgs extends Message
   {
      
      public function PayVaultRefreshArgs(param1:String)
      {
         super();
         registerField("lastVersion","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         this.lastVersion = param1;
      }
      
      public var lastVersion:String;
   }
}
