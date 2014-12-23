package bridge
{
   import bridge.generated.ErrorLog;
   import playerio.ErrorLog;
   import bridge.utils.HTTPChannel;
   
   public class ErrorLog extends bridge.generated.ErrorLog implements ErrorLog
   {
      
      public function ErrorLog(param1:HTTPChannel, param2:Client)
      {
         super(param1,param2);
      }
      
      public function writeError(param1:String, param2:String, param3:String, param4:Object, param5:Function = null, param6:Function = null) : void
      {
         _writeError("AS3",param1,param2,param3,param4,param5,param6);
      }
      
      public function writeSystemError(param1:String, param2:String, param3:String, param4:Object, param5:Function = null, param6:Function = null) : void
      {
         _writeError("[@SYSTEMERRORLOG@]AS3 Library",param1,param2,param3,param4,param5,param6);
      }
   }
}
