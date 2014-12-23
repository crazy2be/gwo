package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PartnerPaySetTagArgs extends Message
   {
      
      public function PartnerPaySetTagArgs(param1:String)
      {
         super();
         registerField("partnerId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         this.partnerId = param1;
      }
      
      public var partnerId:String;
   }
}
