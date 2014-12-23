package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class CreateRoomOutput extends Message
   {
      
      public function CreateRoomOutput()
      {
         super();
         registerField("roomId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
      }
      
      public var roomId:String;
   }
}
