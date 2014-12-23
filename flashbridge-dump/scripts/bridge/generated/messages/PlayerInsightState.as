package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightState extends Message
   {
      
      public function PlayerInsightState()
      {
         segments = [];
         super();
         registerField("playersOnline","",Descriptor.INT32,Descriptor.LABEL_OPTIONAL,1);
         registerField("segments","bridge.generated.messages.KeyValuePair",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
      }
      
      public var playersOnline:int;
      
      public var segments:Array;
      
      public var segmentsDummy:KeyValuePair = null;
   }
}
