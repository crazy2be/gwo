package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightSetSegmentsOutput extends Message
   {
      
      public function PlayerInsightSetSegmentsOutput()
      {
         super();
         registerField("state","bridge.generated.messages.PlayerInsightState",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,1);
      }
      
      public var state:PlayerInsightState;
      
      public var stateDummy:PlayerInsightState = null;
   }
}
