package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class LoadMatchingObjectsArgs extends Message
   {
      
      public function LoadMatchingObjectsArgs(param1:String, param2:String, param3:Array, param4:int)
      {
         indexValue = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("index","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("indexValue","bridge.generated.messages.ValueObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,3);
         registerField("limit","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,4);
         this.table = param1;
         this.index = param2;
         this.indexValue = param3;
         this.limit = param4;
      }
      
      public var table:String;
      
      public var index:String;
      
      public var indexValue:Array;
      
      public var indexValueDummy:ValueObject = null;
      
      public var limit:int;
   }
}
