package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleGetCaptchaOutput extends Message
   {
      
      public function SimpleGetCaptchaOutput()
      {
         super();
         registerField("captchaKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("captchaImageUrl","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var captchaKey:String;
      
      public var captchaImageUrl:String;
   }
}
