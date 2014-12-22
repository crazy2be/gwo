package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightEvent extends Message
   {
      
      public function PlayerInsightEvent()
      {
         super();
         registerField("eventType","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("value","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,2);
      }
      
      public var eventType:String;
      
      public var value:int;
   }
}
