package §_-Uq§
{
   import flash.display.Stage;
   import flash.utils.Timer;
   import _-PW.multiplayer;
   import _-2t.createJoinRoom;
   import _-Rg.addDisconnectHandler;
   import _-Rg.addMessageHandler;
   import flash.events.TimerEvent;
   import _-Rg.send;
   import playerio.*;
   import §_-nI§.*;
   import flash.geom.Point;
   import §_-JH§.Unit;
   import §_-Ff§.GameOverData;
   import _-Rg.connected;
   import flash.system.Capabilities;
   import §_-Ff§.§_-dS§;
   
   public class GameClient extends §_-z0§
   {
      
      public function GameClient()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         SafeGlobal.game_client = this;
         this.§do§ = new MessageToServer();
         this.§_-D9§ = new MessageFromServer();
         this.§_-sM§ = new Array();
         this.player_count = 0;
      }
      
      protected var §_-HR§:int = 2;
      
      protected var §_-fW§:String = "";
      
      protected var MODS:String = "";
      
      protected var §_-rj§:String = "0";
      
      protected var §_-F9§:String = "";
      
      protected var §_-7m§:int = 0;
      
      protected var §_-Up§:String = "0";
      
      protected var §_-rG§:String = "0";
      
      protected var §_-SK§:Boolean = false;
      
      protected var connection:Connection;
      
      protected var §do§:MessageToServer;
      
      protected var §_-D9§:MessageFromServer;
      
      protected var stage:Stage;
      
      protected var §_-sM§:Array;
      
      protected var player_count:int = 0;
      
      protected var §_-4T§:int;
      
      protected var §_-2S§:int;
      
      protected var §_-Tc§:int;
      
      protected var §_-H3§:String;
      
      protected var §_-7Q§:String;
      
      public var §_-sP§:Boolean = false;
      
      protected var §_-In§:Timer;
      
      override public function init(param1:*, param2:Stage, param3:String, param4:String, param5:int, param6:int, param7:String, param8:String, param9:String, param10:String) : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         SafeGlobal.§_-8m§.§_-3r§(int(param5) - int(param10),int(param10));
         this.stage = param2;
         this.connection = param1;
         this.§_-F9§ = param3;
         _loc11_;
         this.§_-HR§ = param5;
         _loc11_;
         _loc11_;
         this.§_-fW§ = param4;
         this.§_-7m§ = param6;
         this.MODS = param7;
         this.§_-rj§ = param8;
         _loc11_;
         _loc11_;
         this.§_-Up§ = param9;
         this.§_-rG§ = param10;
         _loc11_;
         _loc11_;
         Global.CLIENT.multiplayer.createJoinRoom(param3,"Game",true,{
            "MapId":param4,
            "MaxPlayers":param5,
            "CampaignKey":param6,
            "Mods":param7,
            "Private":param8,
            "TeamBattle":param9,
            "BotPlayers":param10
         },null,this.§_-al§,this.§_-PY§);
      }
      
      private function §_-al§(param1:Connection) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.connection = param1;
         SafeGlobal.connected_to_game = true;
         this.connection.addDisconnectHandler(this.§_-mV§);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("InitPlayer"),this.§_-oZ§);
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("ReceiveLevelData"),this.§_-7g§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("StartTurn"),this.§_-Gf§);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("UseWeapon"),this.§_-i2§);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("CleanUp"),this.§_-qu§);
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("DisconnectAFK"),this.§_-iW§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("Taunt"),this.§_-Ra§);
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("ErrorMD5Request"),this.§_-bQ§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("RebuildGame"),this.rebuildGame);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("EndOfTurn"),this.§_-wh§);
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("StartWalk"),this.§_-Ub§);
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("StopWalk"),this.§_-7B§);
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("ReceiveChat"),this.§_-cm§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("GameOver"),this.gameOver);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("TeamIsDead"),this.§_-x6§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("GameOverDead"),this.§_-jP§);
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("UpdatePositions"),this.§_-Rb§);
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("GameNotification"),this.§_-OH§);
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("GameStartError"),this.§_-l4§);
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("PlayingAgain"),this.displayPlayingAgain);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("LeftRoomAtEnd"),this.displayLeftRoom);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("UpdatePlayerCache"),this.updatePlayerCache);
         this.connection.addMessageHandler(this.§_-D9§.§_-0-k§("LatestPlayerCache"),this.latestPlayerCache);
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler("*",this.handleMessages);
         _loc3_;
         this.§_-In§ = new Timer(60000,1);
         _loc2_;
         _loc2_;
         this.§_-In§.addEventListener(TimerEvent.TIMER,this.§_-FP§,false,0,true);
         _loc3_;
         this.§_-In§.start();
      }
      
      private function §_-FP§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.connection.send(this.§do§.§_-0-k§("Validate"));
      }
      
      private function §_-c5§(param1:Number = -1) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-In§ != null)
         {
            this.§_-In§.reset();
            if(param1 != -1)
            {
               _loc2_;
               this.§_-In§.delay = param1;
            }
            else
            {
               this.§_-In§.delay = 60000;
               _loc3_;
               _loc3_;
            }
            this.§_-In§.start();
         }
      }
      
      private function §_-0w§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-In§ != null)
         {
            _loc2_;
            this.§_-In§.stop();
            _loc1_;
            _loc1_;
            this.§_-In§.removeEventListener(TimerEvent.TIMER,this.§_-FP§);
            _loc1_;
            _loc1_;
            this.§_-In§ = null;
         }
      }
      
      private function §_-im§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         Global.lobby_display.displayGameStartError();
      }
      
      private function §_-Pc§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.displayGameStartError();
      }
      
      public function displayPlayingAgain(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         Global.lobby_display.displayPlayingAgain(param2);
      }
      
      public function displayLeftRoom(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         Global.lobby_display.displayLeftRoom(param2);
      }
      
      public function §_-l4§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.displayGameStartError();
      }
      
      public function §_-Ra§(param1:Message, param2:int, param3:int) : *
      {
      }
      
      public function §_-i2§(param1:Message, param2:int, param3:int, param4:int = -1, param5:int = -1, param6:int = -1, param7:int = -1, param8:int = -1, param9:int = -1) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc10_:Array = null;
         _loc12_;
         if(param3 == -1)
         {
            _loc11_;
            _loc11_;
            this.§_-XD§(param1,param2,-1,-1,-1,-1,"");
         }
         else
         {
            _loc10_ = SafeGlobal.§_-AT§(param3);
            if(_loc10_[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
            {
               _loc11_;
               _loc11_;
               this.§_-XD§(param1,param2,_loc10_[2],param4,param5,param3,_loc10_[4]);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_MINE)
            {
               _loc12_;
               _loc12_;
               this.§_-hJ§(param1,param2,_loc10_[2]);
               _loc12_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_MELEE)
            {
               this.§_-Dl§(param1,param2,_loc10_[0]);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_INCOMING)
            {
               _loc11_;
               this.§_-Qn§(param1,param2,_loc10_[0],param4);
               _loc11_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_GATE)
            {
               _loc12_;
               _loc12_;
               this.§_-Fj§(param1,param2,_loc10_[2],param4,param5,param6,param7,param8,param9);
               _loc12_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
            {
               this.§_-FV§(param1,param2,_loc10_[0],param4,param5,param6,param7);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
            {
               this.§_-fk§(param1,param2,param3);
            }
            
            
            
            
            
            
         }
      }
      
      private function §_-iW§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.GAME.AFKKick();
      }
      
      override public function sendAFKKicked() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.§do§.§_-0-k§("AFKKicked"));
      }
      
      override public function sendAFKBack() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.§do§.§_-0-k§("AFKBack"));
      }
      
      private function §_-qu§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SafeGlobal.GAME.cheatCleanUp();
      }
      
      private function §_-XD§(param1:Message, param2:int, param3:int, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc15_:Array = null;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc8_:Point = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit].startPoint();
         var _loc9_:Number = _loc8_.x;
         var _loc10_:Number = _loc8_.y;
         var _loc11_:* = 500;
         var _loc12_:Array = param7.split("/");
         var _loc13_:Array = _loc12_[0].split(";");
         var _loc14_:* = 0;
         while(_loc14_ < _loc13_.length)
         {
            _loc15_ = _loc13_[_loc14_].split(",");
            if(_loc15_[0] == "r")
            {
               _loc19_;
               _loc18_;
               _loc16_ = int(_loc15_[1]);
               _loc18_;
               _loc18_;
               _loc19_;
               _loc17_ = int(_loc15_[2]);
               _loc19_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc19_;
               _loc18_;
               _loc11_ = (_loc16_ - 1) * _loc17_ * 100 + 500;
               _loc18_;
            }
            _loc14_++;
         }
         _loc19_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_PROJECTILE,param2,{
            "wepType":param6,
            "pX":_loc9_,
            "pY":_loc10_,
            "mX":param4,
            "mY":param5,
            "pID":param3,
            "extraAim":_loc11_
         });
      }
      
      private function §_-hJ§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc6_;
         _loc6_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_MINE,param2,{
            "posX":_loc4_.iX,
            "posY":_loc4_.iY,
            "posR":_loc4_.iR,
            "mineType":param3,
            "lPlanet":_loc4_.locationPlanet,
            "lShape":_loc4_.locationShape,
            "lCurve":_loc4_.locationCurve,
            "lCurveX":_loc4_.locationCurveX,
            "lCurveY":_loc4_.locationCurveY,
            "lCurveRadius":_loc4_.locationCurveRadius,
            "lAngle":_loc4_.locationAngle
         });
      }
      
      private function §_-Dl§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc6_;
         _loc6_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_MELEE,param2,{"wepType":param3});
      }
      
      private function §_-FV§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:*) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc9_;
         _loc9_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_POINTSELECT,param2,{
            "wepType":param3,
            "planetID":param4,
            "shapeID":param5,
            "curveID":param6,
            "angle":param7
         });
      }
      
      private function §_-fk§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc6_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_PLANETSELECT,param2,{"wepType":param3});
      }
      
      private function §_-Qn§(param1:Message, param2:int, param3:int, param4:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc7_;
         _loc7_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_INCOMING,param2,{
            "wepType":param3,
            "inAngle":param4
         });
      }
      
      private function §_-Fj§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1, param8:int = -1, param9:int = -1) : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc10_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc11_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_GATE,param2,{
            "wepType":param3,
            "pX1":param4,
            "pY1":param5,
            "pR1":param6,
            "pX2":param7,
            "pY2":param8,
            "pR2":param9
         });
      }
      
      private function handleMessages(param1:Message) : void
      {
      }
      
      private function §_-PY§(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1.errorID == 2)
         {
            _loc3_;
            _loc3_;
            this.§_-Pc§();
         }
      }
      
      private function §_-mV§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         SafeGlobal.connected_to_game = false;
      }
      
      private function §_-7g§(param1:Message, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc7_;
         SafeGlobal.game_over_data = new GameOverData();
         _loc7_;
         _loc7_;
         SafeGlobal.game_over_data.§_-sJ§(param3);
         _loc7_;
         SafeGlobal.TIMELINE.startGame(param2,param3,param4,param5);
      }
      
      override public function sendGameChat(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc6_;
         this.§_-c5§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(param1.slice(0,5) == "/mute" && !(param1.indexOf(" ") == -1))
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc2_ = param1.split(" ");
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(_loc2_[0] == "/mute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
            {
               _loc5_;
               _loc5_;
               if(_loc2_[1] == TimelineGlobal.player_name)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  if(Global.lobby_display.getGameEnd())
                  {
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
                     _loc6_;
                  }
                  else
                  {
                     SafeGlobal.GAME.chat.showMessage("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8,true);
                  }
               }
               else
               {
                  _loc6_;
                  if(this.§_-5M§(_loc2_[1]))
                  {
                     _loc6_;
                     _loc6_;
                     SafeGlobal.§_-If§.push(_loc2_[1]);
                     _loc6_;
                     if(Global.lobby_display.getGameEnd())
                     {
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
                     }
                     else
                     {
                        SafeGlobal.GAME.chat.showMessage("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8,true);
                     }
                  }
                  else if(Global.lobby_display.getGameEnd())
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
                  }
                  else
                  {
                     SafeGlobal.GAME.chat.showMessage("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8,true);
                  }
                  
               }
            }
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc5_;
            if(param1.slice(0,7) == "/unmute" && !(param1.indexOf(" ") == -1))
            {
               _loc2_ = param1.split(" ");
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc2_[0] == "/unmute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
               {
                  _loc5_;
                  _loc3_ = false;
                  _loc5_;
                  _loc4_ = SafeGlobal.§_-If§.length;
                  while(_loc4_ >= 0)
                  {
                     _loc6_;
                     _loc6_;
                     if(SafeGlobal.§_-If§[_loc4_] == _loc2_[1])
                     {
                        SafeGlobal.§_-If§.splice(_loc4_,1);
                        _loc5_;
                        _loc3_ = true;
                     }
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc4_--;
                  }
                  _loc5_;
                  _loc5_;
                  if(_loc3_)
                  {
                     _loc5_;
                     _loc5_;
                     if(Global.lobby_display.getGameEnd())
                     {
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        _loc5_;
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                     }
                     else
                     {
                        SafeGlobal.GAME.chat.showMessage("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8,true);
                     }
                  }
               }
            }
            else
            {
               this.connection.send(this.§do§.§_-0-k§("SendChat"),param1);
            }
         }
      }
      
      override public function sendFlashError(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         if(this.connection != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.connection.connected)
            {
               _loc2_;
               this.connection.send(this.§do§.§_-0-k§("FlashErrorLog"),param1);
            }
         }
      }
      
      override public function fireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         SafeGlobal.GAME.removeStock(param2);
         _loc6_;
         _loc6_;
         this.§_-c5§();
         _loc6_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2,param3,param4);
      }
      
      public function §_-6Y§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-c5§();
         _loc3_;
         _loc3_;
         this.connection.send(this.§do§.§_-0-k§("Taunt"),param1);
      }
      
      public function §_-gj§(param1:String, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         this.§_-c5§();
         _loc6_;
         _loc6_;
         this.connection.send(this.§do§.§_-0-k§("SendMD5s"),param1,param2,param3,param4);
      }
      
      override public function layMine(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.GAME.removeStock(param2);
         _loc4_;
         _loc4_;
         this.§_-c5§();
         _loc4_;
         _loc4_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2);
      }
      
      override public function teleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         SafeGlobal.GAME.removeStock(param2);
         _loc7_;
         this.§_-c5§();
         _loc7_;
         _loc7_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2,param3,param4,param5,param6);
      }
      
      override public function incoming(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         SafeGlobal.GAME.removeStock(param2);
         _loc4_;
         this.§_-c5§();
         _loc5_;
         _loc5_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2,param3);
      }
      
      override public function melee(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         SafeGlobal.GAME.removeStock(param2);
         _loc3_;
         _loc3_;
         this.§_-c5§();
         _loc4_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2);
      }
      
      override public function placeGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(param6 == -1 && param7 == -1 && param8 == -1)
         {
            SafeGlobal.GAME.removeStock(param2);
            this.§_-c5§();
            _loc10_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc10_;
            _loc10_;
            this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2,param3,param4,param5);
            _loc9_;
         }
         else
         {
            SafeGlobal.GAME.removeStock(param2);
            this.§_-c5§();
            _loc10_;
            _loc10_;
            this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      override public function placePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.GAME.removeStock(param2);
         _loc3_;
         this.§_-c5§();
         _loc4_;
         this.connection.send(this.§do§.§_-0-k§("UseWeapon"),param1,param2);
      }
      
      override public function sendUpdateCache(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("CacheProgress"),param1);
      }
      
      public function updatePlayerCache(param1:Message, param2:int, param3:Number) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         if(SafeGlobal.GAME)
         {
            _loc4_;
            SafeGlobal.GAME.updatePlayerCache(param2,param3);
         }
      }
      
      public function latestPlayerCache(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.GAME.latestPlayerCache(param2);
      }
      
      override public function requestLatestCache() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.connection.send(this.§do§.§_-0-k§("RequestLatestCache"));
      }
      
      override public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-c5§();
         _loc3_;
         _loc3_;
         this.connection.send(this.§do§.§_-0-k§("StartWalk"),param1,param2);
      }
      
      override public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-c5§();
         _loc2_;
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("StopWalk"),param1);
      }
      
      override public function endOfTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-c5§();
         _loc3_;
         this.connection.send(this.§do§.§_-0-k§("EndOfTurn"),param1);
      }
      
      override public function sendSetupReady() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-c5§();
         _loc2_;
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("SetupReady"));
      }
      
      override public function sendLevelRebuilt() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-c5§();
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("LevelRebuilt"));
      }
      
      override public function sendEndSim(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-c5§();
         _loc3_;
         this.connection.send(this.§do§.§_-0-k§("EndSim"),param1);
      }
      
      public function §_-bQ§(param1:Message) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc7_;
         SafeGlobal.GAME.pauseForError();
         var _loc2_:Array = SafeGlobal.GAME.getMD5s();
         var _loc3_:String = String(_loc2_[0]).toUpperCase();
         var _loc4_:String = String(_loc2_[1]).toUpperCase();
         var _loc5_:String = String(_loc2_[2]).toUpperCase();
         var _loc6_:String = String(_loc2_[3]).toUpperCase();
         _loc7_;
         _loc7_;
         this.§_-gj§(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      public function rebuildGame(param1:Message, param2:int, param3:String, param4:String, param5:String, param6:String) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc7_:* = "";
         var _loc8_:* = "";
         var _loc9_:* = "";
         var _loc10_:* = "";
         _loc13_;
         _loc13_;
         _loc13_;
         if(param3 != "")
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc7_ = SafeGlobal.GAME.generateStockString();
            _loc14_;
            _loc14_;
         }
         _loc14_;
         _loc14_;
         _loc14_;
         _loc14_;
         if(param4 != "")
         {
            _loc8_ = SafeGlobal.GAME.generatePlanetsString();
         }
         _loc14_;
         if(param5 != "")
         {
            _loc9_ = SafeGlobal.GAME.generateObjectsString();
            _loc14_;
            _loc14_;
         }
         _loc13_;
         _loc13_;
         if(param6 != "")
         {
            _loc10_ = SafeGlobal.GAME.generateGatesString();
         }
         var _loc11_:String = Capabilities.version;
         _loc13_;
         if(Capabilities.isDebugger)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc11_ = _loc11_ + "D";
            _loc14_;
            _loc14_;
         }
         else
         {
            _loc13_;
            _loc13_;
            _loc11_ = _loc11_ + "S";
         }
         var _loc12_:String = Capabilities.os;
         _loc14_;
         _loc14_;
         this.connection.send(this.§do§.§_-0-k§("LogSyncError"),_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,SafeGlobal.§_-n8§,SafeGlobal.§_-aU§);
         _loc14_;
         SafeGlobal.GAME.rebuildGame(param2,param3,param4,param5,param6);
      }
      
      private function §_-Gf§(param1:Message, param2:int, param3:int, param4:String, param5:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!this.§_-sP§)
         {
            this.§_-sP§ = true;
            SafeGlobal.GAME.swapLobbyToGame();
            _loc6_;
            Global.lobby_display.removeBlackBarTurnDisplay();
         }
         SafeGlobal.GAME.startTurn(param2,param3,param4,param5);
         this.§_-c5§(35000);
      }
      
      private function §_-OH§(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(param2 == SafeGlobal.GN_USER_LEFT)
         {
            _loc4_;
            _loc4_;
            SafeGlobal.game_over_data.§_-Qv§(param3);
            SafeGlobal.GAME.displayDropOut(param3);
            this.§_-sM§[param3] = null;
            _loc4_;
            this.§_-yB§();
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(param2 == SafeGlobal.§_-Qo§)
            {
               _loc5_;
               _loc5_;
               SafeGlobal.GAME.unitsAfk(param3);
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc4_;
               if(param2 == SafeGlobal.§_-0j§)
               {
                  SafeGlobal.GAME.unitsAfkBack(param3);
               }
               else if(param2 == SafeGlobal.§_-JI§)
               {
                  SafeGlobal.GAME.displayAfkKick(param3);
               }
               
            }
         }
      }
      
      private function §_-Rb§(param1:Message, param2:int, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data.§_-6u§(param3);
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data.§_-kv§(param2);
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data.§_-Ht§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         if(SafeGlobal.game_over_data.§_-W5§ == true)
         {
            _loc4_;
            if(Global.lobby_display != null)
            {
               _loc5_;
               Global.lobby_display.tryUpdateGamePositions();
            }
         }
      }
      
      private function §_-jP§(param1:Message, param2:int, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         SafeGlobal.game_over_data.§_-6u§(param3);
         _loc4_;
         _loc4_;
         SafeGlobal.game_over_data.§_-kv§(param2);
         _loc4_;
         _loc4_;
         _loc5_;
         SafeGlobal.game_over_data.§_-Ht§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         _loc4_;
         if(SafeGlobal.game_over_data.§_-W5§ == false)
         {
            SafeGlobal.GAME.gameOver();
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            if(Global.lobby_display != null)
            {
               _loc5_;
               _loc5_;
               Global.lobby_display.tryUpdateGamePositions();
            }
         }
      }
      
      private function §_-e9§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         var _loc3_:Array = _loc2_[0].split(",");
         var _loc4_:Array = _loc2_[1].split(",");
         _loc5_;
         _loc5_;
         SafeGlobal.§_-yA§ = parseInt(_loc3_[0]);
         SafeGlobal.§_-dW§ = parseInt(_loc3_[2]);
         _loc5_;
         _loc5_;
         SafeGlobal.§_-mh§ = parseInt(_loc3_[3]);
         _loc6_;
         SafeGlobal.§_-yg§ = _loc3_[1];
         _loc5_;
         SafeGlobal.§_-7j§ = parseInt(_loc4_[0]);
         SafeGlobal.§_-7T§ = parseInt(_loc4_[2]);
         _loc6_;
         SafeGlobal.§_-if§ = parseInt(_loc4_[3]);
         _loc5_;
         SafeGlobal.§_-Fu§ = _loc4_[1];
      }
      
      private function gameOver(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:String, param10:String, param11:String, param12:String, param13:int, param14:String) : void
      {
         var _loc21_:* = false;
         var _loc22_:* = true;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.§_-aY§ = param13;
         _loc21_;
         SafeGlobal.game_over_data.§_-6u§(param12);
         var _loc15_:Array = param10.split("|");
         var _loc16_:Array = _loc15_[0].split(",");
         _loc22_;
         _loc18_ = 0;
         while(_loc18_ < _loc16_.length)
         {
            _loc21_;
            _loc17_ = int(_loc16_[_loc18_]);
            _loc21_;
            _loc21_;
            Global.game_stats[_loc18_] = Global.game_stats[_loc18_] + _loc17_;
            _loc22_;
            _loc22_;
            _loc18_++;
            _loc21_;
            _loc21_;
         }
         var _loc19_:Array = _loc15_[1].split(",");
         _loc22_;
         _loc22_;
         _loc21_;
         _loc18_ = 0;
         while(true)
         {
            _loc22_;
            if(_loc18_ >= _loc19_.length)
            {
               break;
            }
            _loc21_;
            _loc21_;
            _loc17_ = int(_loc19_[_loc18_]);
            _loc22_;
            Global.other_stats[_loc18_] = _loc17_;
            _loc22_;
            _loc22_;
            _loc18_++;
         }
         _loc21_;
         SafeGlobal.§_-8m§.§_-XO§(Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         var _loc20_:int = Global.coins + param5 + param6 + param7;
         _loc22_;
         SafeGlobal.game_over_data.§_-kv§(param4);
         _loc21_;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.§_-Ht§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-Z6§ = param5;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-uo§ = param6;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-mv§ = param7;
         _loc21_;
         SafeGlobal.game_over_data.§_-nn§ = param2;
         _loc21_;
         _loc21_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-ZL§ = param3;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.unlock_data = param8;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-jO§ = param9;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-5C§ = _loc15_[0];
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-aT§ = _loc15_[1];
         _loc22_;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-5k§(SafeGlobal.selected_level.thumbnail);
         SafeGlobal.game_over_data.§_-1§ = param11;
         SafeGlobal.replay_room.RoomName = param11;
         this.§_-e9§(param14);
         SafeGlobal.GAME.gameOver();
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc21_;
         _loc21_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            this.submitKongStats();
         }
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
         {
            _loc22_;
            this.checkNewgroundsAwards();
            _loc21_;
            _loc21_;
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
         {
            this.submitMiniplayStats();
         }
      }
      
      private function §_-x6§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:String, param10:String, param11:String, param12:String, param13:int, param14:String) : void
      {
         var _loc21_:* = false;
         var _loc22_:* = true;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.§_-aY§ = param13;
         _loc21_;
         SafeGlobal.game_over_data.§_-6u§(param12);
         var _loc15_:Array = param10.split("|");
         var _loc16_:Array = _loc15_[0].split(",");
         _loc22_;
         _loc18_ = 0;
         while(_loc18_ < _loc16_.length)
         {
            _loc22_;
            _loc17_ = int(_loc16_[_loc18_]);
            _loc22_;
            _loc22_;
            Global.game_stats[_loc18_] = Global.game_stats[_loc18_] + _loc17_;
            _loc22_;
            _loc22_;
            _loc18_++;
            _loc22_;
            _loc22_;
         }
         var _loc19_:Array = _loc15_[1].split(",");
         _loc22_;
         _loc18_ = 0;
         _loc22_;
         while(true)
         {
            _loc21_;
            _loc21_;
            if(_loc18_ >= _loc19_.length)
            {
               break;
            }
            _loc22_;
            _loc17_ = int(_loc19_[_loc18_]);
            Global.other_stats[_loc18_] = _loc17_;
            _loc22_;
            _loc22_;
            _loc18_++;
            _loc21_;
         }
         SafeGlobal.§_-8m§.§_-XO§(Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         var _loc20_:int = Global.coins + param5 + param6 + param7;
         _loc21_;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-kv§(param4);
         SafeGlobal.game_over_data.§_-Ht§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-Z6§ = param5;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-uo§ = param6;
         _loc22_;
         _loc21_;
         SafeGlobal.game_over_data.§_-mv§ = param7;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-nn§ = param2;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-ZL§ = param3;
         _loc21_;
         SafeGlobal.game_over_data.unlock_data = param8;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-jO§ = param9;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-5C§ = _loc15_[0];
         _loc21_;
         SafeGlobal.game_over_data.§_-aT§ = _loc15_[1];
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-5k§(SafeGlobal.selected_level.thumbnail);
         _loc22_;
         SafeGlobal.game_over_data.§_-1§ = param11;
         SafeGlobal.replay_room.RoomName = param11;
         this.§_-e9§(param14);
         _loc21_;
         SafeGlobal.GAME.displayQuitButton();
         _loc22_;
         _loc22_;
         _loc21_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            this.submitKongStats();
            _loc21_;
         }
         _loc21_;
         _loc22_;
         _loc21_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
         {
            _loc22_;
            _loc22_;
            this.checkNewgroundsAwards();
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
         {
            this.submitMiniplayStats();
         }
      }
      
      override public function submitKongStats() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            TimelineGlobal.KONG.stats.submit("weapons_used",Global.game_stats[Global.STAT_SHOTS_TAKEN]);
            TimelineGlobal.KONG.stats.submit("enemies_killed",Global.game_stats[Global.STAT_ENEMIES_KILLED]);
            TimelineGlobal.KONG.stats.submit("gold_medals",Global.other_stats[Global.OSTAT_GOLD_MEDALS]);
            TimelineGlobal.KONG.stats.submit("silver_medals",Global.other_stats[Global.OSTAT_SILVER_MEDALS]);
            TimelineGlobal.KONG.stats.submit("bronze_medals",Global.other_stats[Global.OSTAT_BRONZE_MEDALS]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("iron_medals",Global.other_stats[Global.OSTAT_IRON_MEDALS]);
            TimelineGlobal.KONG.stats.submit("daily_awards",Global.other_stats[Global.§_-Rs§]);
            TimelineGlobal.KONG.stats.submit("weekly_awards",Global.other_stats[Global.§_-kt§]);
            TimelineGlobal.KONG.stats.submit("weapons_unlocked",Global.other_stats[Global.OSTAT_WEAPONS_UNLOCKED]);
            TimelineGlobal.KONG.stats.submit("player_level",Global.getLevel(Global.teamXP.getInt()));
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc1_ = 0;
            _loc2_ = 0;
            while(true)
            {
               _loc7_;
               if(_loc2_ >= §_-dS§.awards.length)
               {
                  break;
               }
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               if(§_-dS§.awards[_loc2_].award_complete == 1)
               {
                  _loc7_;
                  _loc7_;
                  _loc1_++;
               }
               _loc2_++;
            }
            _loc7_;
            _loc7_;
            TimelineGlobal.KONG.stats.submit("awards_unlocked",_loc1_);
            _loc6_;
            _loc3_ = 0;
            _loc7_;
            _loc7_;
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               _loc7_;
               _loc5_ = 0;
               _loc7_;
               _loc7_;
               while(true)
               {
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  if(_loc5_ > 4)
                  {
                     break;
                  }
                  if(SafeGlobal.campaigns[_loc4_].medals[_loc5_] > 0)
                  {
                     _loc3_++;
                  }
                  _loc5_++;
                  _loc6_;
                  _loc6_;
               }
               _loc6_;
               _loc4_++;
            }
            TimelineGlobal.KONG.stats.submit("campaign_missions_complete",_loc3_);
         }
      }
      
      override public function checkNewgroundsAwards() : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         _loc11_;
         _loc11_;
         if(TimelineGlobal.§_-aa§ == true)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc1_ = 0;
            _loc12_;
            _loc12_;
            _loc2_ = 0;
            _loc12_;
            _loc12_;
            _loc3_ = 0;
            _loc11_;
            _loc4_ = 0;
            _loc11_;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = SafeGlobal.campaigns[0].medals;
            _loc8_ = SafeGlobal.campaigns[1].medals;
            _loc9_ = SafeGlobal.campaigns[2].medals;
            _loc12_;
            _loc12_;
            _loc10_ = 0;
            while(_loc10_ < 5)
            {
               if(_loc7_[_loc10_] == 1)
               {
                  _loc4_++;
               }
               _loc11_;
               _loc12_;
               if(!(_loc7_[_loc10_] == 0) && !(_loc7_[_loc10_] == 5))
               {
                  _loc1_++;
               }
               if(_loc8_[_loc10_] == 1)
               {
                  _loc5_++;
               }
               _loc12_;
               _loc12_;
               if(!(_loc8_[_loc10_] == 0) && !(_loc8_[_loc10_] == 5))
               {
                  _loc2_++;
               }
               if(_loc9_[_loc10_] == 1)
               {
                  _loc6_++;
               }
               _loc11_;
               _loc12_;
               _loc12_;
               if(!(_loc9_[_loc10_] == 0) && !(_loc9_[_loc10_] == 5))
               {
                  _loc3_++;
                  _loc12_;
               }
               _loc10_++;
            }
            _loc10_ = 0;
            while(_loc10_ < API.medals.length)
            {
               if(API.medals[_loc10_].unlocked == false)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  if(API.medals[_loc10_].id == 37033)
                  {
                     _loc11_;
                     _loc11_;
                     if(§_-dS§.awards[84].award_complete == 1)
                     {
                        API.unlockMedal("I Have The Power");
                     }
                  }
                  else
                  {
                     _loc11_;
                     _loc11_;
                     if(API.medals[_loc10_].id == 37034)
                     {
                        _loc11_;
                        _loc12_;
                        _loc12_;
                        if(§_-dS§.awards[87].award_complete == 1)
                        {
                           API.unlockMedal("I\'ll watch it later");
                           _loc11_;
                           _loc11_;
                        }
                     }
                     else
                     {
                        _loc12_;
                        _loc12_;
                        _loc12_;
                        if(API.medals[_loc10_].id == 37032)
                        {
                           _loc12_;
                           _loc12_;
                           if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                           {
                              API.unlockMedal("What did I win?");
                           }
                        }
                        else
                        {
                           _loc11_;
                           _loc11_;
                           if(API.medals[_loc10_].id == 37039)
                           {
                              _loc11_;
                              if(Global.other_stats[Global.§_-kt§] >= 2)
                              {
                                 _loc11_;
                                 _loc11_;
                                 API.unlockMedal("Fortnight of Fear");
                              }
                           }
                           else
                           {
                              _loc11_;
                              _loc11_;
                              if(API.medals[_loc10_].id == 37037)
                              {
                                 _loc12_;
                                 _loc11_;
                                 _loc11_;
                                 _loc11_;
                                 _loc11_;
                                 if(_loc3_ >= 5)
                                 {
                                    _loc12_;
                                    _loc12_;
                                    API.unlockMedal("Galactic Champion");
                                 }
                              }
                              else if(API.medals[_loc10_].id == 37036)
                              {
                                 _loc11_;
                                 _loc11_;
                                 if(_loc2_ >= 5)
                                 {
                                    API.unlockMedal("Galactic Defender");
                                 }
                              }
                              else
                              {
                                 _loc12_;
                                 if(API.medals[_loc10_].id == 37035)
                                 {
                                    if(_loc1_ >= 5)
                                    {
                                       _loc11_;
                                       _loc11_;
                                       API.unlockMedal("Galactic Explorer");
                                       _loc11_;
                                       _loc11_;
                                    }
                                 }
                                 else if(API.medals[_loc10_].id == 37038)
                                 {
                                    if(Global.other_stats[Global.§_-Rs§] >= 10)
                                    {
                                       API.unlockMedal("Recurring Nightmare");
                                       _loc12_;
                                       _loc12_;
                                    }
                                 }
                                 else
                                 {
                                    _loc12_;
                                    _loc12_;
                                    if(API.medals[_loc10_].id == 37044)
                                    {
                                       _loc11_;
                                       _loc11_;
                                       _loc12_;
                                       if(§_-dS§.awards[97].award_complete == 1)
                                       {
                                          API.unlockMedal("Drawn and Quartered");
                                       }
                                    }
                                    else
                                    {
                                       _loc11_;
                                       if(API.medals[_loc10_].id == 37043)
                                       {
                                          _loc11_;
                                          if(_loc6_ >= 5)
                                          {
                                             API.unlockMedal("Golden Champion");
                                          }
                                       }
                                       else
                                       {
                                          _loc11_;
                                          _loc11_;
                                          _loc12_;
                                          _loc12_;
                                          if(API.medals[_loc10_].id == 37042)
                                          {
                                             _loc12_;
                                             _loc12_;
                                             _loc12_;
                                             if(_loc5_ >= 5)
                                             {
                                                _loc11_;
                                                _loc11_;
                                                API.unlockMedal("Golden Defender");
                                             }
                                          }
                                          else
                                          {
                                             _loc12_;
                                             _loc12_;
                                             if(API.medals[_loc10_].id == 37041)
                                             {
                                                if(_loc4_ >= 5)
                                                {
                                                   API.unlockMedal("Golden Explorer");
                                                }
                                             }
                                             else if(API.medals[_loc10_].id == 37047)
                                             {
                                                if(Global.getLevel(Global.teamXP.getInt()) >= 25)
                                                {
                                                   API.unlockMedal("No Longer A Noob");
                                                }
                                             }
                                             else
                                             {
                                                _loc11_;
                                                _loc11_;
                                                if(API.medals[_loc10_].id == 37045)
                                                {
                                                   _loc11_;
                                                   if(§_-dS§.awards[98].award_complete == 1)
                                                   {
                                                      API.unlockMedal("Half Way There");
                                                      _loc11_;
                                                      _loc11_;
                                                   }
                                                }
                                                else if(API.medals[_loc10_].id == 37048)
                                                {
                                                   if(Global.getLevel(Global.teamXP.getInt()) >= 50)
                                                   {
                                                      _loc11_;
                                                      _loc11_;
                                                      API.unlockMedal("Semi Pro");
                                                   }
                                                }
                                                else
                                                {
                                                   _loc11_;
                                                   _loc11_;
                                                   if(API.medals[_loc10_].id == 37046)
                                                   {
                                                      _loc11_;
                                                      _loc12_;
                                                      _loc12_;
                                                      _loc12_;
                                                      if(§_-dS§.awards[99].award_complete == 1)
                                                      {
                                                         API.unlockMedal("Now It\'s 100%");
                                                         _loc11_;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc11_;
                                                      if(API.medals[_loc10_].id == 37049)
                                                      {
                                                         if(Global.getLevel(Global.teamXP.getInt()) >= 75)
                                                         {
                                                            _loc12_;
                                                            API.unlockMedal("Pwning The Galaxy");
                                                            _loc11_;
                                                         }
                                                      }
                                                      else if(API.medals[_loc10_].id == 37040)
                                                      {
                                                         _loc11_;
                                                         _loc11_;
                                                         if(§_-dS§.awards[95].award_complete == 1)
                                                         {
                                                            _loc11_;
                                                            _loc11_;
                                                            API.unlockMedal("Mosh Pit");
                                                         }
                                                      }
                                                      
                                                   }
                                                }
                                                
                                             }
                                             
                                          }
                                       }
                                    }
                                 }
                                 
                              }
                              
                           }
                        }
                     }
                  }
               }
               _loc10_++;
               _loc12_;
               _loc12_;
            }
         }
      }
      
      override public function submitMiniplayStats() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         var i:int = 0;
         _loc2_;
         _loc2_;
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (team_level): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted team_level");
            }
         },"team_level",Global.getLevel(Global.teamXP.getInt()));
         _loc3_;
         _loc3_;
         _loc2_;
         var award_count:int = 0;
         _loc3_;
         _loc3_;
         i = 0;
         while(i < §_-dS§.awards.length)
         {
            _loc2_;
            _loc3_;
            if(§_-dS§.awards[i].award_complete == 1)
            {
               _loc2_;
               award_count++;
            }
            _loc2_;
            _loc2_;
            i++;
         }
         _loc2_;
         _loc2_;
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (award_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted award_count");
            }
         },"award_count",award_count);
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (game_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted game_count");
            }
         },"game_count",Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         var replay_count:int = 0;
         _loc3_;
         _loc3_;
         _loc2_;
         if(§_-dS§.awards[87].award_complete == 1)
         {
            _loc2_;
            replay_count = 1;
            _loc2_;
            _loc2_;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (replay_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted replay_count");
            }
         },"replay_count",replay_count);
         _loc3_;
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (daily_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted daily_count");
            }
         },"daily_count",Global.other_stats[Global.§_-Rs§]);
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (weekly_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted weekly_count");
            }
         },"weekly_count",Global.other_stats[Global.§_-kt§]);
         _loc3_;
         var complete_count_1:int = 0;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         var complete_count_2:int = 0;
         _loc3_;
         _loc3_;
         var complete_count_3:int = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         var gold_count_1:int = 0;
         _loc2_;
         _loc3_;
         _loc3_;
         var gold_count_2:int = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         var gold_count_3:int = 0;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         var medals_1:Array = SafeGlobal.campaigns[0].medals;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         var medals_2:Array = SafeGlobal.campaigns[1].medals;
         _loc2_;
         _loc2_;
         _loc2_;
         var medals_3:Array = SafeGlobal.campaigns[2].medals;
         _loc3_;
         _loc3_;
         _loc2_;
         i = 0;
         while(true)
         {
            _loc2_;
            _loc2_;
            if(i >= 5)
            {
               break;
            }
            if(medals_1[i] == 1)
            {
               _loc3_;
               _loc3_;
               gold_count_1++;
            }
            _loc3_;
            _loc3_;
            if(!(medals_1[i] == 0) && !(medals_1[i] == 5))
            {
               _loc3_;
               _loc3_;
               _loc3_;
               complete_count_1++;
            }
            _loc3_;
            if(medals_2[i] == 1)
            {
               _loc3_;
               _loc2_;
               gold_count_2++;
            }
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(!(medals_2[i] == 0) && !(medals_2[i] == 5))
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               complete_count_2++;
               _loc3_;
               _loc3_;
            }
            _loc3_;
            if(medals_3[i] == 1)
            {
               _loc2_;
               _loc2_;
               gold_count_3++;
               _loc2_;
               _loc2_;
            }
            _loc3_;
            if(!(medals_3[i] == 0) && !(medals_3[i] == 5))
            {
               _loc2_;
               _loc2_;
               _loc2_;
               complete_count_3++;
            }
            _loc3_;
            _loc3_;
            _loc3_;
            i++;
         }
         _loc2_;
         _loc2_;
         var c1:int = 0;
         _loc2_;
         if(complete_count_1 == 5)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            c1 = 1;
            _loc2_;
            _loc2_;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (complete_campaign_1): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted complete_campaign_1");
            }
         },"complete_campaign_1",c1);
         var c2:int = 0;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(complete_count_2 == 5)
         {
            c2 = 1;
            _loc3_;
            _loc3_;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (complete_campaign_2): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted complete_campaign_2");
            }
         },"complete_campaign_2",c2);
         _loc3_;
         _loc3_;
         var c3:int = 0;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(complete_count_3 == 5)
         {
            _loc2_;
            _loc2_;
            c3 = 1;
            _loc2_;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (complete_campaign_3): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted complete_campaign_3");
            }
         },"complete_campaign_3",c3);
         var g1:int = 0;
         _loc3_;
         if(gold_count_1 == 5)
         {
            g1 = 1;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (gold_campaign_1): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted gold_campaign_1");
            }
         },"gold_campaign_1",g1);
         _loc2_;
         _loc2_;
         _loc2_;
         var g2:int = 0;
         _loc3_;
         if(gold_count_2 == 5)
         {
            _loc2_;
            _loc2_;
            g2 = 1;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (gold_campaign_2): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted gold_campaign_2");
            }
         },"gold_campaign_2",g2);
         _loc2_;
         _loc2_;
         var g3:int = 0;
         _loc3_;
         _loc3_;
         if(gold_count_3 == 5)
         {
            g3 = 1;
         }
         TimelineGlobal.§_-Zm§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-Zm§.logError("miniplay stat error (gold_campaign_3): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-Zm§.logInfo("miniplay submitted gold_campaign_3");
            }
         },"gold_campaign_3",g3);
      }
      
      override public function cleanUp() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-0w§();
         _loc2_;
         _loc2_;
         this.connection = null;
      }
      
      override public function disconnectGameClient() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-0w§();
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.connection != null)
         {
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.connection.connected)
            {
               _loc2_;
               _loc2_;
               this.connection.send(this.§do§.§_-0-k§("BackToLobby"));
            }
         }
      }
      
      override public function playerQuitsGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         SafeGlobal.game_over_data.§_-W5§ = true;
         SafeGlobal.GAME.hideGameOverObjects();
         SafeGlobal.game_over_data.§_-ts§ = SafeGlobal.GAME.screen;
         Global.lobby_display.displayGameQuitScreen();
         SafeGlobal.GAME.destroyGame();
         this.§_-c5§();
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("PlayerQuitsGame"));
      }
      
      override public function finishGameOver() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.hideGameOverObjects();
         _loc1_;
         SafeGlobal.game_over_data.§_-ts§ = SafeGlobal.GAME.screen;
         _loc1_;
         Global.lobby_display.displayGameEndScreen();
         _loc2_;
         SafeGlobal.GAME.destroyGame();
         _loc2_;
         _loc2_;
         SafeGlobal.game_is_over = true;
      }
      
      override public function confirmPlayingAgain() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-c5§();
         _loc2_;
         _loc2_;
         this.connection.send(this.§do§.§_-0-k§("ConfirmPlayingAgain"));
      }
      
      private function §_-cm§(param1:Message, param2:String, param3:String, param4:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(_loc6_ < SafeGlobal.§_-If§.length)
         {
            if(SafeGlobal.§_-If§[_loc6_] == param3)
            {
               _loc8_;
               _loc5_ = true;
               break;
            }
            _loc6_++;
         }
         _loc8_;
         if(!_loc5_)
         {
            _loc8_;
            _loc8_;
            if(Global.lobby_display.getGameEnd())
            {
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               Global.lobby_display.displayGameEndChat(param2,param3,param4);
            }
            else
            {
               SafeGlobal.GAME.chat.showMessage(param2,param3,param4);
               Global.lobby_display.displayGameEndChat(param2,param3,param4,true);
            }
         }
      }
      
      private function §_-Ub§(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_STARTWALK,param2,{"walkDir":param3});
      }
      
      private function §_-7B§(param1:Message, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_STOPWALK,param2,null);
      }
      
      private function §_-wh§(param1:Message, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_ENDTURN,param2,null);
      }
      
      private function §_-oZ§(param1:Message, param2:int, param3:String, param4:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         SafeGlobal.playerID = param2;
         SafeGlobal.gameStock = param3;
         _loc6_;
         _loc6_;
         if(param4 == -1)
         {
            _loc6_;
            SafeGlobal.§_-yj§ = false;
         }
         else
         {
            SafeGlobal.§_-yj§ = true;
            SafeGlobal.§_-6V§ = param4;
            _loc5_;
         }
         this.§_-c5§();
         this.connection.send(this.§do§.§_-0-k§("PlayerReady"));
      }
      
      private function §_-yB§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:* = "PLAYERS IN ROOM:\n";
         _loc3_;
         if(this.§_-sM§.length > 0)
         {
            _loc4_;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-sM§.length)
            {
               if(this.§_-sM§[_loc2_] != null)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc1_ = _loc1_ + this.§_-sM§[_loc2_];
                  _loc4_;
                  _loc1_ = _loc1_ + "\n";
                  _loc3_;
                  _loc3_;
               }
               _loc2_++;
               _loc3_;
               _loc3_;
            }
         }
      }
      
      private function §_-5M§(param1:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < Global.player_array.length)
         {
            if(Global.player_array[_loc2_].user_name == param1)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               return true;
            }
            _loc2_++;
            _loc3_;
         }
         return false;
      }
   }
}
