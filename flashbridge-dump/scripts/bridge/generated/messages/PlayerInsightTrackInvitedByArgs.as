package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class PlayerInsightTrackInvitedByArgs extends Message
   {
      
      public function PlayerInsightTrackInvitedByArgs(param1:String, param2:String)
      {
         super();
         registerField("invitingUserId","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("invitationChannel","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         this.invitingUserId = param1;
         this.invitationChannel = param2;
      }
      
      public var invitingUserId:String;
      
      public var invitationChannel:String;
   }
}
