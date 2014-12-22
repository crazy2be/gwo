package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class LoadIndexRangeArgs extends Message
   {
      
      public function LoadIndexRangeArgs(param1:String, param2:String, param3:Array, param4:Array, param5:int)
      {
         startIndexValue = [];
         stopIndexValue = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("index","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("startIndexValue","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
         registerField("stopIndexValue","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
         registerField("limit","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,5);
         this.table = param1;
         this.index = param2;
         this.startIndexValue = param3;
         this.stopIndexValue = param4;
         this.limit = param5;
      }
      
      public var table:String;
      
      public var index:String;
      
      public var startIndexValue:Array;
      
      public var startIndexValueDummy:ValueObject = null;
      
      public var stopIndexValue:Array;
      
      public var stopIndexValueDummy:ValueObject = null;
      
      public var limit:int;
   }
}
