package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleGetCaptchaArgs extends Message
   {
      
      public function SimpleGetCaptchaArgs(param1:String, param2:int, param3:int)
      {
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("width","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,2);
         registerField("height","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,3);
         this.gameId = param1;
         this.width = param2;
         this.height = param3;
      }
      
      public var gameId:String;
      
      public var width:int;
      
      public var height:int;
   }
}
