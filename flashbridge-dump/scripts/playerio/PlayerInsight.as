package playerio
{
   public interface PlayerInsight
   {
      
      function get playersOnline() : int;
      
      function getSegment(param1:String) : String;
      
      function refresh(param1:Function = null, param2:Function = null) : void;
      
      function setSegments(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      function trackInvitedBy(param1:String, param2:String, param3:Function = null, param4:Function = null) : void;
      
      function trackEvents(param1:Array, param2:Function = null, param3:Function = null) : void;
      
      function trackExternalPayment(param1:String, param2:int, param3:Function = null, param4:Function = null) : void;
   }
}
