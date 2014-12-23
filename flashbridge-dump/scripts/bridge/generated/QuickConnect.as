package bridge.generated
{
   import bridge.utils.HTTPChannel;
   import bridge.generated.messages.SimpleConnectArgs;
   import bridge.generated.messages.SimpleConnectOutput;
   import bridge.utils.Converter;
   import bridge.generated.messages.SimpleConnectError;
   import bridge.generated.messages.SimpleGetCaptchaArgs;
   import bridge.generated.messages.SimpleGetCaptchaOutput;
   import bridge.generated.messages.SimpleGetCaptchaError;
   import bridge.generated.messages.SimpleRegisterArgs;
   import bridge.generated.messages.SimpleRegisterOutput;
   import bridge.generated.messages.SimpleRegisterError;
   import bridge.generated.messages.SimpleRecoverPasswordArgs;
   import bridge.generated.messages.SimpleRecoverPasswordOutput;
   import bridge.generated.messages.SimpleRecoverPasswordError;
   import bridge.generated.messages.KongregateConnectArgs;
   import bridge.generated.messages.KongregateConnectOutput;
   import bridge.generated.messages.KongregateConnectError;
   import bridge.generated.messages.FacebookOAuthConnectArgs;
   import bridge.generated.messages.FacebookOAuthConnectOutput;
   import bridge.generated.messages.FacebookOAuthConnectError;
   import bridge.generated.messages.SteamConnectArgs;
   import bridge.generated.messages.SteamConnectOutput;
   import bridge.generated.messages.SteamConnectError;
   
   public class QuickConnect extends Object
   {
      
      public function QuickConnect(param1:HTTPChannel)
      {
         super();
         this.channel = param1;
      }
      
      protected var channel:HTTPChannel;
      
      protected function _simpleConnect(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Object, param7:Function = null, param8:Function = null) : void
      {
         var gameId:String = param1;
         var usernameOrEmail:String = param2;
         var password:String = param3;
         var playerInsightSegments:Array = param4;
         var clientAPI:String = param5;
         var clientInfo:Object = param6;
         var callback:Function = param7;
         var errorHandler:Function = param8;
         var input:SimpleConnectArgs = new SimpleConnectArgs(gameId,usernameOrEmail,password,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:SimpleConnectOutput = new SimpleConnectOutput();
         channel.Request(400,input,output,new SimpleConnectError(),function(param1:SimpleConnectOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.partnerId,param1.playerInsightState);
            }
         },function(param1:SimpleConnectError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      public function simpleGetCaptcha(param1:String, param2:int, param3:int, param4:Function = null, param5:Function = null) : void
      {
         var gameId:String = param1;
         var width:int = param2;
         var height:int = param3;
         var callback:Function = param4;
         var errorHandler:Function = param5;
         var input:SimpleGetCaptchaArgs = new SimpleGetCaptchaArgs(gameId,width,height);
         var output:SimpleGetCaptchaOutput = new SimpleGetCaptchaOutput();
         channel.Request(415,input,output,new SimpleGetCaptchaError(),function(param1:SimpleGetCaptchaOutput):*
         {
            if(callback != null)
            {
               callback(param1.captchaKey,param1.captchaImageUrl);
            }
         },function(param1:SimpleGetCaptchaError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _simpleRegister(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Object, param8:String, param9:Array, param10:String, param11:Object, param12:Function = null, param13:Function = null) : void
      {
         var gameId:String = param1;
         var username:String = param2;
         var password:String = param3;
         var email:String = param4;
         var captchaKey:String = param5;
         var captchaValue:String = param6;
         var extraData:Object = param7;
         var partnerId:String = param8;
         var playerInsightSegments:Array = param9;
         var clientAPI:String = param10;
         var clientInfo:Object = param11;
         var callback:Function = param12;
         var errorHandler:Function = param13;
         var input:SimpleRegisterArgs = new SimpleRegisterArgs(gameId,username,password,email,captchaKey,captchaValue,Converter.toKeyValueArray(extraData),partnerId,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:SimpleRegisterOutput = new SimpleRegisterOutput();
         channel.Request(403,input,output,new SimpleRegisterError(),function(param1:SimpleRegisterOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.partnerId,param1.playerInsightState);
            }
         },function(param1:SimpleRegisterError):*
         {
            var _loc2_:PlayerIORegistrationError = new PlayerIORegistrationError(param1.message,param1.errorCode,param1.usernameError,param1.passwordError,param1.emailError,param1.captchaError);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      public function simpleRecoverPassword(param1:String, param2:String, param3:Function = null, param4:Function = null) : void
      {
         var gameId:String = param1;
         var usernameOrEmail:String = param2;
         var callback:Function = param3;
         var errorHandler:Function = param4;
         var input:SimpleRecoverPasswordArgs = new SimpleRecoverPasswordArgs(gameId,usernameOrEmail);
         var output:SimpleRecoverPasswordOutput = new SimpleRecoverPasswordOutput();
         channel.Request(406,input,output,new SimpleRecoverPasswordError(),function(param1:SimpleRecoverPasswordOutput):*
         {
            if(callback != null)
            {
               callback();
            }
         },function(param1:SimpleRecoverPasswordError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _kongregateConnect(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Object, param7:Function = null, param8:Function = null) : void
      {
         var gameId:String = param1;
         var userId:String = param2;
         var gameAuthToken:String = param3;
         var playerInsightSegments:Array = param4;
         var clientAPI:String = param5;
         var clientInfo:Object = param6;
         var callback:Function = param7;
         var errorHandler:Function = param8;
         var input:KongregateConnectArgs = new KongregateConnectArgs(gameId,userId,gameAuthToken,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:KongregateConnectOutput = new KongregateConnectOutput();
         channel.Request(412,input,output,new KongregateConnectError(),function(param1:KongregateConnectOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.playerInsightState);
            }
         },function(param1:KongregateConnectError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      protected function _facebookOAuthConnect(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Object, param7:Function = null, param8:Function = null) : void
      {
         var gameId:String = param1;
         var accessToken:String = param2;
         var partnerId:String = param3;
         var playerInsightSegments:Array = param4;
         var clientAPI:String = param5;
         var clientInfo:Object = param6;
         var callback:Function = param7;
         var errorHandler:Function = param8;
         var input:FacebookOAuthConnectArgs = new FacebookOAuthConnectArgs(gameId,accessToken,partnerId,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:FacebookOAuthConnectOutput = new FacebookOAuthConnectOutput();
         channel.Request(418,input,output,new FacebookOAuthConnectError(),function(param1:FacebookOAuthConnectOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.facebookUserId,param1.partnerId,param1.playerInsightState);
            }
         },function(param1:FacebookOAuthConnectError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
      
      public function steamConnect(param1:String, param2:String, param3:String, param4:Array, param5:String, param6:Object, param7:Function = null, param8:Function = null) : void
      {
         var gameId:String = param1;
         var steamAppId:String = param2;
         var steamSessionTicket:String = param3;
         var playerInsightSegments:Array = param4;
         var clientAPI:String = param5;
         var clientInfo:Object = param6;
         var callback:Function = param7;
         var errorHandler:Function = param8;
         var input:SteamConnectArgs = new SteamConnectArgs(gameId,steamAppId,steamSessionTicket,playerInsightSegments,clientAPI,Converter.toKeyValueArray(clientInfo));
         var output:SteamConnectOutput = new SteamConnectOutput();
         channel.Request(421,input,output,new SteamConnectError(),function(param1:SteamConnectOutput):*
         {
            if(callback != null)
            {
               callback(param1.token,param1.userId,param1.showBranding,param1.gameFSRedirectMap,param1.partnerId,param1.playerInsightState);
            }
         },function(param1:SteamConnectError):*
         {
            var _loc2_:PlayerIOError = new PlayerIOError(param1.message,param1.errorCode);
            if(errorHandler != null)
            {
               errorHandler(_loc2_);
               return;
            }
            throw _loc2_;
         });
      }
   }
}
