package bridge.generated.messages
{
   import com.protobuf.Message;
   import com.protobuf.Descriptor;
   
   public final class BigDBChangeset extends Message
   {
      
      public function BigDBChangeset()
      {
         changes = [];
         super();
         registerField("table","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,1);
         registerField("key","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,2);
         registerField("onlyIfVersion","",Descriptor.STRING,Descriptor.LABEL_OPTIONAL,3);
         registerField("changes","bridge.generated.messages.ObjectProperty",Descriptor.MESSAGE,Descriptor.LABEL_REPEATED,4);
         registerField("fullOverwrite","",Descriptor.BOOL,Descriptor.LABEL_OPTIONAL,5);
      }
      
      public var table:String;
      
      public var key:String;
      
      public var onlyIfVersion:String;
      
      public var changes:Array;
      
      public var changesDummy:ObjectProperty = null;
      
      public var fullOverwrite:Boolean;
   }
}
