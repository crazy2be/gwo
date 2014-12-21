package playerio
{
   import flash.display.Stage;
   
   public class QuickConnect extends Object
   {
      
      public function QuickConnect(param1:Function)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         super();
         _loc3_;
         _loc3_;
         this._proxy = param1;
      }
      
      private var _proxy:Function;
      
      public function simpleConnect(param1:Stage, param2:String, param3:String, param4:String, param5:Function = null, param6:Function = null) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         this._proxy("quickConnect.simpleConnect",arguments);
      }
      
      public function simpleRegister(param1:Stage, param2:String, param3:String, param4:String, param5:String, param6:String = "", param7:String = "", param8:Object = null, param9:String = "", param10:Function = null, param11:Function = null) : void
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         _loc13_;
         _loc13_;
         this._proxy("quickConnect.simpleRegister",arguments);
      }
      
      public function simpleGetCaptcha(param1:String, param2:int, param3:int, param4:Function = null, param5:Function = null) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         this._proxy("quickConnect.simpleGetCaptcha",arguments);
      }
      
      public function simpleRecoverPassword(param1:String, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc6_;
         _loc6_;
         this._proxy("quickConnect.simpleRecoverPassword",arguments);
      }
      
      public function kongregateConnect(param1:Stage, param2:String, param3:String, param4:String, param5:Function = null, param6:Function = null) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         this._proxy("quickConnect.kongregateConnect",arguments);
      }
      
      public function facebookConnect(param1:Stage, param2:String, param3:String, param4:String, param5:String = "", param6:Function = null, param7:Function = null) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc9_;
         this._proxy("quickConnect.facebookConnect",arguments);
      }
      
      public function facebookConnectPopup(param1:Stage, param2:String, param3:String, param4:Array, param5:String = "", param6:Function = null, param7:Function = null) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         this._proxy("quickConnect.facebookConnectPopup",arguments);
      }
      
      public function facebookOAuthConnect(param1:Stage, param2:String, param3:String, param4:String = "", param5:Function = null, param6:Function = null) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         _loc8_;
         this._proxy("quickConnect.facebookOAuthConnect",arguments);
      }
      
      public function facebookOAuthConnectPopup(param1:Stage, param2:String, param3:String, param4:Array, param5:String = "", param6:Function = null, param7:Function = null) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc10_;
         this._proxy("quickConnect.facebookOAuthConnectPopup",arguments);
      }
   }
}
