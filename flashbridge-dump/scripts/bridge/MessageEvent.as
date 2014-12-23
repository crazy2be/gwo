package bridge
{
   import flash.events.Event;
   
   public class MessageEvent extends Event
   {
      
      public function MessageEvent(param1:String, param2:Message)
      {
         this.message = param2;
         super(param1);
      }
      
      public static const ON_MESSAGE:String = "onMessage";
      
      public var message:Message;
      
      override public function clone() : Event
      {
         return new MessageEvent(type,message);
      }
   }
}
