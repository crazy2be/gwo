package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class DeleteObjectsArgs extends Message
   {
      
      public function DeleteObjectsArgs(param1:Array)
      {
         objectIds = [];
         super();
         registerField("objectIds","bridge.generated.messages.BigDBObjectId",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         this.objectIds = param1;
      }
      
      public var objectIds:Array;
      
      public var objectIdsDummy:BigDBObjectId = null;
   }
}
