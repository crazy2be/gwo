package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class RoomInfo extends Message
   {
      
      public function RoomInfo()
      {
         roomData = [];
         super();
         registerField("id","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("roomType","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("onlineUsers","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,3);
         registerField("roomData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
      }
      
      public var id:String;
      
      public var roomType:String;
      
      public var onlineUsers:int;
      
      public var roomData:Array;
      
      public var roomDataDummy:KeyValuePair = null;
   }
}
