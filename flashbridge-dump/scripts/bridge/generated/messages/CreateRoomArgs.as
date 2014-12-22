package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class CreateRoomArgs extends Message
   {
      
      public function CreateRoomArgs(param1:String, param2:String, param3:Boolean, param4:Array, param5:Boolean)
      {
         roomData = [];
         super();
         registerField("roomId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("roomType","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("visible","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         registerField("roomData","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
         registerField("isDevRoom","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,5);
         this.roomId = param1;
         this.roomType = param2;
         this.visible = param3;
         this.roomData = param4;
         this.isDevRoom = param5;
      }
      
      public var roomId:String;
      
      public var roomType:String;
      
      public var visible:Boolean;
      
      public var roomData:Array;
      
      public var roomDataDummy:KeyValuePair = null;
      
      public var isDevRoom:Boolean;
   }
}
