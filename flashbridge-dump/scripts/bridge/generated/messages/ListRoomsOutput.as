package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class ListRoomsOutput extends Message
   {
      
      public function ListRoomsOutput()
      {
         rooms = [];
         super();
         registerField("rooms","bridge.generated.messages.RoomInfo",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
      }
      
      public var rooms:Array;
      
      public var roomsDummy:RoomInfo = null;
   }
}
