package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PartnerPayTriggerArgs extends Message
   {
      
      public function PartnerPayTriggerArgs(param1:String, param2:uint)
      {
         super();
         registerField("key","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("count","",Descriptor.UINT,Descriptor.LABEL_OPTIONAL,2);
         this.key = param1;
         this.count = param2;
      }
      
      public var key:String;
      
      public var count:uint;
   }
}
