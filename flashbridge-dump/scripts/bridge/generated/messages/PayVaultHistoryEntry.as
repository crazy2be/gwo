package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PayVaultHistoryEntry extends Message
   {
      
      public function PayVaultHistoryEntry()
      {
         itemKeys = [];
         super();
         registerField("amount","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,1);
         registerField("type","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("timestamp","",Descriptor.LONG,Descriptor.LABEL_OPTIONAL,3);
         registerField("itemKeys","",Descriptor.STRING,Descriptor.LABEL_REPEATED,4);
         registerField("reason","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("providerTransactionId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,6);
         registerField("providerPrice","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,7);
      }
      
      public var amount:int;
      
      public var type:String;
      
      public var timestamp:Number;
      
      public var itemKeys:Array;
      
      public var reason:String;
      
      public var providerTransactionId:String;
      
      public var providerPrice:String;
   }
}
