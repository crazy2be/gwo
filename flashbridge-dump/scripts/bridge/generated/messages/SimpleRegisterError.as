package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleRegisterError extends Message
   {
      
      public function SimpleRegisterError()
      {
         super();
         registerField("errorCode","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,1);
         registerField("message","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("usernameError","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("passwordError","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("emailError","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,5);
         registerField("captchaError","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,6);
      }
      
      public var errorCode:int;
      
      public var message:String;
      
      public var usernameError:String;
      
      public var passwordError:String;
      
      public var emailError:String;
      
      public var captchaError:String;
   }
}
