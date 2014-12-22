package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightSetSegmentsArgs extends Message
   {
      
      public function PlayerInsightSetSegmentsArgs(param1:Array)
      {
         segments = [];
         super();
         registerField("segments","",Descriptor.STRING,Descriptor.LABEL_REPEATED,1);
         this.segments = param1;
      }
      
      public var segments:Array;
   }
}
