package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultContents extends Message
   {
      
      public function PayVaultContents()
      {
         items = [];
         super();
         registerField("version","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("coins","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,2);
         registerField("items","bridge.generated.messages.PayVaultItem",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
      }
      
      public var version:String;
      
      public var coins:int;
      
      public var items:Array;
      
      public var itemsDummy:PayVaultItem = null;
   }
}
