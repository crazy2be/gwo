package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightTrackEventsArgs extends Message
   {
      
      public function PlayerInsightTrackEventsArgs(param1:Array)
      {
         events = [];
         super();
         registerField("events","bridge.generated.messages.PlayerInsightEvent",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         this.events = param1;
      }
      
      public var events:Array;
      
      public var eventsDummy:PlayerInsightEvent = null;
   }
}
