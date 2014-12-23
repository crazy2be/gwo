package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class DeleteIndexRangeArgs extends Message
   {
      
      public function DeleteIndexRangeArgs(param1:String, param2:String, param3:Array, param4:Array)
      {
         startIndexValue = [];
         stopIndexValue = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("index","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("startIndexValue","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
         registerField("stopIndexValue","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
         this.table = param1;
         this.index = param2;
         this.startIndexValue = param3;
         this.stopIndexValue = param4;
      }
      
      public var table:String;
      
      public var index:String;
      
      public var startIndexValue:Array;
      
      public var startIndexValueDummy:ValueObject = null;
      
      public var stopIndexValue:Array;
      
      public var stopIndexValueDummy:ValueObject = null;
   }
}
