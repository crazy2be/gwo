package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SimpleRegisterArgs extends Message
   {
      
      public function SimpleRegisterArgs(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Array, param8:String, param9:Array, param10:String, param11:Array)
      {
         extraData = [];
         playerInsightSegments = [];
         clientInfo = [];
         super();
         registerField("gameId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("username","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("password","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("email","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("captchaKey","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,6);
         registerField("captchaValue","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,7);
         registerField("extraData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,5);
         registerField("partnerId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,8);
         registerField("playerInsightSegments","",Descriptor.STRING,Descriptor.LABEL_REPEATED,9);
         registerField("clientAPI","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,10);
         registerField("clientInfo","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,11);
         this.gameId = param1;
         this.username = param2;
         this.password = param3;
         this.email = param4;
         this.captchaKey = param5;
         this.captchaValue = param6;
         this.extraData = param7;
         this.partnerId = param8;
         this.playerInsightSegments = param9;
         this.clientAPI = param10;
         this.clientInfo = param11;
      }
      
      public var gameId:String;
      
      public var username:String;
      
      public var password:String;
      
      public var email:String;
      
      public var captchaKey:String;
      
      public var captchaValue:String;
      
      public var extraData:Array;
      
      public var extraDataDummy:KeyValuePair = null;
      
      public var partnerId:String;
      
      public var playerInsightSegments:Array;
      
      public var clientAPI:String;
      
      public var clientInfo:Array;
      
      public var clientInfoDummy:KeyValuePair = null;
   }
}
