package bridge
{
   import bridge.generated.QuickConnect;
   import flash.display.Stage;
   import bridge.generated.messages.PlayerInsightState;
   import bridge.utils.*;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.net.LocalConnection;
   import bridge.generated.PlayerIOError;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import bridge.generated.messages.KeyValuePair;
   
   public class QuickConnect extends bridge.generated.QuickConnect
   {
      
      public function QuickConnect(param1:HTTPChannel)
      {
         connections = [];
         super(param1);
      }
      
      private var connections:Array;
      
      public function simpleConnect(param1:Stage, param2:String, param3:String, param4:String, param5:* = null, param6:* = null, param7:* = null) : void
      {
         var stage:Stage = param1;
         var gameId:String = param2;
         var usernameOrEmail:String = param3;
         var password:String = param4;
         var playerInsightSegments:* = param5;
         var callback:* = param6;
         var errorHandler:* = param7;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(playerInsightSegments is Function)
            {
               simpleConnect(stage,gameId,usernameOrEmail,password,null,playerInsightSegments,callback);
               return;
            }
            _simpleConnect(gameId,usernameOrEmail,password,playerInsightSegments,Utilities.clientAPI,Utilities.getSystemInfo(),function(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:PlayerInsightState):*
            {
               if((param3) && (Minilogo.showLogo))
               {
                  stage.addChild(new Minilogo());
               }
               var _loc7_:HTTPChannel = new HTTPChannel();
               _loc7_.token = param1;
               callback(PlayerIO.clients[gameId] = new Client(_loc7_,param2,stage,param4,param5,param6));
            },errorHandler);
            return;
         }
      }
      
      public function simpleRegister(param1:Stage, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:Object, param9:* = null, param10:* = null, param11:* = null, param12:* = null) : void
      {
         var stage:Stage = param1;
         var gameId:String = param2;
         var usernameOrEmail:String = param3;
         var password:String = param4;
         var email:String = param5;
         var captchaKey:String = param6;
         var captchaValue:String = param7;
         var extraData:Object = param8;
         var partnerId:* = param9;
         var playerInsightSegments:* = param10;
         var callback:* = param11;
         var errorHandler:* = param12;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(partnerId is Function)
            {
               simpleRegister(stage,gameId,usernameOrEmail,password,email,captchaKey,captchaValue,extraData,null,null,partnerId,playerInsightSegments);
               return;
            }
            if(playerInsightSegments is Function)
            {
               simpleRegister(stage,gameId,usernameOrEmail,password,email,captchaKey,captchaValue,extraData,partnerId,null,playerInsightSegments,callback);
               return;
            }
            _simpleRegister(gameId,usernameOrEmail,password,email,captchaKey,captchaValue,extraData,partnerId,playerInsightSegments,Utilities.clientAPI,Utilities.getSystemInfo(),function(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:PlayerInsightState):*
            {
               if((param3) && (Minilogo.showLogo))
               {
                  stage.addChild(new Minilogo());
               }
               var _loc7_:HTTPChannel = new HTTPChannel();
               _loc7_.token = param1;
               callback(PlayerIO.clients[gameId] = new Client(_loc7_,param2,stage,param4,param5,param6));
            },errorHandler);
            return;
         }
      }
      
      public function facebookConnect(param1:Stage, param2:String, param3:String, param4:String, param5:* = null, param6:* = null, param7:* = null, param8:* = null) : void
      {
         throw new Error("ERROR: facebookConnect is deprecated as Facebook is switching to OAuth. Please use facebookOAuthConnect instead.");
      }
      
      public function facebookOAuthConnect(param1:Stage, param2:String, param3:String, param4:* = null, param5:* = null, param6:* = null, param7:* = null) : void
      {
         var stage:Stage = param1;
         var gameId:String = param2;
         var accessToken:String = param3;
         var partnerId:* = param4;
         var playerInsightSegments:* = param5;
         var callback:* = param6;
         var errorHandler:* = param7;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(partnerId is Function)
            {
               facebookOAuthConnect(stage,gameId,accessToken,null,null,partnerId,playerInsightSegments);
               return;
            }
            if(playerInsightSegments is Function)
            {
               facebookOAuthConnect(stage,gameId,accessToken,partnerId,null,playerInsightSegments,callback);
               return;
            }
            _facebookOAuthConnect(gameId,accessToken,partnerId,playerInsightSegments,Utilities.clientAPI,Utilities.getSystemInfo(),function(param1:String, param2:String, param3:Boolean, param4:String, param5:String, param6:String, param7:PlayerInsightState):*
            {
               if((param3) && (Minilogo.showLogo))
               {
                  stage.addChild(new Minilogo());
               }
               var _loc8_:HTTPChannel = new HTTPChannel();
               _loc8_.token = param1;
               callback(PlayerIO.clients[gameId] = new Client(_loc8_,param2,stage,param4,param6,param7),param5);
            },errorHandler);
            return;
         }
      }
      
      public function kongregateConnect(param1:Stage, param2:String, param3:String, param4:String, param5:* = null, param6:* = null, param7:* = null) : void
      {
         var stage:Stage = param1;
         var gameId:String = param2;
         var userId:String = param3;
         var gameAuthToken:String = param4;
         var playerInsightSegments:* = param5;
         var callback:* = param6;
         var errorHandler:* = param7;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(playerInsightSegments is Function)
            {
               kongregateConnect(stage,gameId,userId,gameAuthToken,null,playerInsightSegments,callback);
               return;
            }
            _kongregateConnect(gameId,userId,gameAuthToken,playerInsightSegments,Utilities.clientAPI,Utilities.getSystemInfo(),function(param1:String, param2:String, param3:Boolean, param4:String, param5:PlayerInsightState):*
            {
               if((param3) && (Minilogo.showLogo))
               {
                  stage.addChild(new Minilogo());
               }
               var _loc6_:HTTPChannel = new HTTPChannel();
               _loc6_.token = param1;
               callback(PlayerIO.clients[gameId] = new Client(_loc6_,param2,stage,param4,"",param5));
            },errorHandler);
            return;
         }
      }
      
      public function facebookOAuthConnectPopup(param1:Stage, param2:String, param3:String, param4:Array = null, param5:* = null, param6:* = null, param7:* = null, param8:* = null) : void
      {
         var url:String = null;
         var e:PlayerIOError = null;
         var stage:Stage = param1;
         var gameId:String = param2;
         var window:String = param3;
         var permissions:Array = param4;
         var partnerId:* = param5;
         var playerInsightSegments:* = param6;
         var callback:* = param7;
         var errorHandler:* = param8;
         if((stage == null) || (stage.stage == null))
         {
            throw new Error("Parsed stage is not attached to document stage",2);
         }
         else
         {
            if(partnerId is Function)
            {
               facebookOAuthConnectPopup(stage,gameId,window,permissions,null,partnerId,playerInsightSegments);
               return;
            }
            if(playerInsightSegments is Function)
            {
               facebookOAuthConnectPopup(stage,gameId,window,permissions,partnerId,null,playerInsightSegments,callback);
               return;
            }
            var legacy:Boolean = false;
            if(gameId.substring(0,1) == "@")
            {
               legacy = true;
               gameId = gameId.substring(1);
            }
            if(new RegExp("\\[|\\]","gi").test(gameId))
            {
               e = new PlayerIOError("The Player.IO Game id \"" + gameId + "\" contains invalid characters, did you insert your game id?",1);
               if(errorHandler != null)
               {
                  errorHandler(e);
                  return;
               }
               throw e;
            }
            else
            {
               if(legacy)
               {
                  url = "http://fb.playerio.com/fb/" + gameId + "/_fb_quickconnect_oauth";
               }
               else
               {
                  url = "http://" + gameId + ".fb.playerio.com/fb/_fb_quickconnect_oauth";
               }
               var variables:URLVariables = new URLVariables();
               var commid:String = Math.floor(new Date().getTime()).toString() + (Math.random() * 999999 >> 0).toString();
               variables.req_perms = permissions?permissions.join(","):"";
               variables.communicationId = commid;
               variables.partnerId = partnerId;
               variables.clientapi = Utilities.clientAPI;
               variables.clientinfo = Utilities.getSystemInfoString();
               variables.playerinsightsegments = (playerInsightSegments || []).join(",");
               var request:URLRequest = new URLRequest(url);
               request.data = variables;
               request.method = URLRequestMethod.POST;
               try
               {
                  navigateToURL(request,window);
               }
               catch(e:Error)
               {
                  trace("Error occurred!");
               }
               var receivingLC:LocalConnection = new LocalConnection();
               connections.push(receivingLC);
               receivingLC.client = {"oauth2":function(param1:String, param2:String, param3:String, param4:String = "", param5:Boolean = true, param6:String = "", param7:String = null, param8:String = "-1", param9:String = ""):*
               {
                  var _loc14_:* = undefined;
                  var _loc15_:* = undefined;
                  if((param5) && (Minilogo.showLogo))
                  {
                     stage.addChild(new Minilogo());
                  }
                  var _loc10_:* = new HTTPChannel();
                  _loc10_.token = param1;
                  var _loc11_:* = new PlayerInsightState();
                  _loc11_.playersOnline = parseInt(param8 || "-1");
                  var _loc12_:* = (param9 || "").split(",");
                  var _loc13_:* = 0;
                  while(_loc13_ < _loc12_.length)
                  {
                     _loc14_ = _loc12_[_loc13_].split(":");
                     _loc15_ = new KeyValuePair();
                     _loc15_.key = _loc14_[0];
                     _loc15_.value = _loc14_[1];
                     _loc11_.segments.push(_loc15_);
                     _loc13_++;
                  }
                  callback(PlayerIO.clients[gameId] = new Client(_loc10_,param4,stage,param6,param7,_loc11_),param2,param3);
               }};
               receivingLC.allowDomain("*");
               receivingLC.connect("_facebook_" + commid);
               return;
            }
         }
      }
      
      public function facebookConnectPopup(param1:Stage, param2:String, param3:String, param4:Array = null, param5:* = null, param6:* = null, param7:* = null) : void
      {
         throw new Error("FacebookConnectPopup is no longer supported by Facebook. Please use FacebookConnectOAuthPopup");
      }
   }
}
