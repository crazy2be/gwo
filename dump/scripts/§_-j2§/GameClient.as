package §_-j2§
{
   import flash.display.Stage;
   import flash.utils.Timer;
   import _-5F.multiplayer;
   import _-Jw.createJoinRoom;
   import _-Po.addDisconnectHandler;
   import _-Po.addMessageHandler;
   import flash.events.TimerEvent;
   import _-Po.send;
   import playerio.*;
   import §_-8B§.*;
   import flash.geom.Point;
   import §_-zO§.Unit;
   import §_-Cv§.GameOverData;
   import _-Po.connected;
   import flash.system.Capabilities;
   import §_-Cv§.§_-x3§;
   
   public class GameClient extends §_-iS§
   {
      
      public function GameClient()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         SafeGlobal.game_client = this;
         this.§_-P0§ = new MessageToServer();
         this.§_-jD§ = new MessageFromServer();
         this.§_-wt§ = new Array();
         _loc2_;
         this.player_count = 0;
      }
      
      protected var §_-Xj§:int = 2;
      
      protected var §_-4l§:String = "";
      
      protected var MODS:String = "";
      
      protected var §_-V§:String = "0";
      
      protected var §_-f2§:String = "";
      
      protected var §_-Eq§:int = 0;
      
      protected var §_-tW§:String = "0";
      
      protected var §_-x8§:Boolean = false;
      
      protected var connection:Connection;
      
      protected var §_-P0§:MessageToServer;
      
      protected var §_-jD§:MessageFromServer;
      
      protected var stage:Stage;
      
      protected var §_-wt§:Array;
      
      protected var player_count:int = 0;
      
      protected var §_-4§:int;
      
      protected var §_-LE§:int;
      
      protected var §_-MM§:int;
      
      protected var §_-4I§:String;
      
      protected var §_-3H§:String;
      
      public var §_-us§:Boolean = false;
      
      protected var §_-H4§:Timer;
      
      override public function init(param1:*, param2:Stage, param3:String, param4:String, param5:int, param6:int, param7:String, param8:String, param9:String) : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         this.stage = param2;
         this.connection = param1;
         this.§_-f2§ = param3;
         _loc11_;
         this.§_-Xj§ = param5;
         _loc10_;
         this.§_-4l§ = param4;
         this.§_-Eq§ = param6;
         this.MODS = param7;
         this.§_-V§ = param8;
         this.§_-tW§ = param9;
         Global.CLIENT.multiplayer.createJoinRoom(param3,"Game",true,{
            "MapId":param4,
            "MaxPlayers":param5,
            "CampaignKey":param6,
            "Mods":param7,
            "Private":param8,
            "TeamBattle":param9
         },null,this.§_-zI§,this.§_-N4§);
      }
      
      private function §_-zI§(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.connection = param1;
         SafeGlobal.connected_to_game = true;
         this.connection.addDisconnectHandler(this.§_-R0§);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("InitPlayer"),this.§_-pc§);
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("ReceiveLevelData"),this.§_-SX§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("StartTurn"),this.§_-27§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("UseWeapon"),this.§_-4y§);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("CleanUp"),this.§_-JE§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("DisconnectAFK"),this.§_-s0§);
         _loc2_;
         _loc2_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("Taunt"),this.§_-kS§);
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("ErrorMD5Request"),this.§_-qJ§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("RebuildGame"),this.rebuildGame);
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("EndOfTurn"),this.§_-b8§);
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("StartWalk"),this.§_-St§);
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("StopWalk"),this.§_-2M§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("ReceiveChat"),this.§_-1K§);
         _loc2_;
         _loc2_;
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("GameOver"),this.gameOver);
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("TeamIsDead"),this.§_-Mu§);
         _loc3_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("GameOverDead"),this.§_-AZ§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("UpdatePositions"),this.§_-Ze§);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("GameNotification"),this.§_-QU§);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("GameStartError"),this.§_-Zp§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("PlayingAgain"),this.displayPlayingAgain);
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("LeftRoomAtEnd"),this.displayLeftRoom);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("UpdatePlayerCache"),this.updatePlayerCache);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.§_-jD§.§_-GG§("LatestPlayerCache"),this.latestPlayerCache);
         _loc2_;
         this.connection.addMessageHandler("*",this.handleMessages);
         _loc3_;
         _loc3_;
         this.§_-H4§ = new Timer(60000,1);
         _loc2_;
         this.§_-H4§.addEventListener(TimerEvent.TIMER,this.§_-P9§,false,0,true);
         _loc2_;
         this.§_-H4§.start();
      }
      
      private function §_-P9§(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("Validate"));
      }
      
      private function §_-aY§(param1:Number = -1) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-H4§ != null)
         {
            this.§_-H4§.reset();
            _loc2_;
            _loc2_;
            if(param1 != -1)
            {
               this.§_-H4§.delay = param1;
            }
            else
            {
               this.§_-H4§.delay = 60000;
               _loc3_;
            }
            this.§_-H4§.start();
         }
      }
      
      private function §_-fG§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-H4§ != null)
         {
            _loc1_;
            this.§_-H4§.stop();
            _loc2_;
            this.§_-H4§.removeEventListener(TimerEvent.TIMER,this.§_-P9§);
            _loc1_;
            this.§_-H4§ = null;
         }
      }
      
      private function §_-YN§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.displayGameStartError();
      }
      
      private function §_-c5§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.lobby_display.displayGameStartError();
      }
      
      public function displayPlayingAgain(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         Global.lobby_display.displayPlayingAgain(param2);
      }
      
      public function displayLeftRoom(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         Global.lobby_display.displayLeftRoom(param2);
      }
      
      public function §_-Zp§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.lobby_display.displayGameStartError();
      }
      
      public function §_-kS§(param1:Message, param2:int, param3:int) : *
      {
      }
      
      public function §_-4y§(param1:Message, param2:int, param3:int, param4:int = -1, param5:int = -1, param6:int = -1, param7:int = -1, param8:int = -1, param9:int = -1) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc10_:Array = null;
         _loc12_;
         if(param3 == -1)
         {
            _loc12_;
            _loc12_;
            this.§_-oM§(param1,param2,-1,-1,-1,-1,"");
         }
         else
         {
            _loc10_ = SafeGlobal.§_-r§(param3);
            if(_loc10_[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
            {
               this.§_-oM§(param1,param2,_loc10_[2],param4,param5,param3,_loc10_[4]);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_MINE)
            {
               this.§_-17§(param1,param2,_loc10_[2]);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_MELEE)
            {
               _loc12_;
               _loc12_;
               this.§_-ZW§(param1,param2,_loc10_[0]);
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_INCOMING)
            {
               _loc11_;
               _loc11_;
               this.§_-5m§(param1,param2,_loc10_[0],param4);
               _loc12_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_GATE)
            {
               _loc12_;
               this.§_-2K§(param1,param2,_loc10_[2],param4,param5,param6,param7,param8,param9);
               _loc12_;
               _loc12_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
            {
               this.§_-LP§(param1,param2,_loc10_[0],param4,param5,param6,param7);
               _loc12_;
               _loc12_;
            }
            else if(_loc10_[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
            {
               this.§_-MG§(param1,param2,param3);
            }
            
            
            
            
            
            
         }
      }
      
      private function §_-s0§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         SafeGlobal.GAME.AFKKick();
      }
      
      override public function sendAFKKicked() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.§_-P0§.§_-GG§("AFKKicked"));
      }
      
      override public function sendAFKBack() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("AFKBack"));
      }
      
      private function §_-JE§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         SafeGlobal.GAME.cheatCleanUp();
      }
      
      private function §_-oM§(param1:Message, param2:int, param3:int, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
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
               _loc19_;
               _loc18_;
               _loc18_;
               _loc16_ = int(_loc15_[1]);
               _loc19_;
               _loc19_;
               _loc19_;
               _loc17_ = int(_loc15_[2]);
               _loc19_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc11_ = (_loc16_ - 1) * _loc17_ * 100 + 500;
               _loc19_;
            }
            _loc14_++;
         }
         _loc19_;
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
      
      private function §_-17§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
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
      
      private function §_-ZW§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc5_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_MELEE,param2,{"wepType":param3});
      }
      
      private function §_-LP§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:*) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc9_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_POINTSELECT,param2,{
            "wepType":param3,
            "planetID":param4,
            "shapeID":param5,
            "curveID":param6,
            "angle":param7
         });
      }
      
      private function §_-MG§(param1:Message, param2:int, param3:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc6_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_PLANETSELECT,param2,{"wepType":param3});
      }
      
      private function §_-5m§(param1:Message, param2:int, param3:int, param4:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Unit = SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit];
         _loc7_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_INCOMING,param2,{
            "wepType":param3,
            "inAngle":param4
         });
      }
      
      private function §_-2K§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1, param8:int = -1, param9:int = -1) : void
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
      
      private function §_-N4§(param1:Error) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1.errorID == 2)
         {
            _loc3_;
            this.§_-c5§();
         }
      }
      
      private function §_-R0§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         SafeGlobal.connected_to_game = false;
      }
      
      private function §_-SX§(param1:Message, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         SafeGlobal.game_over_data = new GameOverData();
         _loc7_;
         _loc7_;
         SafeGlobal.game_over_data.§_-FX§(param3);
         _loc6_;

		SafeGlobal.GAME.chat.showMessage("1: " + param1,"ADMIN",8);

		SafeGlobal.GAME.chat.showMessage("2: " + param2,"ADMIN",8);

		SafeGlobal.GAME.chat.showMessage("3: " + param3,"ADMIN",8);

		SafeGlobal.GAME.chat.showMessage("4: " + param4,"ADMIN",8);
         SafeGlobal.TIMELINE.startGame(param2,param3,param4,param5);
      }
      
      override public function sendGameChat(param1:String) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         this.§_-aY§();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(param1.slice(0,5) == "/mute" && !(param1.indexOf(" ") == -1))
         {
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc2_ = param1.split(" ");
            _loc6_;
            _loc5_;
            _loc5_;
            if(_loc2_[0] == "/mute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
            {
               if(_loc2_[1] == TimelineGlobal.player_name)
               {
                  _loc5_;
                  if(Global.lobby_display.getGameEnd())
                  {
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
                     _loc5_;
                     _loc5_;
                  }
                  else
                  {
                     SafeGlobal.GAME.chat.showMessage("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8,true);
                  }
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  if(this.§_-LF§(_loc2_[1]))
                  {
                     _loc5_;
                     _loc5_;
                     SafeGlobal.§_-in§.push(_loc2_[1]);
                     if(Global.lobby_display.getGameEnd())
                     {
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
                        _loc6_;
                        _loc6_;
                     }
                     else
                     {
                        SafeGlobal.GAME.chat.showMessage("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8,true);
                        _loc6_;
                        _loc6_;
                     }
                  }
                  else if(Global.lobby_display.getGameEnd())
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
                  }
                  else
                  {
                     SafeGlobal.GAME.chat.showMessage("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
                     _loc5_;
                     _loc6_;
                     Global.lobby_display.displayGameEndChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8,true);
                  }
                  
               }
            }
         }
         else
         {
            _loc5_;
            _loc5_;
            if(param1.slice(0,7) == "/unmute" && !(param1.indexOf(" ") == -1))
            {
               _loc2_ = param1.split(" ");
               _loc6_;
               _loc6_;
               _loc5_;
               _loc6_;
               if(_loc2_[0] == "/unmute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
               {
                  _loc6_;
                  _loc3_ = false;
                  _loc6_;
                  _loc4_ = SafeGlobal.§_-in§.length;
                  while(_loc4_ >= 0)
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(SafeGlobal.§_-in§[_loc4_] == _loc2_[1])
                     {
                        _loc6_;
                        _loc6_;
                        SafeGlobal.§_-in§.splice(_loc4_,1);
                        _loc5_;
                        _loc6_;
                        _loc6_;
                        _loc3_ = true;
                     }
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc4_--;
                     _loc5_;
                  }
                  _loc5_;
                  _loc5_;
                  if(_loc3_)
                  {
                     _loc5_;
                     _loc6_;
                     if(Global.lobby_display.getGameEnd())
                     {
                        _loc5_;
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                        _loc6_;
                     }
                     else
                     {
                        SafeGlobal.GAME.chat.showMessage("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                        _loc6_;
                        _loc6_;
                        Global.lobby_display.displayGameEndChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8,true);
                     }
                  }
               }
            }
            else
            {
               this.connection.send(this.§_-P0§.§_-GG§("SendChat"),param1);
            }
         }
      }
      
      override public function sendFlashError(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.connection != null)
         {
            _loc3_;
            _loc2_;
            if(this.connection.connected)
            {
               _loc3_;
               _loc3_;
               this.connection.send(this.§_-P0§.§_-GG§("FlashErrorLog"),param1);
            }
         }
      }
      
      override public function fireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         SafeGlobal.GAME.removeStock(param2);
         _loc6_;
         _loc6_;
         this.§_-aY§();
         _loc5_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2,param3,param4);
      }
      
      public function §_-W§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-aY§();
         _loc2_;
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("Taunt"),param1);
      }
      
      public function §_-ub§(param1:String, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         this.§_-aY§();
         _loc6_;
         this.connection.send(this.§_-P0§.§_-GG§("SendMD5s"),param1,param2,param3,param4);
      }
      
      override public function layMine(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.GAME.removeStock(param2);
         _loc4_;
         _loc4_;
         this.§_-aY§();
         _loc3_;
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2);
      }
      
      override public function teleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         SafeGlobal.GAME.removeStock(param2);
         _loc8_;
         this.§_-aY§();
         _loc8_;
         _loc8_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2,param3,param4,param5,param6);
      }
      
      override public function incoming(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         SafeGlobal.GAME.removeStock(param2);
         _loc5_;
         this.§_-aY§();
         _loc4_;
         _loc4_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2,param3);
      }
      
      override public function melee(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         SafeGlobal.GAME.removeStock(param2);
         _loc4_;
         this.§_-aY§();
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2);
      }
      
      override public function placeGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(param6 == -1 && param7 == -1 && param8 == -1)
         {
            SafeGlobal.GAME.removeStock(param2);
            this.§_-aY§();
            _loc10_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc10_;
            this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2,param3,param4,param5);
         }
         else
         {
            SafeGlobal.GAME.removeStock(param2);
            this.§_-aY§();
            this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      override public function placePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         SafeGlobal.GAME.removeStock(param2);
         _loc3_;
         _loc3_;
         this.§_-aY§();
         _loc3_;
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("UseWeapon"),param1,param2);
      }
      
      override public function sendUpdateCache(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("CacheProgress"),param1);
      }
      
      public function updatePlayerCache(param1:Message, param2:int, param3:Number) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         if(SafeGlobal.GAME)
         {
            _loc4_;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.§_-P0§.§_-GG§("RequestLatestCache"));
      }
      
      override public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-aY§();
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("StartWalk"),param1,param2);
      }
      
      override public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-aY§();
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("StopWalk"),param1);
      }
      
      override public function endOfTurn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-aY§();
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("EndOfTurn"),param1);
      }
      
      override public function sendSetupReady() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-aY§();
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("SetupReady"));
      }
      
      override public function sendLevelRebuilt() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-aY§();
         _loc1_;
         this.connection.send(this.§_-P0§.§_-GG§("LevelRebuilt"));
      }
      
      override public function sendEndSim(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-aY§();
         _loc3_;
         this.connection.send(this.§_-P0§.§_-GG§("EndSim"),param1);
      }
      
      public function §_-qJ§(param1:Message) : *
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
         this.§_-ub§(_loc3_,_loc4_,_loc5_,_loc6_);
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
         if(param3 != "")
         {
            _loc14_;
            _loc7_ = SafeGlobal.GAME.generateStockString();
         }
         _loc13_;
         _loc13_;
         if(param4 != "")
         {
            _loc13_;
            _loc8_ = SafeGlobal.GAME.generatePlanetsString();
         }
         _loc14_;
         _loc14_;
         _loc13_;
         if(param5 != "")
         {
            _loc9_ = SafeGlobal.GAME.generateObjectsString();
            _loc13_;
         }
         if(param6 != "")
         {
            _loc14_;
            _loc14_;
            _loc10_ = SafeGlobal.GAME.generateGatesString();
         }
         var _loc11_:String = Capabilities.version;
         _loc14_;
         if(Capabilities.isDebugger)
         {
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc11_ = _loc11_ + "D";
            _loc13_;
            _loc13_;
         }
         else
         {
            _loc13_;
            _loc13_;
            _loc11_ = _loc11_ + "S";
         }
         var _loc12_:String = Capabilities.os;
         _loc13_;
         this.connection.send(this.§_-P0§.§_-GG§("LogSyncError"),_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,SafeGlobal.§_-8N§,SafeGlobal.§_-dw§);
         _loc14_;
         _loc14_;
         SafeGlobal.GAME.rebuildGame(param2,param3,param4,param5,param6);
      }
      
      private function §_-27§(param1:Message, param2:int, param3:int, param4:String, param5:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         if(!this.§_-us§)
         {
            this.§_-us§ = true;
            SafeGlobal.GAME.swapLobbyToGame();
            Global.lobby_display.removeBlackBarTurnDisplay();
         }
         SafeGlobal.GAME.startTurn(param2,param3,param4,param5);
         _loc7_;
         this.§_-aY§(35000);
      }
      
      private function §_-QU§(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc5_;
         if(param2 == SafeGlobal.GN_USER_LEFT)
         {
            _loc5_;
            SafeGlobal.game_over_data.§_-e6§(param3);
            SafeGlobal.GAME.displayDropOut(param3);
            this.§_-wt§[param3] = null;
            this.§_-Cq§();
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(param2 == SafeGlobal.§_-Qg§)
            {
               SafeGlobal.GAME.unitsAfk(param3);
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc4_;
               if(param2 == SafeGlobal.§_-bj§)
               {
                  SafeGlobal.GAME.unitsAfkBack(param3);
                  _loc4_;
                  _loc4_;
               }
               else if(param2 == SafeGlobal.§_-0F§)
               {
                  SafeGlobal.GAME.displayAfkKick(param3);
               }
               
            }
         }
      }
      
      private function §_-Ze§(param1:Message, param2:int, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc5_;
         SafeGlobal.game_over_data.§_-3r§(param3);
         _loc5_;
         _loc5_;
         _loc4_;
         SafeGlobal.game_over_data.§_-Z9§(param2);
         _loc4_;
         _loc4_;
         _loc4_;
         SafeGlobal.game_over_data.§_-a4§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         if(SafeGlobal.game_over_data.§_-6e§ == true)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            if(Global.lobby_display != null)
            {
               Global.lobby_display.tryUpdateGamePositions();
            }
         }
      }
      
      private function §_-AZ§(param1:Message, param2:int, param3:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         SafeGlobal.game_over_data.§_-3r§(param3);
         _loc4_;
         SafeGlobal.game_over_data.§_-Z9§(param2);
         _loc5_;
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data.§_-a4§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         if(SafeGlobal.game_over_data.§_-6e§ == false)
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
               Global.lobby_display.tryUpdateGamePositions();
            }
         }
      }
      
      private function §_-yP§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         var _loc3_:Array = _loc2_[0].split(",");
         var _loc4_:Array = _loc2_[1].split(",");
         SafeGlobal.§_-WQ§ = parseInt(_loc3_[0]);
         _loc5_;
         _loc5_;
         SafeGlobal.§_-Bu§ = parseInt(_loc3_[2]);
         SafeGlobal.§_-ba§ = parseInt(_loc3_[3]);
         SafeGlobal.§_-MT§ = _loc3_[1];
         _loc5_;
         SafeGlobal.§_-Jt§ = parseInt(_loc4_[0]);
         SafeGlobal.§_-q5§ = parseInt(_loc4_[2]);
         _loc6_;
         SafeGlobal.§_-5Z§ = parseInt(_loc4_[3]);
         SafeGlobal.§_-cD§ = _loc4_[1];
      }
      
      private function gameOver(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:String, param10:String, param11:String, param12:String, param13:int, param14:String) : void
      {
         var _loc21_:* = true;
         var _loc22_:* = false;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         _loc21_;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-l-§ = param13;
         _loc21_;
         SafeGlobal.game_over_data.§_-3r§(param12);
         var _loc15_:Array = param10.split("|");
         var _loc16_:Array = _loc15_[0].split(",");
         _loc21_;
         _loc21_;
         _loc18_ = 0;
         while(_loc18_ < _loc16_.length)
         {
            _loc22_;
            _loc22_;
            _loc17_ = int(_loc16_[_loc18_]);
            _loc22_;
            Global.game_stats[_loc18_] = Global.game_stats[_loc18_] + _loc17_;
            _loc21_;
            _loc21_;
            _loc18_++;
            _loc22_;
            _loc22_;
         }
         var _loc19_:Array = _loc15_[1].split(",");
         _loc22_;
         _loc18_ = 0;
         while(true)
         {
            _loc21_;
            if(_loc18_ >= _loc19_.length)
            {
               break;
            }
            _loc22_;
            _loc22_;
            _loc17_ = int(_loc19_[_loc18_]);
            _loc21_;
            _loc21_;
            Global.other_stats[_loc18_] = _loc17_;
            _loc18_++;
         }
         _loc21_;
         _loc21_;
         SafeGlobal.§_-zK§.§_-mc§(Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         var _loc20_:int = Global.coins + param5 + param6 + param7;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-Z9§(param4);
         SafeGlobal.game_over_data.§_-a4§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-Qt§ = param5;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-IX§ = param6;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-nJ§ = param7;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-EW§ = param2;
         _loc21_;
         SafeGlobal.game_over_data.§_-Vm§ = param3;
         _loc22_;
         SafeGlobal.game_over_data.unlock_data = param8;
         _loc21_;
         SafeGlobal.game_over_data.§_-U9§ = param9;
         SafeGlobal.game_over_data.§_-eT§ = _loc15_[0];
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-bU§ = _loc15_[1];
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-p§(SafeGlobal.selected_level.thumbnail);
         SafeGlobal.game_over_data.§_-8T§ = param11;
         SafeGlobal.replay_room.RoomName = param11;
         this.§_-yP§(param14);
         _loc22_;
         SafeGlobal.GAME.gameOver();
         _loc21_;
         _loc21_;
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
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
         {
            this.checkNewgroundsAwards();
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            _loc22_;
            this.submitMiniplayStats();
         }
      }
      
      private function §_-Mu§(param1:Message, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:String, param10:String, param11:String, param12:String, param13:int, param14:String) : void
      {
         var _loc21_:* = true;
         var _loc22_:* = false;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         _loc21_;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.§_-l-§ = param13;
         _loc21_;
         SafeGlobal.game_over_data.§_-3r§(param12);
         var _loc15_:Array = param10.split("|");
         var _loc16_:Array = _loc15_[0].split(",");
         _loc21_;
         _loc18_ = 0;
         while(_loc18_ < _loc16_.length)
         {
            _loc22_;
            _loc22_;
            _loc17_ = int(_loc16_[_loc18_]);
            _loc22_;
            Global.game_stats[_loc18_] = Global.game_stats[_loc18_] + _loc17_;
            _loc22_;
            _loc22_;
            _loc18_++;
            _loc21_;
         }
         var _loc19_:Array = _loc15_[1].split(",");
         _loc21_;
         _loc21_;
         _loc18_ = 0;
         _loc21_;
         _loc21_;
         while(true)
         {
            _loc22_;
            if(_loc18_ >= _loc19_.length)
            {
               break;
            }
            _loc22_;
            _loc22_;
            _loc17_ = int(_loc19_[_loc18_]);
            _loc21_;
            _loc21_;
            Global.other_stats[_loc18_] = _loc17_;
            _loc21_;
            _loc21_;
            _loc18_++;
         }
         SafeGlobal.§_-zK§.§_-mc§(Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         var _loc20_:int = Global.coins + param5 + param6 + param7;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.§_-Z9§(param4);
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-a4§ = SafeGlobal.game_over_data.team_data[SafeGlobal.playerID].medal;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-Qt§ = param5;
         _loc22_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-IX§ = param6;
         _loc22_;
         SafeGlobal.game_over_data.§_-nJ§ = param7;
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-EW§ = param2;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-Vm§ = param3;
         _loc22_;
         _loc21_;
         _loc21_;
         _loc22_;
         SafeGlobal.game_over_data.unlock_data = param8;
         _loc21_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.§_-U9§ = param9;
         SafeGlobal.game_over_data.§_-eT§ = _loc15_[0];
         _loc21_;
         _loc21_;
         SafeGlobal.game_over_data.§_-bU§ = _loc15_[1];
         _loc21_;
         _loc22_;
         _loc22_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-p§(SafeGlobal.selected_level.thumbnail);
         SafeGlobal.game_over_data.§_-8T§ = param11;
         SafeGlobal.replay_room.RoomName = param11;
         this.§_-yP§(param14);
         SafeGlobal.GAME.displayQuitButton();
         _loc21_;
         _loc22_;
         _loc22_;
         _loc22_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc21_;
            _loc21_;
            this.submitKongStats();
            _loc22_;
         }
         _loc22_;
         _loc22_;
         _loc21_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
         {
            _loc22_;
            this.checkNewgroundsAwards();
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            this.submitMiniplayStats();
         }
      }
      
      override public function submitKongStats() : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            TimelineGlobal.KONG.stats.submit("weapons_used",Global.game_stats[Global.STAT_SHOTS_TAKEN]);
            TimelineGlobal.KONG.stats.submit("enemies_killed",Global.game_stats[Global.STAT_ENEMIES_KILLED]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("gold_medals",Global.other_stats[Global.OSTAT_GOLD_MEDALS]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("silver_medals",Global.other_stats[Global.OSTAT_SILVER_MEDALS]);
            TimelineGlobal.KONG.stats.submit("bronze_medals",Global.other_stats[Global.OSTAT_BRONZE_MEDALS]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("iron_medals",Global.other_stats[Global.OSTAT_IRON_MEDALS]);
            TimelineGlobal.KONG.stats.submit("daily_awards",Global.other_stats[Global.§_-1l§]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("weekly_awards",Global.other_stats[Global.§_-Z-§]);
            TimelineGlobal.KONG.stats.submit("weapons_unlocked",Global.other_stats[Global.OSTAT_WEAPONS_UNLOCKED]);
            TimelineGlobal.KONG.stats.submit("player_level",Global.getLevel(Global.teamXP.getInt()));
            _loc6_;
            _loc6_;
            _loc1_ = 0;
            _loc7_;
            _loc2_ = 0;
            while(true)
            {
               _loc7_;
               _loc7_;
               if(_loc2_ >= §_-x3§.awards.length)
               {
                  break;
               }
               _loc6_;
               _loc6_;
               _loc6_;
               if(§_-x3§.awards[_loc2_].award_complete == 1)
               {
                  _loc1_++;
               }
               _loc2_++;
            }
            TimelineGlobal.KONG.stats.submit("awards_unlocked",_loc1_);
            _loc7_;
            _loc7_;
            _loc7_;
            _loc3_ = 0;
            _loc7_;
            _loc4_ = 0;
            _loc6_;
            while(_loc4_ <= 2)
            {
               _loc7_;
               _loc7_;
               _loc5_ = 0;
               _loc6_;
               while(true)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(_loc5_ > 4)
                  {
                     break;
                  }
                  if(SafeGlobal.campaigns[_loc4_].medals[_loc5_] > 0)
                  {
                     _loc3_++;
                     _loc6_;
                     _loc6_;
                  }
                  _loc5_++;
                  _loc6_;
                  _loc6_;
               }
               _loc6_;
               _loc6_;
               _loc4_++;
               _loc6_;
               _loc6_;
            }
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("campaign_missions_complete",_loc3_);
         }
      }
      
      override public function checkNewgroundsAwards() : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
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
         if(TimelineGlobal.§_-3Q§ == true)
         {
            _loc11_;
            _loc11_;
            _loc1_ = 0;
            _loc12_;
            _loc12_;
            _loc2_ = 0;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = 0;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc4_ = 0;
            _loc12_;
            _loc12_;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = SafeGlobal.campaigns[0].medals;
            _loc8_ = SafeGlobal.campaigns[1].medals;
            _loc9_ = SafeGlobal.campaigns[2].medals;
            _loc12_;
            _loc10_ = 0;
            while(true)
            {
               _loc12_;
               if(_loc10_ >= 5)
               {
                  break;
               }
               if(_loc7_[_loc10_] == 1)
               {
                  _loc12_;
                  _loc12_;
                  _loc4_++;
               }
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(!(_loc7_[_loc10_] == 0) && !(_loc7_[_loc10_] == 5))
               {
                  _loc1_++;
               }
               if(_loc8_[_loc10_] == 1)
               {
                  _loc5_++;
                  _loc11_;
                  _loc11_;
               }
               _loc11_;
               _loc11_;
               if(!(_loc8_[_loc10_] == 0) && !(_loc8_[_loc10_] == 5))
               {
                  _loc2_++;
                  _loc11_;
                  _loc11_;
               }
               if(_loc9_[_loc10_] == 1)
               {
                  _loc12_;
                  _loc6_++;
                  _loc12_;
               }
               if(!(_loc9_[_loc10_] == 0) && !(_loc9_[_loc10_] == 5))
               {
                  _loc3_++;
                  _loc12_;
                  _loc12_;
               }
               _loc10_++;
               _loc12_;
            }
            _loc12_;
            _loc10_ = 0;
            while(_loc10_ < API.medals.length)
            {
               if(API.medals[_loc10_].unlocked == false)
               {
                  _loc11_;
                  _loc11_;
                  if(API.medals[_loc10_].id == 37033)
                  {
                     _loc12_;
                     _loc12_;
                     if(§_-x3§.awards[84].award_complete == 1)
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
                        _loc12_;
                        _loc12_;
                        if(§_-x3§.awards[87].award_complete == 1)
                        {
                           _loc11_;
                           _loc11_;
                           API.unlockMedal("I\'ll watch it later");
                        }
                     }
                     else
                     {
                        _loc11_;
                        _loc12_;
                        if(API.medals[_loc10_].id == 37032)
                        {
                           _loc12_;
                           _loc11_;
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
                              _loc12_;
                              _loc11_;
                              _loc12_;
                              _loc12_;
                              if(Global.other_stats[Global.§_-Z-§] >= 2)
                              {
                                 _loc11_;
                                 _loc11_;
                                 API.unlockMedal("Fortnight of Fear");
                              }
                           }
                           else
                           {
                              _loc11_;
                              if(API.medals[_loc10_].id == 37037)
                              {
                                 _loc12_;
                                 _loc12_;
                                 if(_loc3_ >= 5)
                                 {
                                    API.unlockMedal("Galactic Champion");
                                 }
                              }
                              else
                              {
                                 _loc12_;
                                 if(API.medals[_loc10_].id == 37036)
                                 {
                                    _loc12_;
                                    _loc12_;
                                    if(_loc2_ >= 5)
                                    {
                                       API.unlockMedal("Galactic Defender");
                                    }
                                 }
                                 else if(API.medals[_loc10_].id == 37035)
                                 {
                                    _loc11_;
                                    _loc11_;
                                    _loc11_;
                                    _loc11_;
                                    if(_loc1_ >= 5)
                                    {
                                       _loc11_;
                                       _loc11_;
                                       API.unlockMedal("Galactic Explorer");
                                       _loc11_;
                                    }
                                 }
                                 else
                                 {
                                    _loc12_;
                                    if(API.medals[_loc10_].id == 37038)
                                    {
                                       _loc12_;
                                       if(Global.other_stats[Global.§_-1l§] >= 10)
                                       {
                                          API.unlockMedal("Recurring Nightmare");
                                       }
                                    }
                                    else if(API.medals[_loc10_].id == 37044)
                                    {
                                       _loc11_;
                                       if(§_-x3§.awards[97].award_complete == 1)
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
                                          _loc11_;
                                          _loc12_;
                                          if(_loc6_ >= 5)
                                          {
                                             API.unlockMedal("Golden Champion");
                                             _loc11_;
                                             _loc11_;
                                          }
                                       }
                                       else if(API.medals[_loc10_].id == 37042)
                                       {
                                          _loc11_;
                                          _loc11_;
                                          if(_loc5_ >= 5)
                                          {
                                             _loc12_;
                                             API.unlockMedal("Golden Defender");
                                             _loc11_;
                                          }
                                       }
                                       else
                                       {
                                          _loc11_;
                                          _loc11_;
                                          _loc11_;
                                          if(API.medals[_loc10_].id == 37041)
                                          {
                                             _loc11_;
                                             _loc11_;
                                             if(_loc4_ >= 5)
                                             {
                                                API.unlockMedal("Golden Explorer");
                                             }
                                          }
                                          else
                                          {
                                             _loc12_;
                                             _loc12_;
                                             _loc12_;
                                             if(API.medals[_loc10_].id == 37047)
                                             {
                                                if(Global.getLevel(Global.teamXP.getInt()) >= 25)
                                                {
                                                   API.unlockMedal("No Longer A Noob");
                                                }
                                             }
                                             else if(API.medals[_loc10_].id == 37045)
                                             {
                                                _loc11_;
                                                if(§_-x3§.awards[98].award_complete == 1)
                                                {
                                                   API.unlockMedal("Half Way There");
                                                }
                                             }
                                             else
                                             {
                                                _loc11_;
                                                _loc11_;
                                                if(API.medals[_loc10_].id == 37048)
                                                {
                                                   _loc11_;
                                                   _loc11_;
                                                   if(Global.getLevel(Global.teamXP.getInt()) >= 50)
                                                   {
                                                      API.unlockMedal("Semi Pro");
                                                   }
                                                }
                                                else
                                                {
                                                   _loc12_;
                                                   _loc12_;
                                                   if(API.medals[_loc10_].id == 37046)
                                                   {
                                                      if(§_-x3§.awards[99].award_complete == 1)
                                                      {
                                                         _loc12_;
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
                                                            _loc12_;
                                                            API.unlockMedal("Pwning The Galaxy");
                                                            _loc11_;
                                                            _loc11_;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc11_;
                                                         _loc11_;
                                                         if(API.medals[_loc10_].id == 37040)
                                                         {
                                                            if(§_-x3§.awards[95].award_complete == 1)
                                                            {
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
               }
               _loc10_++;
            }
         }
      }
      
      override public function submitMiniplayStats() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         var i:int = 0;
         _loc3_;
         _loc3_;
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (team_level): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted team_level");
            }
         },"team_level",Global.getLevel(Global.teamXP.getInt()));
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         var award_count:int = 0;
         _loc2_;
         _loc2_;
         i = 0;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(i >= §_-x3§.awards.length)
            {
               break;
            }
            _loc3_;
            if(§_-x3§.awards[i].award_complete == 1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               award_count++;
               _loc3_;
            }
            i++;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (award_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted award_count");
            }
         },"award_count",award_count);
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (game_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted game_count");
            }
         },"game_count",Global.other_stats[Global.OSTAT_GAMES_PLAYED]);
         _loc2_;
         var replay_count:int = 0;
         _loc2_;
         _loc2_;
         if(§_-x3§.awards[87].award_complete == 1)
         {
            replay_count = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (replay_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted replay_count");
            }
         },"replay_count",replay_count);
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (daily_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted daily_count");
            }
         },"daily_count",Global.other_stats[Global.§_-1l§]);
         _loc3_;
         _loc3_;
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (weekly_count): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted weekly_count");
            }
         },"weekly_count",Global.other_stats[Global.§_-Z-§]);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         var complete_count_1:int = 0;
         _loc3_;
         var complete_count_2:int = 0;
         _loc2_;
         var complete_count_3:int = 0;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         var gold_count_1:int = 0;
         _loc2_;
         var gold_count_2:int = 0;
         _loc2_;
         _loc2_;
         var gold_count_3:int = 0;
         _loc3_;
         _loc2_;
         _loc2_;
         var medals_1:Array = SafeGlobal.campaigns[0].medals;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         var medals_2:Array = SafeGlobal.campaigns[1].medals;
         _loc2_;
         var medals_3:Array = SafeGlobal.campaigns[2].medals;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         i = 0;
         while(true)
         {
            _loc3_;
            _loc2_;
            if(i >= 5)
            {
               break;
            }
            _loc2_;
            if(medals_1[i] == 1)
            {
               _loc2_;
               _loc3_;
               _loc3_;
               gold_count_1++;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(medals_1[i] == 0) && !(medals_1[i] == 5))
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               complete_count_1++;
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(medals_2[i] == 1)
            {
               _loc2_;
               gold_count_2++;
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(medals_2[i] == 0) && !(medals_2[i] == 5))
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_;
               complete_count_2++;
            }
            if(medals_3[i] == 1)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               gold_count_3++;
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(!(medals_3[i] == 0) && !(medals_3[i] == 5))
            {
               _loc2_;
               _loc2_;
               complete_count_3++;
               _loc2_;
               _loc2_;
            }
            i++;
         }
         _loc2_;
         var c1:int = 0;
         _loc2_;
         _loc2_;
         if(complete_count_1 == 5)
         {
            _loc3_;
            _loc3_;
            c1 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (complete_campaign_1): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted complete_campaign_1");
            }
         },"complete_campaign_1",c1);
         _loc3_;
         _loc3_;
         var c2:int = 0;
         _loc2_;
         _loc3_;
         if(complete_count_2 == 5)
         {
            _loc3_;
            c2 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (complete_campaign_2): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted complete_campaign_2");
            }
         },"complete_campaign_2",c2);
         _loc2_;
         var c3:int = 0;
         _loc3_;
         if(complete_count_3 == 5)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            c3 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (complete_campaign_3): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted complete_campaign_3");
            }
         },"complete_campaign_3",c3);
         _loc2_;
         var g1:int = 0;
         _loc3_;
         _loc3_;
         if(gold_count_1 == 5)
         {
            _loc2_;
            g1 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (gold_campaign_1): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted gold_campaign_1");
            }
         },"gold_campaign_1",g1);
         _loc2_;
         _loc2_;
         _loc2_;
         var g2:int = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(gold_count_2 == 5)
         {
            _loc2_;
            _loc2_;
            g2 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (gold_campaign_2): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted gold_campaign_2");
            }
         },"gold_campaign_2",g2);
         _loc2_;
         _loc2_;
         var g3:int = 0;
         _loc3_;
         if(gold_count_3 == 5)
         {
            _loc3_;
            g3 = 1;
         }
         TimelineGlobal.§_-XW§.stat.put(function(param1:*):*
         {
            if((param1.errorType) || !param1.stat)
            {
               TimelineGlobal.§_-XW§.logError("miniplay stat error (gold_campaign_3): " + param1.errorMessage);
            }
            else
            {
               TimelineGlobal.§_-XW§.logInfo("miniplay submitted gold_campaign_3");
            }
         },"gold_campaign_3",g3);
      }
      
      override public function cleanUp() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-fG§();
         _loc1_;
         _loc1_;
         this.connection = null;
      }
      
      override public function disconnectGameClient() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-fG§();
         _loc2_;
         _loc1_;
         if(this.connection != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.connection.connected)
            {
               _loc1_;
               this.connection.send(this.§_-P0§.§_-GG§("BackToLobby"));
            }
         }
      }
      
      override public function playerQuitsGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         SafeGlobal.game_over_data.§_-6e§ = true;
         SafeGlobal.GAME.hideGameOverObjects();
         SafeGlobal.game_over_data.§_-sA§ = SafeGlobal.GAME.screen;
         Global.lobby_display.displayGameQuitScreen();
         _loc2_;
         SafeGlobal.GAME.destroyGame();
         this.§_-aY§();
         this.connection.send(this.§_-P0§.§_-GG§("PlayerQuitsGame"));
      }
      
      override public function finishGameOver() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         SafeGlobal.GAME.hideGameOverObjects();
         _loc1_;
         _loc1_;
         SafeGlobal.game_over_data.§_-sA§ = SafeGlobal.GAME.screen;
         _loc1_;
         Global.lobby_display.displayGameEndScreen();
         _loc2_;
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
         this.§_-aY§();
         _loc2_;
         _loc2_;
         this.connection.send(this.§_-P0§.§_-GG§("ConfirmPlayingAgain"));
      }
      
      private function §_-1K§(param1:Message, param2:String, param3:String, param4:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(_loc6_ < SafeGlobal.§_-in§.length)
         {
            if(SafeGlobal.§_-in§[_loc6_] == param3)
            {
               _loc8_;
               _loc5_ = true;
               break;
            }
            _loc6_++;
         }
         _loc7_;
         _loc7_;
         if(!_loc5_)
         {
            _loc8_;
            _loc7_;
            if(Global.lobby_display.getGameEnd())
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               Global.lobby_display.displayGameEndChat(param2,param3,param4);
               _loc8_;
            }
            else
            {
               SafeGlobal.GAME.chat.showMessage(param2,param3,param4);
               Global.lobby_display.displayGameEndChat(param2,param3,param4,true);
            }
         }
      }
      
      private function §_-St§(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_STARTWALK,param2,{"walkDir":param3});
      }
      
      private function §_-2M§(param1:Message, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_STOPWALK,param2,null);
      }
      
      private function §_-b8§(param1:Message, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_ENDTURN,param2,null);
      }
      
      private function §_-pc§(param1:Message, param2:int, param3:String, param4:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         SafeGlobal.playerID = param2;
         _loc5_;
         _loc5_;
         SafeGlobal.gameStock = param3;
         if(param4 == -1)
         {
            _loc5_;
            _loc5_;
            SafeGlobal.§_-L8§ = false;
         }
         else
         {
            SafeGlobal.§_-L8§ = true;
            SafeGlobal.§_-1t§ = param4;
            _loc6_;
            _loc6_;
         }
         this.§_-aY§();
         _loc5_;
         this.connection.send(this.§_-P0§.§_-GG§("PlayerReady"));
      }
      
      private function §_-Cq§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:* = "PLAYERS IN ROOM:\n";
         _loc3_;
         _loc3_;
         if(this.§_-wt§.length > 0)
         {
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-wt§.length)
            {
               if(this.§_-wt§[_loc2_] != null)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc1_ = _loc1_ + this.§_-wt§[_loc2_];
                  _loc3_;
                  _loc3_;
                  _loc1_ = _loc1_ + "\n";
                  _loc4_;
                  _loc4_;
               }
               _loc2_++;
               _loc3_;
               _loc3_;
            }
         }
      }
      
      private function §_-LF§(param1:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < Global.player_array.length)
         {
            if(Global.player_array[_loc2_].user_name == param1)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               return true;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         return false;
      }
   }
}
