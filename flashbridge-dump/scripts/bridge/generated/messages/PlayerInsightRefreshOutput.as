package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightRefreshOutput extends Message
   {
      
      public function PlayerInsightRefreshOutput()
      {
         super();
         registerField("state","bridge.generated.messages.PlayerInsightState",Descriptor.MESSAGE,Descriptor.LABEL_OPTIONAL,1);
      }
      
      public var state:PlayerInsightState;
      
      public var stateDummy:PlayerInsightState = null;
   }
}
