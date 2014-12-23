package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class CreateJoinRoomArgs extends Message
   {
      
      public function CreateJoinRoomArgs(param1:String, param2:String, param3:Boolean, param4:Array, param5:Array, param6:Boolean)
      {
         roomData = [];
         joinData = [];
         super();
         registerField("roomId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("roomType","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("visible","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         registerField("roomData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
         registerField("joinData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,5);
         registerField("isDevRoom","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,6);
         this.roomId = param1;
         this.roomType = param2;
         this.visible = param3;
         this.roomData = param4;
         this.joinData = param5;
         this.isDevRoom = param6;
      }
      
      public var roomId:String;
      
      public var roomType:String;
      
      public var visible:Boolean;
      
      public var roomData:Array;
      
      public var roomDataDummy:KeyValuePair = null;
      
      public var joinData:Array;
      
      public var joinDataDummy:KeyValuePair = null;
      
      public var isDevRoom:Boolean;
   }
}
