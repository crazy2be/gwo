package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class JoinRoomArgs extends Message
   {
      
      public function JoinRoomArgs(param1:String, param2:Array, param3:Boolean)
      {
         joinData = [];
         super();
         registerField("roomId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("joinData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
         registerField("isDevRoom","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         this.roomId = param1;
         this.joinData = param2;
         this.isDevRoom = param3;
      }
      
      public var roomId:String;
      
      public var joinData:Array;
      
      public var joinDataDummy:KeyValuePair = null;
      
      public var isDevRoom:Boolean;
   }
}
