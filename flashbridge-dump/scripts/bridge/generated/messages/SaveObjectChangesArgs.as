package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class SaveObjectChangesArgs extends Message
   {
      
      public function SaveObjectChangesArgs(param1:int, param2:Array, param3:Boolean)
      {
         changesets = [];
         super();
         registerField("lockType","",Descriptor.ENUM,Descriptor.LABEL_OPTIONAL,1);
         registerField("changesets","bridge.generated.messages.BigDBChangeset",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,2);
         registerField("createIfMissing","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,3);
         this.lockType = param1;
         this.changesets = param2;
         this.createIfMissing = param3;
      }
      
      public var lockType:int;
      
      public var changesets:Array;
      
      public var changesetsDummy:BigDBChangeset = null;
      
      public var createIfMissing:Boolean;
   }
}
