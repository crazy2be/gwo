package playerio
{
   import _-5F.connectUserId;
   import _-5F.partnerPay;
   import _-5F.payVault;
   import _-5F.gameFS;
   import _-5F.bigDB;
   import _-5F.errorLog;
   import _-5F.multiplayer;
   import _-5F.stage;
   import flash.display.Stage;
   
   public interface Client
   {
      
      _-5F function get connectUserId() : String;
      
      _-5F function get partnerPay() : PartnerPay;
      
      _-5F function get payVault() : PayVault;
      
      _-5F function get gameFS() : GameFS;
      
      _-5F function get bigDB() : BigDB;
      
      _-5F function get errorLog() : ErrorLog;
      
      _-5F function get multiplayer() : Multiplayer;
      
      _-5F function get stage() : Stage;
   }
}
