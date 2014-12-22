package bridge
{
   import playerio.Client;
   import flash.display.Stage;
   import playerio.Multiplayer;
   import playerio.ErrorLog;
   import playerio.BigDB;
   import playerio.GameFS;
   import playerio.PayVault;
   import playerio.PartnerPay;
   import playerio.PlayerInsight;
   import bridge.utils.HTTPChannel;
   import bridge.generated.messages.PlayerInsightState;
   
   public class Client extends Object implements Client
   {
      
      public function Client(param1:HTTPChannel, param2:String, param3:Stage, param4:String, param5:String, param6:PlayerInsightState)
      {
         super();
         clients.push(this);
         _multiplayer = new bridge.Multiplayer(param1,this);
         _errorLog = new bridge.ErrorLog(param1,this);
         _bigDB = new bridge.BigDB(param1,this);
         _payVault = new bridge.PayVault(param1,this);
         _gameFS = new bridge.GameFS(param4);
         _partnerPay = new bridge.PartnerPay(param1,this,param5);
         _playerInsight = new bridge.PlayerInsight(param1,this,param6);
         _connectUserId = param2;
         _partnerId = param5;
         _stage = param3;
      }
      
      private static var clients:Array = [];
      
      private var _multiplayer:bridge.Multiplayer;
      
      private var _errorLog:bridge.ErrorLog;
      
      private var _bigDB:bridge.BigDB;
      
      private var _gameFS:bridge.GameFS;
      
      private var _stage:Stage;
      
      private var _payVault:bridge.PayVault;
      
      private var _partnerPay:bridge.PartnerPay;
      
      private var _playerInsight:bridge.PlayerInsight;
      
      private var _connectUserId:String;
      
      private var _partnerId:String;
      
      public function get multiplayer() : §playerio.Multiplayer§
      {
         return _multiplayer;
      }
      
      public function get errorLog() : §playerio.ErrorLog§
      {
         return _errorLog;
      }
      
      public function get bigDB() : §playerio.BigDB§
      {
         return _bigDB;
      }
      
      public function get gameFS() : §playerio.GameFS§
      {
         return _gameFS;
      }
      
      public function get payVault() : §playerio.PayVault§
      {
         return _payVault;
      }
      
      public function get connectUserId() : String
      {
         return _connectUserId;
      }
      
      public function get partnerPay() : §playerio.PartnerPay§
      {
         return _partnerPay;
      }
      
      public function get playerInsight() : §playerio.PlayerInsight§
      {
         return _playerInsight;
      }
      
      public function handleCallbackError(param1:String, param2:Error) : *
      {
         if(multiplayer.developmentServer == null)
         {
            errorLog.writeError(param2.name,param2.message,(param2.getStackTrace() == null?"I":param2.getStackTrace() + "\n i") + "n callback handler for " + param1,{});
         }
      }
      
      public function handleCallbackErrorVerbose(param1:String, param2:Error) : *
      {
         if(multiplayer.developmentServer == null)
         {
            errorLog.writeError(param2.message,param1,param2.getStackTrace() == null?"":param2.getStackTrace(),{});
         }
      }
      
      public function handleSystemError(param1:String, param2:Error, param3:Object) : *
      {
         errorLog.writeError(param2.message,param1,param2.getStackTrace() == null?"":param2.getStackTrace(),param3);
      }
      
      public function get stage() : Stage
      {
         return _stage;
      }
      
      public function toString() : String
      {
         return "[Player.IO Client]";
      }
   }
}
