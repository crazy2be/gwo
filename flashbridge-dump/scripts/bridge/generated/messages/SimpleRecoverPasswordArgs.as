package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleRecoverPasswordArgs extends Message
   {
      
      public function SimpleRecoverPasswordArgs(param1:String, param2:String)
      {
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("usernameOrEmail","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         this.gameId = param1;
         this.usernameOrEmail = param2;
      }
      
      public var gameId:String;
      
      public var usernameOrEmail:String;
   }
}
