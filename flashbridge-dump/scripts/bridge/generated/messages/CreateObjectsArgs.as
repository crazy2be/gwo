package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class CreateObjectsArgs extends Message
   {
      
      public function CreateObjectsArgs(param1:Array, param2:Boolean)
      {
         objects = [];
         super();
         registerField("objects","bridge.generated.messages.NewBigDBObject",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,1);
         registerField("loadExisting","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,2);
         this.objects = param1;
         this.loadExisting = param2;
      }
      
      public var objects:Array;
      
      public var objectsDummy:NewBigDBObject = null;
      
      public var loadExisting:Boolean;
   }
}
