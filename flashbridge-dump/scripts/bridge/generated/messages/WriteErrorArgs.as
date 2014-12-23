package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class WriteErrorArgs extends Message
   {
      
      public function WriteErrorArgs(param1:String, param2:String, param3:String, param4:String, param5:Array)
      {
         extraData = [];
         super();
         registerField("source","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("error","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("details","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("stacktrace","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,4);
         registerField("extraData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,5);
         this.source = param1;
         this.error = param2;
         this.details = param3;
         this.stacktrace = param4;
         this.extraData = param5;
      }
      
      public var source:String;
      
      public var error:String;
      
      public var details:String;
      
      public var stacktrace:String;
      
      public var extraData:Array;
      
      public var extraDataDummy:KeyValuePair = null;
   }
}
