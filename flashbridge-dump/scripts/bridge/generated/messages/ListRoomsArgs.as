package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ListRoomsArgs extends Message
   {
      
      public function ListRoomsArgs(param1:String, param2:Array, param3:int, param4:int, param5:Boolean)
      {
         searchCriteria = [];
         super();
         registerField("roomType","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("searchCriteria","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
         registerField("resultLimit","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,3);
         registerField("resultOffset","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,4);
         registerField("onlyDevRooms","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,5);
         this.roomType = param1;
         this.searchCriteria = param2;
         this.resultLimit = param3;
         this.resultOffset = param4;
         this.onlyDevRooms = param5;
      }
      
      public var roomType:String;
      
      public var searchCriteria:Array;
      
      public var searchCriteriaDummy:KeyValuePair = null;
      
      public var resultLimit:int;
      
      public var resultOffset:int;
      
      public var onlyDevRooms:Boolean;
   }
}
