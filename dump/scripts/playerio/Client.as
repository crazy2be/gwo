package playerio
{
   import _-PW.connectUserId;
   import _-PW.partnerPay;
   import _-PW.payVault;
   import _-PW.gameFS;
   import _-PW.bigDB;
   import _-PW.errorLog;
   import _-PW.multiplayer;
   import _-PW.stage;
   import flash.display.Stage;
   
   public interface Client
   {
      
      _-PW function get connectUserId() : String;
      
      _-PW function get partnerPay() : PartnerPay;
      
      _-PW function get payVault() : PayVault;
      
      _-PW function get gameFS() : GameFS;
      
      _-PW function get bigDB() : BigDB;
      
      _-PW function get errorLog() : ErrorLog;
      
      _-PW function get multiplayer() : Multiplayer;
      
      _-PW function get stage() : Stage;
   }
}
