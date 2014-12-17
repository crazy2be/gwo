package §_-j2§
{
   import com.funkypear.ui.LobbyDisplay;
   import flash.display.Stage;
   import flash.utils.Timer;
   import §_-WX§.§_-A§;
   import _-Po.disconnect;
   import _-5F.multiplayer;
   import _-Jw.createJoinRoom;
   import _-Po.send;
   import _-Po.addMessageHandler;
   import _-Po.addDisconnectHandler;
   import flash.events.TimerEvent;
   import _-Po.connected;
   import playerio.*;
   import §_-8B§.*;
   import §_-Cv§.DataManager;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   import §_-WX§.§switch§;
   import §_-Cv§.§_-x3§;
   import §_-3w§.MD5;
   import _-Jw.listRooms;
   import _-Jw.joinRoom;
   
   public class LobbyClient extends Object
   {
      
      public function LobbyClient(param1:LobbyDisplay, param2:Stage)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.prev_grav_value = new §_-A§(-1);
         super();
         _loc4_;
         _loc4_;
         Global.lobby_client = this;
         _loc3_;
         _loc3_;
         this.lobby_display = param1;
         _loc3_;
         this.stage = param2;
         this.message_to_lobby = new MessageToLobby();
         this.message_from_lobby = new MessageFromLobby();
         this.message_to_waiting = new MessageToWaiting();
         this.message_from_waiting = new MessageFromWaiting();
         _loc4_;
         this.message_to_replay = new MessageToReplay();
         this.message_from_replay = new MessageFromReplay();
         _loc4_;
         _loc4_;
         this.from_browse_games = false;
      }
      
      private var WAITING_AREA_VERSION:String = "WaitingArea";
      
      private var player_connection:Connection;
      
      private var connection:Connection;
      
      private var waiting_connection:Connection;
      
      private var replay_connection:Connection;
      
      private var message_to_lobby:MessageToLobby;
      
      private var message_from_lobby:MessageFromLobby;
      
      private var message_to_waiting:MessageToWaiting;
      
      private var message_from_waiting:MessageFromWaiting;
      
      private var message_to_replay:MessageToReplay;
      
      private var message_from_replay:MessageFromReplay;
      
      private var lobby_display:LobbyDisplay;
      
      private var stage:Stage;
      
      private var from_browse_games:Boolean = false;
      
      private var browse_timer:Timer;
      
      private var last_max_players:int = 0;
      
      private var campaign_room:§_-FE§;
      
      private var custom_room:§_-FE§;
      
      private var room_to_join:§_-FE§;
      
      private var invited_room:§_-FE§;
      
      private var private_room:§_-FE§;
      
      public var game_room:§_-FE§;
      
      private var saved_campaign_key:int = 0;
      
      private var leave_waiting_reason:uint = 0;
      
      private var JOIN_GAME:uint = 0;
      
      private var JOIN_LOBBY:uint = 1;
      
      private var CAMPAIGN_JOIN_FAIL:uint = 2;
      
      private var CUSTOM_JOIN_FAIL:uint = 3;
      
      private var VERSION_CONTROL:uint = 4;
      
      private var FINISH_COUNTDOWN_FAIL:uint = 5;
      
      private var back_to_lobby_reason:uint = 0;
      
      private var JUST_JOINED:uint = 0;
      
      private var FROM_WAITING:uint = 1;
      
      private var FROM_GAME:uint = 2;
      
      private var waiting_area_name:String;
      
      private var player_connect_failed:Boolean = false;
      
      private var ping_timer:Timer;
      
      private var PING_DELAY:int = 20000;
      
      private var waiting_ping_timer:Timer;
      
      private var WAITING_PING_DELAY:int = 5000;
      
      private var graviton_timer:Timer;
      
      private var GRAVITON_DELAY:int = 5000;
      
      private var GRAVITON_LOOPS:int = 40;
      
      private var prev_grav_value:§_-A§;
      
      public function §_-sq§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.ping_timer != null)
         {
            this.ping_timer.stop();
            this.ping_timer = null;
         }
         _loc1_;
         _loc1_;
         if(this.player_connection != null)
         {
            this.player_connection.disconnect();
            this.player_connection = null;
         }
         _loc2_;
         _loc2_;
         if(this.connection != null)
         {
            this.connection.disconnect();
            _loc1_;
            _loc1_;
            this.connection = null;
         }
         this.back_to_lobby_reason = 0;
      }
      
      public function joinLobby() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         var _loc1_:String = "simple" + TimelineGlobal.player_name.toLowerCase();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc3_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_ = "kong" + TimelineGlobal.kong_uid.toLowerCase();
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_ = "miniplay" + TimelineGlobal.§_-iC§.toLowerCase();
         }
         _loc3_;
         if(this.player_connection == null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.CLIENT.multiplayer.createJoinRoom("PLAYER_" + _loc1_,"PlayerConnection",false,{},{},this.handleJoinPlayerConnection,this.handleJoinPlayerConnectionError);
         }
         else
         {
            this.player_connection.send("pc");
            this.finishJoinLobby();
         }
      }
      
      private function handleJoinPlayerConnection(param1:Connection) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.player_connection = param1;
         _loc2_;
         _loc3_;
         _loc2_;
         this.player_connection.addMessageHandler("ac",this.playerConnectSuccess);
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.player_connection.addMessageHandler("rc",this.playerConnectReceive);
         _loc3_;
         _loc2_;
         this.player_connection.addMessageHandler("dc",this.playerConnectFail);
         _loc2_;
         _loc2_;
         this.player_connection.addDisconnectHandler(this.handleDisconnectPlayerConnect);
      }
      
      private function playerConnectReceive(param1:Message) : *
      {
      }
      
      private function handleDisconnectPlayerConnect() : void
      {
      }
      
      private function playerConnectSuccess(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.ping_timer = new Timer(this.PING_DELAY);
         _loc3_;
         this.ping_timer.addEventListener(TimerEvent.TIMER,this.pingPlayerConnect,false,0,true);
         _loc3_;
         this.ping_timer.start();
         _loc2_;
         this.player_connection.send("pc");
         _loc2_;
         _loc2_;
         this.finishJoinLobby();
      }
      
      private function pingPlayerConnect(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.player_connection != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.player_connection.connected)
            {
               _loc2_;
               this.player_connection.send("pc");
            }
         }
      }
      
      private function playerConnectFail(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.player_connect_failed = true;
         _loc3_;
         _loc3_;
         this.player_connection = null;
         _loc3_;
         Global.lobby_display.displayAlreadyConnected();
      }
      
      private function handleJoinPlayerConnectionError(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!this.player_connect_failed)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.displayLobbyScreen(Global.SCREEN_ERROR);
         }
      }
      
      public function finishJoinLobby() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "$service-room$";
         _loc3_;
         _loc3_;
         _loc3_;
         Global.CLIENT.multiplayer.createJoinRoom(_loc1_,"Lobby_" + TimelineGlobal.version_number,true,{},{},this.handleJoinLobby,this.handleJoinLobbyError);
      }
      
      public function rejoinLobby() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.connection == null || this.connection.connected == false)
         {
            _loc1_;
            _loc2_;
            Global.CLIENT.multiplayer.createJoinRoom("$service-room$","Lobby_" + TimelineGlobal.version_number,true,{},{},this.handleJoinLobby,this.handleJoinLobbyError);
            _loc1_;
            _loc1_;
         }
         else
         {
            this.connection.send(this.message_to_lobby.§_-GG§("RequestPlayerList"),TimelineGlobal.player_name);
         }
      }
      
      private function clearGameRoomData() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         SafeGlobal.game_is_over = false;
         SafeGlobal.connected_to_waiting = false;
         this.custom_room = null;
         this.campaign_room = null;
         this.invited_room = null;
         _loc2_;
         _loc2_;
         this.room_to_join = null;
         this.private_room = null;
      }
      
      private function handleJoinLobby(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.connection = param1;
         _loc2_;
         _loc2_;
         this.clearGameRoomData();
         _loc2_;
         SafeGlobal.TIMELINE.startAfkChecking();
         SafeGlobal.connected_to_lobby = true;
         _loc3_;
         SafeGlobal.§_-FY§ = new Array();
         _loc3_;
         Global.lobby_display.lobby_players.displayChatActivated();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("LobbyJoinSuccess"),this.lobbyJoinSuccess);
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("LobbyJoinFail"),this.§_-o1§);
         _loc2_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("InitialData"),this.setInitialData);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("PlayerBanned"),this.displayPlayerBanned);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdateClient"),this.displayUpdateClient);
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("DisplayShopItems"),this.displayShopItems);
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("ShopItemSuccess"),this.shopItemSuccess);
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("ShopItemFail"),this.shopItemFail);
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RefreshCampaignData"),this.refreshCampaignData);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("AwardUnlocked"),this.awardUnlocked);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("ConfirmLevelSave"),this.confirmLevelSave);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("ReloadEditorData"),this.reloadEditorData);
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RefreshCustomMaps"),this.refreshCustomMaps);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("GlobalStats"),this.receiveGlobalStats);
         _loc3_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("CurrentStats"),this.receiveCurrentStats);
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdateGravitons"),this.updateGravitons);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RedeemCodeSuccess"),this.redeemCodeSuccess);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RedeemCodeInvalid"),this.redeemCodeInvalid);
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RedeemCodeError"),this.redeemCodeError);
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RedeemCodeUsed"),this.redeemCodeUsed);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("TeamUpgradeError"),this.teamUpgradeError);
         _loc3_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("WeaponUpgradeError"),this.weaponUpgradeError);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("CustomWeaponError"),this.customWeaponError);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("ReceiveChat"),this.receiveLobbyChat);
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("AddLobbyPlayer"),this.addLobbyPlayer);
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("RemoveLobbyPlayer"),this.removeLobbyPlayer);
         _loc3_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdatePlayerList"),this.updatePlayerList);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("CustomMapsValid"),this.customMapsValid);
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("LatestCustomMaps"),this.handleGetLatestMaps);
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("NewVersion"),this.handleDisplayNewVersion);
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("NewVersionSoon"),this.handleDisplayNewVersionSoon);
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdateGravitonPrices"),this.updateGravitonPrices);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdateGravitonKredsPrices"),this.updateGravitonKredsPrices);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("UpdateGravitonMiniplayPrices"),this.§_-LA§);
         _loc2_;
         _loc2_;
         _loc2_;
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("NewsData"),this.processNewsData);
         this.connection.addMessageHandler(this.message_from_lobby.§_-GG§("LatestChallengeData"),this.§_-as§);
         _loc3_;
         this.connection.addDisconnectHandler(this.handleDisconnectLobby);
         this.connection.addMessageHandler("*",this.handleMessages);
      }
      
      private function §_-LA§(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         Global.lobby_display.panel_miniplay.displayPrices(param2);
      }
      
      private function updateGravitonKredsPrices(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         Global.lobby_display.panel_kreds.displayPrices(param2);
      }
      
      private function updateGravitonPrices(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         Global.lobby_display.panel_buygravitons.displayPrices(param2);
      }
      
      private function handleDisplayNewVersionSoon(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         Global.lobby_display.displayVersionControlComingSoon(param2);
      }
      
      private function handleDisplayNewVersion(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         TimelineGlobal.latest_version = param2;
         _loc4_;
         _loc4_;
         Global.lobby_display.displayVersionControl();
         this.connection.disconnect();
         _loc3_;
         if(this.waiting_connection != null)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.waiting_connection.connected)
            {
               this.leave_waiting_reason = this.VERSION_CONTROL;
               this.waiting_connection.disconnect();
               _loc4_;
               _loc4_;
            }
         }
         _loc3_;
         if(this.player_connection != null)
         {
            _loc3_;
            if(this.player_connection.connected)
            {
               _loc4_;
               _loc4_;
               this.player_connection.disconnect();
            }
         }
      }
      
      private function receiveLobbyChat(param1:Message, param2:String, param3:String, param4:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(true)
         {
            if(_loc6_ >= SafeGlobal.§_-FY§.length)
            {
               _loc7_;
               _loc7_;
               break;
            }
            if(SafeGlobal.§_-FY§[_loc6_] == param3)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc5_ = true;
               _loc7_;
               _loc7_;
               break;
            }
            _loc6_++;
            _loc7_;
         }
         if(!_loc5_)
         {
            _loc7_;
            Global.lobby_display.displayLobbyChat(param2,param3,param4);
         }
      }
      
      public function customWeaponError(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         DataManager.§_-ro§(param2);
      }
      
      public function weaponUpgradeError(param1:Message, param2:String, param3:String) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:* = 0;
         var _loc4_:Array = param3.split("|");
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc5_ = parseInt(_loc4_[0]);
         var _loc6_:String = (parseInt(_loc4_[0])).toString(2);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc5_ = parseInt(_loc4_[1]);
         var _loc7_:String = (parseInt(_loc4_[1])).toString(2);
         _loc8_;
         _loc8_;
         DataManager.§_-kY§(_loc6_.substring(1) + _loc7_.substring(1));
         _loc9_;
         DataManager.§_-mg§(param2);
      }
      
      public function teamUpgradeError(param1:Message, param2:String, param3:String, param4:String) : void
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:Array = null;
         var _loc8_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:String = null;
         _loc5_ = param2.split("#");
         var _loc6_:String = _loc5_[0];
         _loc13_;
         DataManager.§_-HR§(_loc6_);
         var _loc7_:String = _loc5_[1];
         _loc13_;
         DataManager.§_-WC§(_loc7_);
         _loc12_;
         _loc12_;
         DataManager.§_-Q8§(param4);
         _loc12_;
         _loc12_;
         _loc8_ = 0;
         while(true)
         {
            if(_loc8_ >= Global.lobby_players_array.length)
            {
               _loc12_;
               break;
            }
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            if(Global.lobby_players_array[_loc8_].uid == TimelineGlobal.player_uid)
            {
               _loc12_;
               _loc12_;
               Global.lobby_players_array[_loc8_].player_colour = Global.favourite_colour.getInt();
               _loc13_;
               break;
            }
            _loc8_++;
            _loc13_;
         }
         Global.lobby_display.updateLobbyPlayers();
         _loc5_ = param3.split("|");
         var _loc9_:Array = new Array();
         _loc12_;
         _loc12_;
         _loc13_;
         _loc13_;
         _loc8_ = 0;
         while(_loc8_ < _loc5_.length)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc10_ = parseInt(_loc5_[_loc8_]);
            _loc12_;
            _loc12_;
            _loc11_ = (parseInt(_loc5_[_loc8_])).toString(2);
            _loc13_;
            _loc13_;
            _loc9_[_loc8_] = _loc11_.substring(1);
            _loc12_;
            _loc12_;
            _loc8_++;
            _loc12_;
         }
         DataManager.§_-K8§(_loc9_[0]);
         DataManager.§_-DY§(_loc9_[1]);
         DataManager.§_-aB§(_loc9_[2]);
         DataManager.§_-hP§(_loc9_[3]);
      }
      
      public function awardUnlocked(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         DataManager.awardUnlocked(param2);
         _loc4_;
         _loc4_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
         {
            _loc4_;
            this.checkNewgroundsAwards();
         }
      }
      
      private function displayPlayerBanned(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Global.lobby_display.displayBanned();
         _loc2_;
         _loc2_;
         this.connection.disconnect();
         _loc2_;
         if(this.waiting_connection != null)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            if(this.waiting_connection.connected)
            {
               this.leave_waiting_reason = this.VERSION_CONTROL;
               this.waiting_connection.disconnect();
            }
         }
         _loc2_;
         _loc2_;
         if(this.player_connection != null)
         {
            _loc3_;
            _loc3_;
            if(this.player_connection.connected)
            {
               _loc2_;
               this.player_connection.disconnect();
            }
         }
      }
      
      public function §_-O2§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.connection != null)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.connection.connected)
            {
               this.connection.send(this.message_to_lobby.§_-GG§("DeactivateGuest"));
            }
         }
         _loc2_;
         _loc2_;
         if(this.waiting_connection != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.waiting_connection.connected)
            {
               this.leave_waiting_reason = this.VERSION_CONTROL;
               this.waiting_connection.disconnect();
               _loc2_;
               _loc2_;
            }
         }
         _loc2_;
         _loc2_;
         if(this.player_connection != null)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.player_connection.connected)
            {
               _loc2_;
               this.player_connection.disconnect();
            }
         }
         _loc2_;
         _loc2_;
         if(SafeGlobal.game_client != null)
         {
            _loc1_;
            SafeGlobal.game_client.disconnectGameClient();
         }
      }
      
      private function displayUpdateClient(param1:Message, param2:String, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         TimelineGlobal.latest_version = param3;
         Global.lobby_display.displayVersionControl();
         _loc5_;
         this.connection.disconnect();
         _loc5_;
         if(this.waiting_connection != null)
         {
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(this.waiting_connection.connected)
            {
               this.leave_waiting_reason = this.VERSION_CONTROL;
               this.waiting_connection.disconnect();
               _loc4_;
            }
         }
         _loc4_;
         _loc4_;
         if(this.player_connection != null)
         {
            _loc4_;
            _loc4_;
            if(this.player_connection.connected)
            {
               _loc5_;
               this.player_connection.disconnect();
            }
         }
      }
      
      private function displayShopItems(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         Global.lobby_display.panel_shop.§_-1O§(param2,Global.lobby_display.panel_shop.§_-pR§,Global.lobby_display.panel_shop.§_-vh§);
      }
      
      private function redeemCodeSuccess(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         Global.codeUnlockID = param2;
         _loc3_;
         _loc4_;
         if(Global.lobby_display.panel_shop != null)
         {
            _loc3_;
            Global.lobby_display.panel_shop.§_-pK§(param2);
         }
         Global.lobby_display.displayCodeUnlockPanel();
         _loc3_;
         _loc3_;
         _loc4_;
         if(Global.hub_code_panel != null)
         {
            Global.hub_code_panel.§_-Mm§();
         }
      }
      
      private function redeemCodeError(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.codeUnlockID = "ERROR";
         _loc3_;
         _loc3_;
         Global.lobby_display.displayCodeUnlockPanel();
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.hub_code_panel != null)
         {
            _loc3_;
            Global.hub_code_panel.§_-Mm§();
         }
      }
      
      private function redeemCodeInvalid(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         Global.codeUnlockID = "INVALID";
         _loc2_;
         _loc2_;
         Global.lobby_display.displayCodeUnlockPanel();
         _loc3_;
         _loc2_;
         _loc2_;
         if(Global.hub_code_panel != null)
         {
            _loc2_;
            _loc2_;
            Global.hub_code_panel.§_-Mm§();
         }
      }
      
      private function redeemCodeUsed(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.codeUnlockID = "USED";
         _loc3_;
         _loc3_;
         Global.lobby_display.displayCodeUnlockPanel();
         _loc2_;
         _loc2_;
         if(Global.hub_code_panel != null)
         {
            _loc3_;
            _loc3_;
            Global.hub_code_panel.§_-Mm§();
         }
      }
      
      private function updateGravitons(param1:Message, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         Global.coins.setInt(param2);
         Global.lobby_display.lobby_stats.§_-zB§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.prev_grav_value.getInt() != -1)
         {
            _loc4_;
            if(this.prev_grav_value.getInt() != Global.coins.getInt())
            {
               if(this.graviton_timer != null)
               {
                  _loc3_;
                  _loc3_;
                  this.graviton_timer.stop();
                  _loc3_;
                  _loc3_;
                  this.graviton_timer.removeEventListener(TimerEvent.TIMER,this.requestGravitonsOnTimer);
                  _loc4_;
                  this.graviton_timer = null;
                  _loc3_;
                  _loc3_;
               }
               this.prev_grav_value.setInt(-1);
            }
         }
      }
      
      private function shopItemSuccess(param1:Message, param2:String, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         Global.lobby_display.panel_shop.§_-pK§(param2);
         _loc5_;
         _loc5_;
         _loc4_;
         Global.lobby_display.panel_shop.update(false);
         _loc4_;
         _loc4_;
         Global.coins.setInt(param3);
         _loc5_;
         _loc5_;
         _loc5_;
         Global.lobby_display.lobby_stats.§_-zB§();
         _loc5_;
         _loc5_;
         Global.lobby_display.checkShopItemRefresh(param2);
      }
      
      private function shopItemFail(param1:Message, param2:String, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc4_;
         _loc4_;
         Global.lobby_display.panel_shop.update(false);
         _loc4_;
         _loc4_;
         Global.coins.setInt(param3);
         _loc5_;
         _loc5_;
         Global.lobby_display.lobby_stats.§_-zB§();
      }
      
      private function receiveGlobalStats(param1:Message, param2:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Array = param2.split(",");
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_.length)
         {
            Global.global_stats[_loc4_] = _loc3_[_loc4_];
            _loc5_;
            _loc4_++;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         Global.lobby_display.panel_stats.update();
      }
      
      private function receiveCurrentStats(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         Global.§each § = param2;
         _loc4_;
         Global.§_-RP§ = param3;
         _loc4_;
         _loc4_;
         Global.lobby_display.lobby_players.updateLobbyPlayerCount();
      }
      
      private function §_-o1§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_ERROR);
         if(this.ping_timer != null)
         {
            this.ping_timer.stop();
            _loc2_;
            _loc2_;
            this.ping_timer = null;
         }
         _loc2_;
         _loc2_;
         if(this.player_connection != null)
         {
            _loc2_;
            _loc2_;
            this.player_connection.disconnect();
            this.player_connection = null;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         if(this.connection != null)
         {
            _loc3_;
            this.connection.disconnect();
            _loc3_;
            this.connection = null;
         }
      }
      
      private function lobbyJoinSuccess(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         SafeGlobal.connected_to_lobby = true;
         _loc4_;
         Global.lobby_display.lobby_players.displayChatActivated();
         TimelineGlobal.player_uid = param2;
         if(!Global.got_initial_data)
         {
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            this.connection.send(this.message_to_lobby.§_-GG§("RequestInitialData"),TimelineGlobal.player_name,TimelineGlobal.§_-XQ§);
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.connection.send(this.message_to_lobby.§_-GG§("RequestPlayerList"),TimelineGlobal.player_name);
            this.connection.send(this.message_to_lobby.§_-GG§("RequestChallengeData"));
         }
      }
      
      public function replayLastMap() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.replay_last_map != 0)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            if(Global.replay_last_map == 1)
            {
               _loc2_;
               _loc2_;
               this.replayCampaign(SafeGlobal.§_-QS§(parseInt(SafeGlobal.replay_room.CampaignKey)),SafeGlobal.§_-9c§(parseInt(SafeGlobal.replay_room.CampaignKey)),SafeGlobal.game_over_data.§_-8T§);
               _loc3_;
               _loc3_;
            }
            else if(Global.replay_last_map == 2)
            {
               _loc2_;
               _loc2_;
               _loc1_ = false;
               _loc3_;
               if(SafeGlobal.replay_room.Private == "1")
               {
                  _loc2_;
                  _loc1_ = true;
                  _loc3_;
                  _loc3_;
               }
               this.createCustomGame(SafeGlobal.game_over_data.§_-8T§,SafeGlobal.replay_room.MapId,SafeGlobal.replay_room.Thumbnail,parseInt(SafeGlobal.replay_room.MaxPlayers),SafeGlobal.replay_room.Mods,_loc1_,SafeGlobal.replay_room.LevelLimit,SafeGlobal.replay_room.Creator,SafeGlobal.replay_room.TeamBattle,true);
            }
            
         }
         Global.replay_last_map = 0;
      }
      
      private function setInitialData(param1:Message, param2:String, param3:int, param4:int, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String, param14:String, param15:String, param16:int, param17:int, param18:String) : void
      {
         var _loc28_:* = false;
         var _loc29_:* = true;
         var _loc21_:Array = null;
         var _loc22_:String = null;
         var _loc23_:String = null;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = 0;
         var _loc27_:* = 0;
         TimelineGlobal.player_name = param2;
         Global.§each § = param16;
         Global.§_-RP§ = param17;
         DataManager.§_-HR§(param6);
         DataManager.§_-IG§(param7);
         DataManager.§_-Vq§(param8);
         DataManager.§_-mg§(param10);
         DataManager.§_-7U§(param11);
         DataManager.§_-Q8§(param12);
         DataManager.§_-WC§(param5);
         DataManager.§_-ro§(param13);
         DataManager.§_-0I§(param15);
         DataManager.§_-P4§(param18);
         _loc28_;
         DataManager.§_-yM§(param9);
         _loc29_;
         Global.coins.setInt(param4);
         Global.teamXP.setInt(param3);
         _loc28_;
         _loc28_;
         _loc29_;
         _loc29_;
         Global.lobby_display.lobby_stats.§_-X6§(param3);
         _loc28_;
         _loc28_;
         _loc28_;
         Global.lobby_display.lobby_stats.§_-zB§(true);
         _loc28_;
         Global.lobby_display.lobby_stats.setName();
         _loc29_;
         _loc29_;
         Global.lobby_players_array = new Array();
         var _loc19_:Array = param14.split("|");
         var _loc20_:* = 0;
         while(true)
         {
            _loc28_;
            if(_loc20_ >= _loc19_.length)
            {
               break;
            }
            _loc21_ = _loc19_[_loc20_].split(",");
            _loc28_;
            _loc22_ = _loc21_[0];
            _loc23_ = _loc21_[1];
            _loc29_;
            _loc29_;
            _loc29_;
            _loc29_;
            _loc24_ = int(_loc21_[2]);
            _loc28_;
            _loc28_;
            _loc28_;
            _loc25_ = int(_loc21_[3]);
            _loc29_;
            _loc29_;
            _loc28_;
            _loc26_ = int(_loc21_[4]);
            _loc27_ = int(_loc21_[5]);
            _loc28_;
            Global.lobby_players_array.push({
               "uid":_loc22_,
               "player_name":_loc23_,
               "player_colour":_loc24_,
               "player_helmet":_loc25_,
               "player_level":_loc26_,
               "player_status":_loc27_
            });
            _loc29_;
            _loc29_;
            _loc20_++;
         }
         this.sortLobbyPlayers();
         _loc28_;
         _loc29_;
         _loc29_;
         _loc29_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            this.submitInitialKongStats();
         }
         _loc28_;
         _loc29_;
         _loc29_;
         _loc28_;
         _loc28_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
         {
            this.checkNewgroundsAwards();
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            _loc29_;
            this.submitMiniplayStats();
            _loc28_;
            _loc28_;
         }
         DataManager.§_-Wm§();
         this.saveLoginPrefs();
      }
      
      private function sortLobbyPlayers() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         Global.lobby_players_array.sort(this.customSort);
      }
      
      private function customSort(param1:Object, param2:Object) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(param1.player_status == param2.player_status)
         {
            _loc6_;
            _loc6_;
            _loc3_ = param1.player_name.toLowerCase();
            _loc5_;
            _loc4_ = param2.player_name.toLowerCase();
            if(_loc3_ > _loc4_)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               return 1;
            }
            _loc5_;
            return -1;
         }
         if(param1.player_status > param2.player_status)
         {
            _loc6_;
            _loc6_;
            return 1;
         }
         return -1;
      }
      
      private function saveLoginPrefs() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var shared_obj:SharedObject = null;
         _loc3_;
         _loc3_;
         if(Global.§_-UW§ == false)
         {
            try
            {
               _loc4_;
               _loc4_;
               shared_obj = SharedObject.getLocal("LoginPrefs");
               _loc4_;
               _loc4_;
               _loc3_;
               shared_obj.data.username = TimelineGlobal.player_name;
               _loc4_;
               _loc4_;
               shared_obj.flush();
               _loc3_;
               _loc3_;
            }
            catch(e:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_;
               _loc4_;
               shared_obj = SharedObject.getLocal("LoginPrefs");
               _loc3_;
               _loc3_;
               _loc3_;
               shared_obj.data.username = "";
               _loc3_;
               shared_obj.flush();
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function customMapsValid(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.requestNewsData();
      }
      
      public function requestNewsData() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("RequestNewsData"));
      }
      
      public function processNewsData(param1:Message, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         Global.§_-5d§ = param2;
         DataManager.§_-P4§(param3);
         _loc10_;
         SafeGlobal.§_-5k§ = Number(param6);
         _loc10_;
         _loc10_;
         SafeGlobal.§_-56§ = Number(param7);
         _loc9_;
         _loc9_;
         SafeGlobal.§_-QB§ = SafeGlobal.§_-cK§ = Number(getTimer() / 1000);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         if(param4 == 1)
         {
            SafeGlobal.§_-1u§ = false;
         }
         else
         {
            SafeGlobal.§_-1u§ = true;
         }
         if(param5 == 1)
         {
            SafeGlobal.§_-sN§ = false;
            _loc10_;
            _loc10_;
         }
         else
         {
            SafeGlobal.§_-sN§ = true;
            _loc10_;
            _loc10_;
         }
         this.initialDataGot();
      }
      
      public function §_-as§(param1:Message, param2:String, param3:int, param4:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         _loc6_;
         DataManager.§_-P4§(param2);
         _loc6_;
         _loc6_;
         SafeGlobal.§_-5k§ = Number(param3);
         _loc6_;
         SafeGlobal.§_-56§ = Number(param4);
         _loc6_;
         _loc6_;
         SafeGlobal.§_-QB§ = SafeGlobal.§_-cK§ = Number(getTimer() / 1000);
      }
      
      public function initialDataGot() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.got_initial_data = true;
         if(SafeGlobal.helpItemsViewed[0] == false)
         {
            SafeGlobal.§_-1u§ = true;
            _loc1_;
            _loc1_;
            SafeGlobal.§_-sN§ = true;
            _loc2_;
            _loc2_;
            this.lobby_display.init(4);
            _loc1_;
            _loc1_;
         }
         else
         {
            this.lobby_display.init(this.back_to_lobby_reason);
         }
      }
      
      private function addLobbyPlayer(param1:Message, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = 0;
         while(_loc9_ < Global.lobby_players_array.length)
         {
            _loc10_;
            if(Global.lobby_players_array[_loc9_].uid == param2)
            {
               _loc11_;
               _loc11_;
               Global.lobby_players_array[_loc9_].player_name = param3;
               _loc11_;
               _loc10_;
               _loc10_;
               Global.lobby_players_array[_loc9_].player_colour = param4;
               _loc11_;
               Global.lobby_players_array[_loc9_].player_helmet = param5;
               _loc10_;
               _loc11_;
               _loc11_;
               Global.lobby_players_array[_loc9_].player_level = param6;
               _loc11_;
               Global.lobby_players_array[_loc9_].player_status = param7;
               _loc10_;
               _loc10_;
               _loc8_ = true;
               _loc10_;
               break;
            }
            _loc9_++;
            _loc11_;
         }
         if(!_loc8_)
         {
            Global.lobby_players_array.push({
               "uid":param2,
               "player_name":param3,
               "player_colour":param4,
               "player_helmet":param5,
               "player_level":param6,
               "player_status":param7
            });
         }
         this.sortLobbyPlayers();
         Global.lobby_display.updateLobbyPlayers();
      }
      
      private function removeLobbyPlayer(param1:Message, param2:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = "";
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(true)
         {
            if(_loc5_ >= Global.lobby_players_array.length)
            {
               _loc6_;
               break;
            }
            _loc7_;
            _loc7_;
            _loc7_;
            if(Global.lobby_players_array[_loc5_].uid == param2)
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc3_ = Global.lobby_players_array[_loc5_].player_name;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc4_ = Global.lobby_players_array[_loc5_].player_colour;
               Global.lobby_players_array.splice(_loc5_,1);
               _loc6_;
               _loc6_;
               break;
            }
            _loc5_++;
         }
         this.sortLobbyPlayers();
         _loc6_;
         _loc6_;
         Global.lobby_display.updateLobbyPlayers();
      }
      
      private function updatePlayerList(param1:Message, param2:String, param3:int, param4:int) : void
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         _loc14_;
         _loc14_;
         Global.§each § = param3;
         _loc14_;
         _loc14_;
         Global.§_-RP§ = param4;
         _loc15_;
         Global.lobby_players_array.length = 0;
         _loc15_;
         _loc15_;
         Global.lobby_players_array = new Array();
         var _loc5_:Array = param2.split("|");
         var _loc6_:* = 0;
         while(true)
         {
            _loc15_;
            _loc15_;
            if(_loc6_ >= _loc5_.length)
            {
               break;
            }
            _loc7_ = _loc5_[_loc6_].split(",");
            _loc15_;
            _loc8_ = _loc7_[0];
            _loc9_ = _loc7_[1];
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc10_ = int(_loc7_[2]);
            _loc15_;
            _loc11_ = int(_loc7_[3]);
            _loc14_;
            _loc12_ = int(_loc7_[4]);
            _loc15_;
            _loc15_;
            _loc13_ = int(_loc7_[5]);
            _loc15_;
            _loc15_;
            Global.lobby_players_array.push({
               "uid":_loc8_,
               "player_name":_loc9_,
               "player_colour":_loc10_,
               "player_helmet":_loc11_,
               "player_level":_loc12_,
               "player_status":_loc13_
            });
            _loc15_;
            _loc15_;
            _loc6_++;
         }
         this.sortLobbyPlayers();
         _loc14_;
         Global.lobby_display.updateLobbyPlayers();
         if(Global.replay_last_map != 0)
         {
            this.back_to_lobby_reason = 3;
            _loc14_;
         }
         if(SafeGlobal.game_was_disconnected == true)
         {
            _loc15_;
            this.back_to_lobby_reason = 5;
            SafeGlobal.game_was_disconnected = false;
            _loc14_;
            _loc14_;
         }
         this.lobby_display.init(this.back_to_lobby_reason);
      }
      
      private function refreshCampaignData(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         DataManager.§_-IG§(param2);
         _loc4_;
         _loc4_;
         this.lobby_display.refreshCampaignData();
      }
      
      private function confirmLevelSave(param1:Message, param2:String, param3:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc7_;
         var _loc4_:String = this.StripKeyFromCustomMap(param2);
         _loc6_;
         _loc6_;
         var _loc5_:String = this.GetKeyFromCustomMap(param2);
         _loc6_;
         Global.custom_maps[param3] = new §switch§(_loc5_,_loc4_);
         _loc7_;
         _loc7_;
         DataManager.§_-Zd§();
      }
      
      private function GetKeyFromCustomMap(param1:String) : String
      {
         var _loc2_:Array = param1.split("|");
         var _loc3_:String = _loc2_[_loc2_.length - 1];
         return _loc3_;
      }
      
      private function StripKeyFromCustomMap(param1:String) : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = param1.split("|");
         _loc5_;
         _loc2_.pop();
         var _loc3_:String = _loc2_.join("|");
         return _loc3_;
      }
      
      private function reloadEditorData(param1:Message, param2:String, param3:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         _loc6_;
         if(param2 == "0")
         {
            _loc6_;
            _loc7_;
            _loc7_;
            Global.custom_maps[param3] = null;
            _loc7_;
            if(Global.EDITOR != null)
            {
               _loc6_;
               _loc6_;
               Global.EDITOR.reloadLevelData("");
            }
         }
         else
         {
            _loc6_;
            _loc7_;
            _loc7_;
            _loc4_ = this.StripKeyFromCustomMap(param2);
            _loc6_;
            _loc6_;
            _loc5_ = this.GetKeyFromCustomMap(param2);
            _loc7_;
            _loc7_;
            Global.custom_maps[param3] = new §switch§(_loc5_,_loc4_);
            _loc7_;
            _loc7_;
            if(Global.EDITOR != null)
            {
               Global.EDITOR.reloadLevelData(_loc4_);
            }
         }
      }
      
      private function refreshCustomMaps(param1:Message, param2:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         DataManager.refreshCustomMaps(param2);
         _loc4_;
         if(Global.got_initial_data == false)
         {
            _loc3_;
            _loc3_;
            this.requestNewsData();
         }
      }
      
      private function handleDisconnectLobby() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         SafeGlobal.connected_to_lobby = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_players.displayChatDeactivated();
         _loc2_;
         _loc2_;
         Global.lobby_players_array.length = 0;
         _loc2_;
         _loc2_;
         Global.lobby_display.updateLobbyPlayers();
         _loc2_;
         SafeGlobal.TIMELINE.stopAfkChecking();
      }
      
      private function tryJoinWaitingArea() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.campaign_room != null)
         {
            this.finishCreateCampaignGame();
            _loc2_;
            _loc2_;
         }
         if(this.custom_room != null)
         {
            this.finishCreateCustomGame();
            _loc2_;
         }
         if(this.room_to_join != null)
         {
            _loc2_;
            _loc2_;
            this.finishJoinSpecificGame();
         }
         if(this.invited_room != null)
         {
            _loc2_;
            this.finishJoinInvitedGame();
         }
         if(this.private_room != null)
         {
            _loc2_;
            this.finishJoinPrivateGame();
         }
      }
      
      public function checkCustomMaps(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.connection.send(this.message_to_lobby.§_-GG§("CheckCustomMaps"),param1);
      }
      
      public function sendLobbyChat(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1.slice(0,5) == "/mute" && !(param1.indexOf(" ") == -1))
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc2_ = param1.split(" ");
            _loc5_;
            _loc6_;
            if(_loc2_[0] == "/mute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
            {
               _loc6_;
               _loc6_;
               if(_loc2_[1] == TimelineGlobal.player_name)
               {
                  _loc6_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.displayLobbyChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
               }
               else if(this.getLobbyPlayerExists(_loc2_[1]))
               {
                  _loc6_;
                  _loc6_;
                  SafeGlobal.§_-FY§.push(_loc2_[1]);
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  Global.lobby_display.displayLobbyChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  Global.lobby_display.displayLobbyChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
               }
               
            }
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(param1.slice(0,7) == "/unmute" && !(param1.indexOf(" ") == -1))
            {
               _loc2_ = param1.split(" ");
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc6_;
               if(_loc2_[0] == "/unmute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
               {
                  _loc6_;
                  _loc6_;
                  _loc3_ = false;
                  _loc5_;
                  _loc5_;
                  _loc4_ = SafeGlobal.§_-FY§.length;
                  while(_loc4_ >= 0)
                  {
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     if(SafeGlobal.§_-FY§[_loc4_] == _loc2_[1])
                     {
                        _loc6_;
                        _loc6_;
                        SafeGlobal.§_-FY§.splice(_loc4_,1);
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc3_ = true;
                     }
                     _loc5_;
                     _loc5_;
                     _loc4_--;
                  }
                  _loc5_;
                  _loc5_;
                  if(_loc3_)
                  {
                     _loc5_;
                     _loc5_;
                     Global.lobby_display.displayLobbyChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                  }
               }
            }
            else
            {
               this.connection.send(this.message_to_lobby.§_-GG§("SendChat"),param1);
            }
         }
      }
      
      public function saveHelpItemViewed(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SafeGlobal.helpItemsViewed[param1] = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.connection != null)
         {
            _loc3_;
            _loc2_;
            if(this.connection.connected)
            {
               _loc3_;
               _loc3_;
               this.connection.send(this.message_to_lobby.§_-GG§("SaveHelpItem"),param1);
            }
         }
      }
      
      public function saveCustomWeapon(param1:String, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         if(param1 != SafeGlobal.custom_weapon_string[param2])
         {
            _loc3_;
            _loc3_;
            SafeGlobal.custom_weapon_string[param2] = param1;
            _loc4_;
            _loc4_;
            this.connection.send(this.message_to_lobby.§_-GG§("SaveCustomWeapon"),param1,param2);
         }
      }
      
      public function redeemCode(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("RedeemCode"),param1);
      }
      
      public function refreshGlobalStats() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("RefreshGlobalStats"));
      }
      
      public function refreshCurrentStats() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.connection != null)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.connection.connected)
            {
               _loc1_;
               this.connection.send(this.message_to_lobby.§_-GG§("RefreshCurrentStats"));
            }
         }
      }
      
      public function clickedCredits() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(§_-x3§.awards[89].award_complete == 0)
         {
            _loc1_;
            _loc1_;
            this.connection.send(this.message_to_lobby.§_-GG§("ClickedCredits"));
         }
      }
      
      public function saveCreditsAction() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(§_-x3§.awards[95].award_complete == 0)
         {
            _loc2_;
            this.connection.send(this.message_to_lobby.§_-GG§("CreditsAction"));
         }
      }
      
      public function submittedReplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(§_-x3§.awards[87].award_complete == 0)
         {
            _loc1_;
            _loc1_;
            this.connection.send(this.message_to_lobby.§_-GG§("SubmittedReplay"));
         }
      }
      
      public function checkEditorMD5(param1:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = Global.custom_maps[param1].mapData;
         var _loc3_:String = Global.custom_maps[param1].mapKey;
         _loc6_;
         _loc6_;
         var _loc4_:String = MD5.hash(_loc2_ + _loc3_);
         _loc6_;
         _loc6_;
         this.connection.send(this.message_to_lobby.§_-GG§("CheckEditorMD5"),param1,_loc4_);
      }
      
      public function loadShopItems() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.connection.send(this.message_to_lobby.§_-GG§("LoadShopItems"));
      }
      
      public function loadGravitonPrices() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.message_to_lobby.§_-GG§("LoadGravitonPrices"));
      }
      
      public function loadGravitonKredsPrices() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.message_to_lobby.§_-GG§("LoadGravitonKredsPrices"));
      }
      
      public function §_-S7§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.connection.send(this.message_to_lobby.§_-GG§("LoadGravitonMiniplayPrices"));
      }
      
      public function buyShopItem(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.connection.send(this.message_to_lobby.§_-GG§("BuyShopItem"),param1);
      }
      
      public function tryBuyGravitons(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("TrackPaymentStarted"),param1);
      }
      
      public function tryBuyGravitonsKreds(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var amount:int = param1;
         _loc3_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc4_;
            TimelineGlobal.KONG.mtx.purchaseItems(["coins" + amount],function(param1:Object):*
            {
               if(param1.success)
               {
                  requestUpdateGravitons(true);
               }
            });
         }
      }
      
      public function §_-z4§(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var item_to_buy:Object = null;
         var amount:int = param1;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(amount == 500)
            {
               _loc3_;
               _loc4_;
               _loc3_;
               _loc3_;
               item_to_buy = {"gravitons_500":1};
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc3_;
               _loc3_;
               if(amount == 10500)
               {
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc4_;
                  _loc3_;
                  item_to_buy = {"gravitons_10500":1};
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(amount == 22000)
                  {
                     _loc4_;
                     _loc4_;
                     item_to_buy = {"gravitons_22000":1};
                  }
                  else
                  {
                     item_to_buy = null;
                  }
               }
            }
            if(item_to_buy != null)
            {
               _loc4_;
               TimelineGlobal.§_-XW§.item.buy(function(param1:*):*
               {
                  var _loc2_:* = undefined;
                  if(param1.errorType == "CANCELLED")
                  {
                     TimelineGlobal.§_-XW§.logError("User cancelled");
                  }
                  else if((param1.errorType) || !param1.success)
                  {
                     TimelineGlobal.§_-XW§.logError("Something went wrong: " + param1.errorMessage);
                  }
                  else
                  {
                     TimelineGlobal.§_-XW§.logInfo("Items purchased:");
                     _loc2_ = 0;
                     while(_loc2_ < param1.items.length)
                     {
                        TimelineGlobal.§_-XW§.logInfo("Item " + param1.items[_loc2_].uid + ":" + param1.items[_loc2_].qty + " units bought / new stock: " + param1.items[_loc2_].stock);
                        _loc2_++;
                     }
                  }
                  
               },item_to_buy);
            }
         }
      }
      
      private function submitMiniplayStats() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         var i:int = 0;
         _loc2_;
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
         var award_count:int = 0;
         _loc2_;
         _loc2_;
         i = 0;
         while(i < §_-x3§.awards.length)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(§_-x3§.awards[i].award_complete == 1)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               award_count++;
               _loc2_;
               _loc2_;
            }
            _loc3_;
            _loc3_;
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
         _loc3_;
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
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         var replay_count:int = 0;
         _loc3_;
         if(§_-x3§.awards[87].award_complete == 1)
         {
            _loc2_;
            _loc3_;
            replay_count = 1;
            _loc3_;
            _loc3_;
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
         _loc3_;
         _loc3_;
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
         var complete_count_1:int = 0;
         _loc2_;
         _loc2_;
         var complete_count_2:int = 0;
         _loc2_;
         var complete_count_3:int = 0;
         var gold_count_1:int = 0;
         var gold_count_2:int = 0;
         var gold_count_3:int = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         var medals_1:Array = SafeGlobal.campaigns[0].medals;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         var medals_2:Array = SafeGlobal.campaigns[1].medals;
         var medals_3:Array = SafeGlobal.campaigns[2].medals;
         i = 0;
         while(true)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(i >= 5)
            {
               break;
            }
            _loc2_;
            _loc2_;
            if(medals_1[i] == 1)
            {
               _loc3_;
               _loc3_;
               gold_count_1++;
            }
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(!(medals_1[i] == 0) && !(medals_1[i] == 5))
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               complete_count_1++;
            }
            _loc2_;
            _loc2_;
            if(medals_2[i] == 1)
            {
               _loc3_;
               _loc3_;
               gold_count_2++;
               _loc3_;
               _loc3_;
            }
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(medals_2[i] == 0) && !(medals_2[i] == 5))
            {
               _loc2_;
               _loc2_;
               complete_count_2++;
               _loc2_;
            }
            _loc2_;
            if(medals_3[i] == 1)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               gold_count_3++;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(medals_3[i] == 0) && !(medals_3[i] == 5))
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               complete_count_3++;
               _loc3_;
            }
            _loc3_;
            _loc3_;
            _loc3_;
            i++;
         }
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         var c1:int = 0;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(complete_count_1 == 5)
         {
            _loc2_;
            _loc2_;
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
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         var c2:int = 0;
         if(complete_count_2 == 5)
         {
            c2 = 1;
            _loc2_;
            _loc2_;
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
         _loc3_;
         var c3:int = 0;
         _loc2_;
         if(complete_count_3 == 5)
         {
            c3 = 1;
            _loc3_;
            _loc3_;
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
         _loc2_;
         var g1:int = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(gold_count_1 == 5)
         {
            _loc2_;
            _loc2_;
            g1 = 1;
            _loc2_;
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
         var g2:int = 0;
         _loc3_;
         _loc2_;
         _loc2_;
         if(gold_count_2 == 5)
         {
            _loc3_;
            _loc3_;
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
         var g3:int = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(gold_count_3 == 5)
         {
            _loc2_;
            _loc2_;
            g3 = 1;
            _loc3_;
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
      
      private function checkNewgroundsAwards() : void
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
         _loc11_;
         if(TimelineGlobal.§_-3Q§ == true)
         {
            _loc12_;
            _loc12_;
            _loc1_ = 0;
            _loc12_;
            _loc2_ = 0;
            _loc11_;
            _loc11_;
            _loc3_ = 0;
            _loc12_;
            _loc4_ = 0;
            _loc11_;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = SafeGlobal.campaigns[0].medals;
            _loc8_ = SafeGlobal.campaigns[1].medals;
            _loc9_ = SafeGlobal.campaigns[2].medals;
            _loc11_;
            _loc11_;
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
                  _loc11_;
                  _loc11_;
                  _loc4_++;
               }
               _loc11_;
               _loc11_;
               if(!(_loc7_[_loc10_] == 0) && !(_loc7_[_loc10_] == 5))
               {
                  _loc11_;
                  _loc11_;
                  _loc1_++;
                  _loc11_;
               }
               if(_loc8_[_loc10_] == 1)
               {
                  _loc5_++;
               }
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               if(!(_loc8_[_loc10_] == 0) && !(_loc8_[_loc10_] == 5))
               {
                  _loc2_++;
               }
               if(_loc9_[_loc10_] == 1)
               {
                  _loc6_++;
               }
               _loc11_;
               _loc11_;
               if(!(_loc9_[_loc10_] == 0) && !(_loc9_[_loc10_] == 5))
               {
                  _loc3_++;
               }
               _loc10_++;
               _loc11_;
            }
            _loc10_ = 0;
            while(_loc10_ < API.medals.length)
            {
               _loc11_;
               _loc11_;
               if(API.medals[_loc10_].unlocked == false)
               {
                  _loc12_;
                  _loc12_;
                  if(API.medals[_loc10_].id == 37033)
                  {
                     _loc12_;
                     if(§_-x3§.awards[84].award_complete == 1)
                     {
                        _loc12_;
                        _loc12_;
                        API.unlockMedal("I Have The Power");
                     }
                  }
                  else
                  {
                     _loc12_;
                     _loc12_;
                     if(API.medals[_loc10_].id == 37034)
                     {
                        _loc11_;
                        _loc12_;
                        if(§_-x3§.awards[87].award_complete == 1)
                        {
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
                           _loc12_;
                           if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                           {
                              _loc12_;
                              _loc12_;
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
                              _loc12_;
                              _loc11_;
                              if(Global.other_stats[Global.§_-Z-§] >= 2)
                              {
                                 API.unlockMedal("Fortnight of Fear");
                                 _loc11_;
                                 _loc11_;
                              }
                           }
                           else
                           {
                              _loc11_;
                              _loc11_;
                              if(API.medals[_loc10_].id == 37037)
                              {
                                 _loc11_;
                                 _loc11_;
                                 if(_loc3_ >= 5)
                                 {
                                    _loc12_;
                                    _loc12_;
                                    API.unlockMedal("Galactic Champion");
                                    _loc12_;
                                 }
                              }
                              else
                              {
                                 _loc11_;
                                 if(API.medals[_loc10_].id == 37036)
                                 {
                                    _loc11_;
                                    _loc11_;
                                    _loc11_;
                                    _loc11_;
                                    if(_loc2_ >= 5)
                                    {
                                       API.unlockMedal("Galactic Defender");
                                    }
                                 }
                                 else
                                 {
                                    _loc11_;
                                    _loc11_;
                                    if(API.medals[_loc10_].id == 37035)
                                    {
                                       _loc12_;
                                       _loc12_;
                                       if(_loc1_ >= 5)
                                       {
                                          API.unlockMedal("Galactic Explorer");
                                       }
                                    }
                                    else if(API.medals[_loc10_].id == 37038)
                                    {
                                       _loc12_;
                                       if(Global.other_stats[Global.§_-1l§] >= 10)
                                       {
                                          API.unlockMedal("Recurring Nightmare");
                                          _loc11_;
                                       }
                                    }
                                    else
                                    {
                                       _loc12_;
                                       if(API.medals[_loc10_].id == 37044)
                                       {
                                          _loc11_;
                                          _loc11_;
                                          if(§_-x3§.awards[97].award_complete == 1)
                                          {
                                             _loc12_;
                                             API.unlockMedal("Drawn and Quartered");
                                             _loc12_;
                                          }
                                       }
                                       else
                                       {
                                          _loc11_;
                                          _loc11_;
                                          if(API.medals[_loc10_].id == 37043)
                                          {
                                             _loc12_;
                                             _loc12_;
                                             _loc12_;
                                             if(_loc6_ >= 5)
                                             {
                                                _loc11_;
                                                _loc11_;
                                                API.unlockMedal("Golden Champion");
                                                _loc12_;
                                             }
                                          }
                                          else if(API.medals[_loc10_].id == 37042)
                                          {
                                             if(_loc5_ >= 5)
                                             {
                                                API.unlockMedal("Golden Defender");
                                             }
                                          }
                                          else
                                          {
                                             _loc12_;
                                             _loc12_;
                                             _loc11_;
                                             _loc11_;
                                             if(API.medals[_loc10_].id == 37041)
                                             {
                                                if(_loc4_ >= 5)
                                                {
                                                   API.unlockMedal("Golden Explorer");
                                                }
                                             }
                                             else
                                             {
                                                _loc12_;
                                                if(API.medals[_loc10_].id == 37047)
                                                {
                                                   if(Global.getLevel(Global.teamXP.getInt()) >= 25)
                                                   {
                                                      _loc12_;
                                                      _loc12_;
                                                      API.unlockMedal("No Longer A Noob");
                                                   }
                                                }
                                                else if(API.medals[_loc10_].id == 37045)
                                                {
                                                   _loc12_;
                                                   _loc12_;
                                                   _loc11_;
                                                   _loc11_;
                                                   if(§_-x3§.awards[98].award_complete == 1)
                                                   {
                                                      _loc11_;
                                                      _loc11_;
                                                      API.unlockMedal("Half Way There");
                                                   }
                                                }
                                                else
                                                {
                                                   _loc12_;
                                                   _loc12_;
                                                   if(API.medals[_loc10_].id == 37048)
                                                   {
                                                      _loc12_;
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
                                                         _loc12_;
                                                         if(§_-x3§.awards[99].award_complete == 1)
                                                         {
                                                            API.unlockMedal("Now It\'s 100%");
                                                            _loc11_;
                                                            _loc11_;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc12_;
                                                         _loc12_;
                                                         if(API.medals[_loc10_].id == 37049)
                                                         {
                                                            if(Global.getLevel(Global.teamXP.getInt()) >= 75)
                                                            {
                                                               _loc11_;
                                                               _loc11_;
                                                               API.unlockMedal("Pwning The Galaxy");
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
                                                                  _loc11_;
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
               }
               _loc10_++;
               _loc11_;
               _loc11_;
            }
         }
      }
      
      private function submitInitialKongStats() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            TimelineGlobal.KONG.stats.submit("initialized",1);
            _loc6_;
            TimelineGlobal.KONG.stats.submit("weapons_used",Global.game_stats[Global.STAT_SHOTS_TAKEN]);
            TimelineGlobal.KONG.stats.submit("enemies_killed",Global.game_stats[Global.STAT_ENEMIES_KILLED]);
            TimelineGlobal.KONG.stats.submit("gold_medals",Global.other_stats[Global.OSTAT_GOLD_MEDALS]);
            _loc6_;
            _loc6_;
            TimelineGlobal.KONG.stats.submit("silver_medals",Global.other_stats[Global.OSTAT_SILVER_MEDALS]);
            TimelineGlobal.KONG.stats.submit("bronze_medals",Global.other_stats[Global.OSTAT_BRONZE_MEDALS]);
            TimelineGlobal.KONG.stats.submit("iron_medals",Global.other_stats[Global.OSTAT_IRON_MEDALS]);
            TimelineGlobal.KONG.stats.submit("daily_awards",Global.other_stats[Global.§_-1l§]);
            TimelineGlobal.KONG.stats.submit("weekly_awards",Global.other_stats[Global.§_-Z-§]);
            TimelineGlobal.KONG.stats.submit("weapons_unlocked",Global.other_stats[Global.OSTAT_WEAPONS_UNLOCKED]);
            TimelineGlobal.KONG.stats.submit("player_level",Global.getLevel(Global.teamXP.getInt()));
            _loc6_;
            _loc1_ = 0;
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
               _loc6_;
               if(§_-x3§.awards[_loc2_].award_complete == 1)
               {
                  _loc6_;
                  _loc1_++;
               }
               _loc2_++;
               _loc6_;
            }
            TimelineGlobal.KONG.stats.submit("awards_unlocked",_loc1_);
            _loc6_;
            _loc3_ = 0;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               _loc6_;
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
                     _loc7_;
                     _loc7_;
                     _loc3_++;
                  }
                  _loc5_++;
               }
               _loc4_++;
            }
            TimelineGlobal.KONG.stats.submit("campaign_missions_complete",_loc3_);
         }
      }
      
      public function requestGravitonsOnTimer(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.connection != null)
         {
            _loc2_;
            _loc2_;
            if(this.connection.connected)
            {
               this.connection.send(this.message_to_lobby.§_-GG§("RequestUpdateGravitons"));
            }
            else if(this.graviton_timer != null)
            {
               _loc2_;
               _loc2_;
               this.graviton_timer.stop();
               this.graviton_timer.removeEventListener(TimerEvent.TIMER,this.requestGravitonsOnTimer);
               this.graviton_timer = null;
               _loc3_;
            }
            
         }
         else if(this.graviton_timer != null)
         {
            _loc2_;
            _loc2_;
            this.graviton_timer.stop();
            this.graviton_timer.removeEventListener(TimerEvent.TIMER,this.requestGravitonsOnTimer);
            _loc3_;
            this.graviton_timer = null;
         }
         
      }
      
      public function requestUpdateGravitons(param1:Boolean = false) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            _loc2_;
            this.prev_grav_value.setInt(Global.coins.getInt());
            _loc2_;
            _loc2_;
            this.graviton_timer = new Timer(this.GRAVITON_DELAY,this.GRAVITON_LOOPS);
            this.graviton_timer.addEventListener(TimerEvent.TIMER,this.requestGravitonsOnTimer,false,0,true);
            _loc3_;
            this.graviton_timer.start();
            _loc2_;
            _loc2_;
         }
         this.connection.send(this.message_to_lobby.§_-GG§("RequestUpdateGravitons"));
      }
      
      public function deleteEditorSlot(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.custom_maps.splice(param1,1);
         _loc3_;
         _loc3_;
         this.connection.send(this.message_to_lobby.§_-GG§("DeleteLevel"),param1);
         _loc2_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_EDITOR_SLOTS,true);
      }
      
      public function submitLevel(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("SubmitLevel"),param1,Global.selected_map_slot);
         _loc3_;
         Global.custom_maps[Global.selected_map_slot] = new §switch§("",param1);
      }
      
      public function replayCampaign(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         this.saved_campaign_key = SafeGlobal.§_-oX§(param1,param2);
         _loc5_;
         this.startNewCampaign(this.saved_campaign_key,param3);
      }
      
      public function startCampaign(param1:int, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.clearGameRoomData();
         var _loc3_:Object = new Object();
         _loc5_;
         this.saved_campaign_key = SafeGlobal.§_-oX§(param1,param2);
         _loc4_;
         _loc3_.CampaignKey = this.saved_campaign_key;
         _loc4_;
         _loc4_;
         Global.CLIENT.multiplayer.listRooms(this.WAITING_AREA_VERSION,_loc3_,20,0,this.handleGetCampaignRooms,this.handleGetCampaignRoomsError);
      }
      
      private function handleGetCampaignRooms(param1:Array) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = 0;
         var _loc2_:* = false;
         var _loc3_:* = -1;
         var _loc4_:* = 36;
         _loc7_;
         if(param1.length > 0)
         {
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            while(true)
            {
               _loc7_;
               if(_loc5_ >= param1.length)
               {
                  break;
               }
               _loc6_;
               _loc6_;
               if(param1[_loc5_].onlineUsers < _loc4_)
               {
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  _loc3_ = _loc5_;
                  _loc6_;
                  _loc4_ = param1[_loc5_].onlineUsers;
               }
               _loc5_++;
               _loc6_;
            }
            _loc7_;
            _loc7_;
         }
         if(_loc3_ != -1)
         {
            _loc6_;
            this.joinSpecificGame(param1[_loc3_].id,param1[_loc3_].data.MapId,param1[_loc3_].data.Thumbnail,param1[_loc3_].data.Mods,param1[_loc3_].data.MaxPlayers,param1[_loc3_].data.Private,param1[_loc3_].data.TeamBattle);
            _loc6_;
            _loc6_;
            _loc2_ = true;
         }
         if(!_loc2_)
         {
            _loc6_;
            _loc6_;
            this.startNewCampaign(this.saved_campaign_key);
         }
      }
      
      private function startNewCampaign(param1:int, param2:String = "") : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         this.campaign_room = new §_-FE§();
         if(param2 != "")
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.campaign_room.RoomName = param2;
            _loc6_;
         }
         else
         {
            _loc5_;
            _loc5_;
            this.campaign_room.RoomName = Global.§_-Z6§();
         }
         _loc6_;
         this.campaign_room.MapId = String(param1);
         _loc6_;
         _loc6_;
         this.campaign_room.CampaignKey = String(param1);
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-QS§(param1);
         _loc5_;
         _loc5_;
         var _loc4_:int = SafeGlobal.§_-9c§(param1);
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.campaign_room.Thumbnail = SafeGlobal.campaigns[_loc3_].thumbs[_loc4_];
         _loc5_;
         _loc6_;
         _loc6_;
         this.campaign_room.Mods = SafeGlobal.campaigns[_loc3_].mods[_loc4_];
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         this.campaign_room.Private = "0";
         _loc5_;
         this.campaign_room.TeamBattle = "0";
         _loc5_;
         _loc5_;
         this.tryJoinWaitingArea();
      }
      
      public function finishCreateCampaignGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.saveGameRoom(this.campaign_room);
         _loc2_;
         _loc2_;
         Global.CLIENT.multiplayer.createJoinRoom(this.campaign_room.RoomName,this.WAITING_AREA_VERSION,true,{
            "MapId":this.campaign_room.MapId,
            "CampaignKey":this.campaign_room.CampaignKey,
            "Private":"0",
            "LevelLimit":"-1"
         },null,this.handleJoinWaitingArea,this.handleJoinWaitingAreaError);
      }
      
      public function getLatestCustomMaps(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("GetLatestMaps"),param1);
      }
      
      public function handleGetLatestMaps(param1:Message, param2:String) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc3_:Array = new Array();
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(param2 != "")
         {
            _loc4_ = param2.split("%");
            _loc11_;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               _loc8_ = _loc4_[_loc7_].split(";");
               _loc9_ = {
                  "key":_loc8_[0],
                  "thumbnail":_loc8_[1],
                  "created_by":_loc8_[2],
                  "timestamp":_loc8_[3]
               };
               _loc10_;
               _loc3_.push(_loc9_);
               _loc10_;
               _loc10_;
               if(_loc7_ == 0)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc5_ = _loc8_[3];
                  _loc11_;
               }
               if(_loc7_ == _loc4_.length - 1)
               {
                  _loc10_;
                  _loc6_ = _loc8_[3];
                  _loc10_;
               }
               _loc7_++;
            }
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            Global.saved_timestamps[Global.page_id_latest_custom] = _loc5_;
            _loc11_;
            Global.saved_timestamps[Global.page_id_latest_custom + 1] = this.getNextTimestamp(_loc6_);
         }
         this.lobby_display.receiveLatestMapsData(_loc3_);
      }
      
      private function getNextTimestamp(param1:String) : String
      {
         var _loc20_:* = true;
         var _loc21_:* = false;
         var _loc2_:int = int(param1.slice(0,4));
         var _loc3_:int = int(param1.slice(4,6));
         var _loc4_:int = int(param1.slice(6,8));
         var _loc5_:int = int(param1.slice(8,10));
         var _loc6_:int = int(param1.slice(10,12));
         var _loc7_:int = int(param1.slice(12,14));
         var _loc8_:int = int(param1.slice(14));
         _loc21_;
         _loc21_;
         if(_loc8_ > 1000)
         {
            _loc20_;
            _loc8_ = 1000;
         }
         var _loc9_:Date = new Date(_loc2_,_loc3_ - 1,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
         _loc20_;
         _loc20_;
         _loc9_.milliseconds--;
         var _loc10_:String = String(_loc9_.getFullYear());
         var _loc11_:String = String(_loc9_.getMonth() + 1);
         _loc21_;
         if(_loc11_.length == 1)
         {
            _loc21_;
            _loc21_;
            _loc20_;
            _loc20_;
            _loc11_ = String("0" + _loc11_);
         }
         var _loc12_:String = String(_loc9_.getDate());
         _loc21_;
         if(_loc12_.length == 1)
         {
            _loc20_;
            _loc20_;
            _loc21_;
            _loc12_ = String("0" + _loc12_);
         }
         var _loc13_:String = String(_loc9_.getHours());
         _loc20_;
         if(_loc13_.length == 1)
         {
            _loc21_;
            _loc21_;
            _loc13_ = String("0" + _loc13_);
         }
         var _loc14_:String = String(_loc9_.getMinutes());
         _loc20_;
         _loc20_;
         if(_loc14_.length == 1)
         {
            _loc20_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc14_ = String("0" + _loc14_);
         }
         var _loc15_:String = String(_loc9_.getSeconds());
         _loc20_;
         _loc20_;
         if(_loc15_.length == 1)
         {
            _loc21_;
            _loc20_;
            _loc20_;
            _loc15_ = String("0" + _loc15_);
         }
         var _loc16_:String = String(_loc9_.getMilliseconds());
         if(_loc16_.length == 1)
         {
            _loc20_;
            _loc20_;
            _loc21_;
            _loc21_;
            _loc16_ = String("000" + _loc16_);
            _loc20_;
         }
         else if(_loc16_.length == 2)
         {
            _loc20_;
            _loc20_;
            _loc16_ = String("00" + _loc16_);
            _loc21_;
         }
         else if(_loc16_.length == 3)
         {
            _loc20_;
            _loc20_;
            _loc21_;
            _loc21_;
            _loc16_ = String("0" + _loc16_);
         }
         
         
         var _loc17_:String = String(_loc10_);
         _loc21_;
         _loc21_;
         _loc20_;
         _loc20_;
         _loc17_ = _loc17_ + String(_loc11_);
         _loc20_;
         _loc20_;
         _loc20_;
         _loc17_ = _loc17_ + String(_loc11_) + String(_loc12_);
         _loc21_;
         _loc21_;
         _loc20_;
         _loc17_ = _loc17_ + String(_loc11_) + String(_loc12_) + String(_loc13_);
         _loc20_;
         _loc20_;
         _loc17_ = _loc17_ + String(_loc11_) + String(_loc12_) + String(_loc13_) + String(_loc14_);
         _loc20_;
         _loc20_;
         _loc20_;
         _loc17_ = _loc17_ + String(_loc11_) + String(_loc12_) + String(_loc13_) + String(_loc14_) + String(_loc15_);
         _loc20_;
         _loc21_;
         _loc21_;
         _loc17_ = _loc17_ + String(_loc11_) + String(_loc12_) + String(_loc13_) + String(_loc14_) + String(_loc15_) + String(_loc16_);
         return _loc17_;
      }
      
      public function getBrowseGameRooms(param1:int = 0) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = new Object();
         _loc3_;
         _loc4_;
         if(SafeGlobal.browse_games_show_filtered == true)
         {
            _loc2_.Private = "0";
            _loc2_.LevelLimit = String(Math.floor(Global.getLevel(Global.teamXP.getInt()) / 10));
         }
         else if(SafeGlobal.browse_games_hide_campaign == true)
         {
            _loc4_;
            _loc2_.Private = "0";
            _loc2_.LevelLimit = "-1";
            _loc2_.CampaignKey = "0";
            _loc3_;
         }
         else
         {
            _loc2_.Private = "0";
            _loc2_.LevelLimit = "-1";
            _loc3_;
            _loc3_;
         }
         
         Global.CLIENT.multiplayer.listRooms(this.WAITING_AREA_VERSION,_loc2_,10,0,this.handleGetRooms,this.handleGetRoomsError);
      }
      
      private var saved_browse_rooms:Array;
      
      private function filterBrowseGamesRooms(param1:Array) : Array
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = false;
            if(param1[_loc2_].data.Thumbnail == null || param1[_loc2_].data.Thumbnail.length == 0)
            {
               _loc5_;
               param1.splice(_loc2_,1);
               _loc4_;
               _loc4_;
               _loc2_--;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc3_ = true;
               _loc4_;
            }
            if(!_loc3_)
            {
               _loc5_;
               _loc5_;
               if(param1[_loc2_].onlineUsers >= 36)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  param1.splice(_loc2_,1);
                  _loc2_--;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc3_ = true;
               }
            }
            _loc5_;
            _loc5_;
            if(!_loc3_)
            {
               if(param1[_loc2_].onlineUsers == 0)
               {
                  param1.splice(_loc2_,1);
                  _loc2_--;
                  _loc3_ = true;
               }
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         return param1;
      }
      
      public function §_-9R§(param1:Array) : Array
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         var _loc2_:int = param1.length - 1;
         while(_loc2_ >= 0)
         {
            _loc6_;
            _loc6_;
            _loc3_ = Math.floor(Math.random() * (_loc2_ + 1));
            _loc6_;
            _loc5_;
            _loc4_ = param1[_loc3_];
            _loc6_;
            _loc6_;
            _loc5_;
            _loc6_;
            param1[_loc3_] = param1[_loc2_];
            _loc6_;
            _loc6_;
            param1[_loc2_] = _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_--;
         }
         return param1;
      }
      
      private function sortBrowseGamesRooms(param1:Array) : Array
      {
         var _loc25_:* = false;
         var _loc26_:* = true;
         var _loc13_:* = false;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = false;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:* = 0;
         var _loc2_:Array = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_].data.CampaignKey != "0")
            {
               _loc26_;
               _loc26_;
               _loc25_;
               _loc13_ = false;
               _loc25_;
               _loc25_;
               _loc14_ = 0;
               _loc26_;
               while(true)
               {
                  _loc25_;
                  if(_loc14_ >= _loc2_.length)
                  {
                     _loc25_;
                     _loc25_;
                     break;
                  }
                  if(_loc2_[_loc14_].data.CampaignKey == param1[_loc3_].data.CampaignKey)
                  {
                     _loc25_;
                     _loc13_ = true;
                     break;
                  }
                  _loc14_++;
                  _loc26_;
                  _loc26_;
               }
               if(!_loc13_)
               {
                  _loc2_.push(param1[_loc3_]);
               }
            }
            else
            {
               _loc2_.push(param1[_loc3_]);
            }
            _loc3_++;
         }
         var _loc4_:Array = new Array();
         var _loc5_:Array = new Array();
         var _loc6_:Array = new Array();
         var _loc7_:Array = new Array();
         _loc3_ = 0;
         _loc26_;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_].data.CampaignKey != "0")
            {
               _loc26_;
               _loc15_ = parseInt(_loc2_[_loc3_].data.CampaignKey);
               _loc16_ = SafeGlobal.§_-QS§(_loc15_);
               _loc26_;
               _loc17_ = SafeGlobal.§_-9c§(_loc15_);
               _loc25_;
               _loc25_;
               _loc25_;
               _loc25_;
               _loc25_;
               _loc25_;
               if(SafeGlobal.campaigns[_loc16_].unlocked[_loc17_] == 1)
               {
                  _loc25_;
                  _loc25_;
                  _loc25_;
                  _loc18_ = SafeGlobal.campaigns[_loc16_].medals[_loc17_];
                  _loc26_;
                  _loc26_;
                  _loc26_;
                  if(_loc18_ == 0)
                  {
                     _loc18_ = 5;
                     _loc26_;
                  }
                  if(_loc18_ == 1)
                  {
                     _loc25_;
                     _loc6_.push(_loc2_[_loc3_]);
                     _loc25_;
                     _loc25_;
                  }
                  else if(_loc4_.length > 0)
                  {
                     _loc25_;
                     _loc25_;
                     _loc26_;
                     _loc19_ = false;
                     _loc20_ = 0;
                     while(_loc20_ < _loc4_.length)
                     {
                        _loc21_ = parseInt(_loc4_[_loc20_].data.CampaignKey);
                        _loc26_;
                        _loc26_;
                        _loc25_;
                        _loc22_ = SafeGlobal.§_-QS§(_loc21_);
                        _loc25_;
                        _loc23_ = SafeGlobal.§_-9c§(_loc21_);
                        _loc26_;
                        _loc24_ = SafeGlobal.campaigns[_loc22_].medals[_loc23_];
                        _loc26_;
                        _loc26_;
                        if((SafeGlobal.campaigns[_loc22_].medals[_loc23_]) == 0)
                        {
                           _loc25_;
                           _loc24_ = 5;
                        }
                        _loc25_;
                        _loc25_;
                        _loc25_;
                        if(_loc18_ >= _loc24_)
                        {
                           if(_loc20_ == 0)
                           {
                              _loc4_.unshift(_loc2_[_loc3_]);
                           }
                           else
                           {
                              _loc4_.splice(_loc20_ - 1,0,_loc2_[_loc3_]);
                           }
                           _loc26_;
                           _loc26_;
                           _loc19_ = true;
                           _loc26_;
                           _loc26_;
                           break;
                        }
                        _loc20_++;
                        _loc26_;
                        _loc26_;
                     }
                     if(!_loc19_)
                     {
                        _loc4_.push(_loc2_[_loc3_]);
                        _loc25_;
                        _loc25_;
                     }
                  }
                  else
                  {
                     _loc4_.push(_loc2_[_loc3_]);
                     _loc26_;
                  }
                  
               }
               else
               {
                  _loc5_.push(_loc2_[_loc3_]);
               }
            }
            else
            {
               _loc7_.push(_loc2_[_loc3_]);
               _loc25_;
            }
            _loc3_++;
         }
         var _loc8_:Array = new Array();
         var _loc9_:* = 0;
         if(_loc5_.length > _loc7_.length)
         {
            _loc26_;
            _loc26_;
            _loc26_;
            _loc26_;
            _loc9_ = _loc5_.length;
            _loc25_;
         }
         else
         {
            _loc25_;
            _loc25_;
            _loc9_ = _loc7_.length;
            _loc26_;
         }
         _loc25_;
         _loc25_;
         _loc3_ = 0;
         _loc26_;
         _loc26_;
         while(_loc3_ < _loc9_)
         {
            _loc25_;
            _loc25_;
            if(_loc3_ < _loc5_.length)
            {
               _loc8_.push(_loc5_[_loc3_]);
            }
            _loc26_;
            if(_loc3_ < _loc7_.length)
            {
               _loc8_.push(_loc7_[_loc3_]);
            }
            _loc3_++;
         }
         _loc26_;
         _loc26_;
         if(_loc8_.length > 0)
         {
            _loc8_ = this.§_-9R§(_loc8_);
         }
         var _loc10_:Array = new Array();
         var _loc11_:* = 0;
         _loc26_;
         if(_loc4_.length > _loc8_.length)
         {
            _loc26_;
            _loc11_ = _loc4_.length;
         }
         else
         {
            _loc25_;
            _loc11_ = _loc8_.length;
         }
         _loc25_;
         _loc25_;
         _loc3_ = 0;
         while(_loc3_ < _loc11_)
         {
            _loc25_;
            _loc25_;
            if(_loc3_ < _loc4_.length)
            {
               _loc10_.push(_loc4_[_loc3_]);
               _loc25_;
               _loc25_;
            }
            _loc26_;
            if(_loc3_ < _loc8_.length)
            {
               _loc10_.push(_loc8_[_loc3_]);
               _loc25_;
               _loc25_;
            }
            _loc3_++;
         }
         var _loc12_:Array = new Array();
         _loc25_;
         _loc25_;
         _loc3_ = 0;
         while(_loc3_ < _loc10_.length)
         {
            _loc12_.push(_loc10_[_loc3_]);
            if(_loc10_[_loc3_].data.CampaignKey != "0")
            {
               _loc15_ = parseInt(_loc10_[_loc3_].data.CampaignKey);
               _loc26_;
               _loc16_ = SafeGlobal.§_-QS§(_loc15_);
               _loc26_;
               _loc26_;
               _loc17_ = SafeGlobal.§_-9c§(_loc15_);
               _loc26_;
               _loc26_;
               _loc18_ = SafeGlobal.campaigns[_loc16_].medals[_loc17_];
            }
            _loc3_++;
            _loc26_;
            _loc26_;
         }
         _loc26_;
         _loc26_;
         _loc3_ = 0;
         while(_loc3_ < _loc6_.length)
         {
            _loc12_.push(_loc6_[_loc3_]);
            _loc26_;
            _loc26_;
            _loc15_ = parseInt(_loc6_[_loc3_].data.CampaignKey);
            _loc25_;
            _loc25_;
            _loc16_ = SafeGlobal.§_-QS§(_loc15_);
            _loc26_;
            _loc17_ = SafeGlobal.§_-9c§(_loc15_);
            _loc3_++;
         }
         return _loc12_;
      }
      
      private function handleGetRooms(param1:Array) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Object = null;
         var _loc2_:Array = new Array();
         _loc5_;
         _loc5_;
         if(param1.length > 0)
         {
            _loc5_;
            _loc2_ = this.filterBrowseGamesRooms(param1);
         }
         Global.§_-Pv§ = _loc2_.length;
         _loc5_;
         if(SafeGlobal.browse_games_show_filtered == true)
         {
            _loc5_;
            this.lobby_display.receiveBrowseGamesData(_loc2_);
         }
         else
         {
            _loc3_ = new Object();
            _loc5_;
            _loc5_;
            if(SafeGlobal.browse_games_hide_campaign == true)
            {
               _loc3_.Private = "0";
               _loc3_.LevelLimit = String(Math.floor(Global.getLevel(Global.teamXP.getInt()) / 10));
               _loc4_;
            }
            else
            {
               _loc3_.Private = "0";
               _loc3_.LevelLimit = String(Math.floor(Global.getLevel(Global.teamXP.getInt()) / 10));
               _loc4_;
            }
            this.saved_browse_rooms = new Array();
            this.saved_browse_rooms = _loc2_;
            _loc4_;
            _loc4_;
            Global.CLIENT.multiplayer.listRooms(this.WAITING_AREA_VERSION,_loc3_,10,0,this.handleGetSecondRooms,this.handleGetSecondRoomsError);
         }
      }
      
      private function handleGetSecondRooms(param1:Array) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = new Array();
         _loc6_;
         _loc6_;
         _loc5_;
         if(param1.length > 0)
         {
            _loc2_ = this.filterBrowseGamesRooms(param1);
         }
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            this.saved_browse_rooms.push(_loc2_[_loc3_]);
            _loc5_;
            _loc5_;
            _loc3_++;
            _loc6_;
            _loc6_;
         }
         var _loc4_:Array = new Array();
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.saved_browse_rooms.length > 0)
         {
            _loc6_;
            _loc4_ = this.sortBrowseGamesRooms(this.saved_browse_rooms);
         }
         Global.§_-Pv§ = _loc4_.length;
         _loc5_;
         _loc5_;
         this.lobby_display.receiveBrowseGamesData(_loc4_);
      }
      
      public function createCustomGame(param1:String, param2:String, param3:String, param4:int, param5:String, param6:Boolean, param7:String, param8:String, param9:Boolean, param10:Boolean = false) : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         _loc12_;
         this.clearGameRoomData();
         _loc12_;
         _loc12_;
         this.custom_room = new §_-FE§();
         _loc12_;
         _loc12_;
         this.custom_room.RoomName = param1;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         this.custom_room.MapId = param2;
         _loc12_;
         _loc12_;
         _loc12_;
         this.custom_room.Thumbnail = param3;
         this.custom_room.MaxPlayers = String(param4);
         _loc11_;
         this.custom_room.CampaignKey = "0";
         _loc11_;
         _loc11_;
         _loc11_;
         _loc12_;
         this.custom_room.Mods = param5;
         _loc11_;
         _loc12_;
         this.custom_room.Creator = param8;
         _loc12_;
         _loc12_;
         _loc12_;
         if(param9 == true)
         {
            _loc11_;
            _loc11_;
            this.custom_room.TeamBattle = "1";
         }
         else
         {
            _loc12_;
            this.custom_room.TeamBattle = "0";
         }
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         if(param6 == true)
         {
            _loc12_;
            _loc11_;
            _loc11_;
            this.custom_room.Private = "1";
         }
         else if(param10 == true)
         {
            _loc12_;
            _loc12_;
            this.custom_room.Private = "2";
         }
         else
         {
            this.custom_room.Private = "0";
         }
         
         this.custom_room.LevelLimit = param7;
         _loc11_;
         this.tryJoinWaitingArea();
      }
      
      public function finishCreateCustomGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.saveGameRoom(this.custom_room);
         _loc1_;
         Global.CLIENT.multiplayer.createJoinRoom(this.custom_room.RoomName,this.WAITING_AREA_VERSION,true,{
            "MapId":this.custom_room.MapId,
            "MaxPlayers":this.custom_room.MaxPlayers,
            "CampaignKey":this.custom_room.CampaignKey,
            "Mods":this.custom_room.Mods,
            "Private":this.custom_room.Private,
            "LevelLimit":this.custom_room.LevelLimit,
            "Creator":this.custom_room.Creator,
            "TeamBattle":this.custom_room.TeamBattle
         },null,this.handleJoinWaitingArea,this.handleJoinWaitingAreaError);
      }
      
      public function joinGameFromCode(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = new Object();
         _loc3_;
         _loc2_.RoomName = param1;
         _loc3_;
         _loc3_;
         Global.CLIENT.multiplayer.listRooms(this.WAITING_AREA_VERSION,_loc2_,10,0,this.handleGetShareCodeRoom,this.handleGetShareCodeRoomError);
      }
      
      private function handleGetShareCodeRoom(param1:Array) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1.length > 0)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(param1[0].onlineUsers < int(param1[0].data.MaxPlayers))
            {
               _loc2_;
               this.private_room = new §_-FE§();
               _loc3_;
               _loc3_;
               this.private_room.RoomName = param1[0].data.RoomName;
               _loc2_;
               _loc3_;
               _loc3_;
               this.private_room.MapId = param1[0].data.MapId;
               _loc3_;
               this.private_room.Thumbnail = param1[0].data.Thumbnail;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.private_room.MaxPlayers = param1[0].data.MaxPlayers;
               _loc3_;
               _loc3_;
               _loc3_;
               this.private_room.CampaignKey = param1[0].data.CampaignKey;
               this.private_room.Mods = param1[0].data.Mods;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc3_;
               this.private_room.Private = param1[0].data.Private;
               this.private_room.TeamBattle = param1[0].data.TeamBattle;
               _loc2_;
               _loc2_;
               SafeGlobal.selected_level.§_-L6§ = false;
               _loc2_;
               _loc2_;
               _loc2_;
               SafeGlobal.selected_level.is_private = true;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.selected_level.map_id = param1[0].data.MapId;
               _loc2_;
               _loc3_;
               SafeGlobal.selected_level.max_players = parseInt(param1[0].data.MaxPlayers);
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               SafeGlobal.selected_level.mods = param1[0].data.Mods;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.selected_level.room_name = param1[0].data.RoomName;
               _loc3_;
               _loc3_;
               SafeGlobal.selected_level.thumbnail = param1[0].data.Thumbnail;
               if(param1[0].data.TeamBattle == "1")
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  SafeGlobal.selected_level.§_-op§ = true;
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  SafeGlobal.selected_level.§_-op§ = false;
               }
               this.tryJoinWaitingArea();
            }
            else
            {
               _loc2_;
               Global.lobby_display.displayShareCodeLoadingError();
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            Global.lobby_display.displayShareCodeLoadingError();
         }
      }
      
      public function joinSpecificGame(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:Boolean = false) : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var room_name:String = param1;
         _loc11_;
         _loc11_;
         var mapKey:String = param2;
         _loc11_;
         _loc11_;
         var thumbnail:String = param3;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         var mods:String = param4;
         _loc11_;
         var max_players:String = param5;
         var is_private:String = param6;
         _loc11_;
         _loc11_;
         var is_team_battle:String = param7;
         _loc11_;
         _loc12_;
         var from_browse:Boolean = param8;
         _loc11_;
         _loc11_;
         this.room_to_join = new §_-FE§();
         _loc12_;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc12_;
         _loc12_;
         this.room_to_join.RoomName = room_name;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc11_;
         this.room_to_join.MapId = mapKey;
         _loc11_;
         if(mapKey.length < 5)
         {
            this.room_to_join.CampaignKey = mapKey;
            try
            {
               this.saved_campaign_key = parseInt(mapKey);
            }
            catch(e:Error)
            {
               if(_loc11_ || (this))
               {
                  saved_campaign_key = 0;
               }
            }
         }
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         this.room_to_join.Thumbnail = thumbnail;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc12_;
         this.room_to_join.Mods = mods;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         this.room_to_join.MaxPlayers = max_players;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         this.room_to_join.Private = is_private;
         _loc11_;
         _loc11_;
         if(is_team_battle == null)
         {
            is_team_battle = "0";
            _loc12_;
         }
         _loc11_;
         _loc12_;
         _loc12_;
         this.room_to_join.TeamBattle = is_team_battle;
         _loc11_;
         _loc11_;
         this.room_to_join.BrowseGames = from_browse;
         this.tryJoinWaitingArea();
      }
      
      public function findAndJoinSpecificGame(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.room_to_join = new §_-FE§();
         _loc2_;
         this.room_to_join.RoomName = param1;
         _loc2_;
         _loc2_;
         this.tryJoinWaitingArea();
      }
      
      public function commitUnitChanges(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = String(Global.anim_idle[0].getInt() + "," + Global.anim_idle[1].getInt() + "," + Global.anim_idle[2].getInt() + "," + Global.anim_idle[3].getInt());
         _loc4_;
         _loc4_;
         this.connection.send(this.message_to_lobby.§_-GG§("UpdateUnits"),param1,Global.favourite_colour.getInt(),Global.favourite_helmet.getInt(),Global.anim_victory.getInt(),_loc2_,SafeGlobal.§_-Ds§.getInt());
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= Global.lobby_players_array.length)
            {
               _loc4_;
               _loc4_;
               break;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.lobby_players_array[_loc3_].uid == TimelineGlobal.player_uid)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               Global.lobby_players_array[_loc3_].player_colour = Global.favourite_colour.getInt();
               _loc4_;
               _loc4_;
               Global.lobby_players_array[_loc3_].player_helmet = Global.favourite_helmet.getInt();
               _loc5_;
               break;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         Global.lobby_display.updateLobbyPlayers();
      }
      
      public function updatePlayerStatus(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         if(this.connection != null)
         {
            _loc3_;
            _loc2_;
            if(this.connection.connected)
            {
               _loc2_;
               _loc2_;
               this.connection.send(this.message_to_lobby.§_-GG§("UpdatePlayerStatus"),param1);
            }
         }
      }
      
      public function commitWeaponChanges(param1:String) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.connection.send(this.message_to_lobby.§_-GG§("UpdateWeapons"),param1);
      }
      
      public function finishJoinPrivateGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.saveGameRoom(this.private_room);
         _loc1_;
         _loc1_;
         Global.lobby_display.handleJoinGameFromCode();
         _loc1_;
         Global.CLIENT.multiplayer.joinRoom(this.private_room.RoomName,null,this.handleJoinWaitingArea,this.handleJoinPrivateGameError);
      }
      
      public function finishJoinSpecificGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.saveGameRoom(this.room_to_join);
         _loc2_;
         _loc2_;
         this.from_browse_games = this.room_to_join.BrowseGames;
         _loc1_;
         _loc1_;
         Global.CLIENT.multiplayer.joinRoom(this.room_to_join.RoomName,null,this.handleJoinWaitingArea,this.handleJoinWaitingAreaError);
      }
      
      public function finishJoinInvitedGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.saveGameRoom(this.invited_room);
         _loc1_;
         _loc1_;
         Global.CLIENT.multiplayer.joinRoom(this.invited_room.RoomName,null,this.handleJoinWaitingArea,this.handleJoinWaitingAreaError);
      }
      
      private function saveGameRoom(param1:§_-FE§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.game_room = new §_-FE§();
         _loc2_;
         _loc2_;
         this.game_room.RoomName = param1.RoomName;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.game_room.MapId = param1.MapId;
         _loc2_;
         this.game_room.MaxPlayers = param1.MaxPlayers;
         this.game_room.CampaignKey = param1.CampaignKey;
         _loc3_;
         _loc3_;
         _loc2_;
         this.game_room.Mods = param1.Mods;
         _loc2_;
         _loc3_;
         _loc3_;
         this.game_room.Private = param1.Private;
         _loc2_;
         _loc2_;
         _loc2_;
         this.game_room.Thumbnail = param1.Thumbnail;
         _loc3_;
         _loc3_;
         _loc2_;
         this.game_room.LevelLimit = param1.LevelLimit;
         this.game_room.TeamBattle = param1.TeamBattle;
         _loc2_;
         _loc2_;
         SafeGlobal.replay_room = new §_-FE§();
         SafeGlobal.replay_room.RoomName = "";
         _loc3_;
         SafeGlobal.replay_room.MapId = param1.MapId;
         _loc2_;
         _loc2_;
         SafeGlobal.replay_room.MaxPlayers = param1.MaxPlayers;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         SafeGlobal.replay_room.CampaignKey = param1.CampaignKey;
         _loc2_;
         _loc3_;
         _loc3_;
         SafeGlobal.replay_room.Mods = param1.Mods;
         _loc3_;
         _loc3_;
         SafeGlobal.replay_room.Private = param1.Private;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         SafeGlobal.replay_room.Thumbnail = param1.Thumbnail;
         SafeGlobal.replay_room.LevelLimit = param1.LevelLimit;
         _loc2_;
         _loc2_;
         SafeGlobal.replay_room.TeamBattle = param1.TeamBattle;
      }
      
      private function handleJoinWaitingArea(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.waiting_connection = param1;
         _loc2_;
         _loc2_;
         this.waiting_area_name = "";
         SafeGlobal.§_-in§ = new Array();
         _loc2_;
         _loc3_;
         _loc3_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("RoomName"),this.receiveRoomName);
         _loc3_;
         _loc3_;
         _loc3_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("UpdatePlayerList"),this.UpdatePlayerList);
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("StartCountdown"),this.StartCountdown);
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("AllowStartGame"),this.AllowStartGame);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("AwardUnlocked"),this.awardUnlocked);
         _loc3_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("ReceiveChat"),this.receiveWaitingAreaChat);
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("CampaignJoinFail"),this.campaignJoinFail);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("CustomJoinFail"),this.customJoinFail);
         _loc3_;
         _loc3_;
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("FinishCountdownFail"),this.finishCountdownFail);
         _loc2_;
         this.waiting_connection.addMessageHandler(this.message_from_waiting.§_-GG§("UpdateLevelLimits"),this.UpdateLevelLimits);
         _loc3_;
         _loc3_;
         this.waiting_connection.addDisconnectHandler(this.handleDisconnectWaitingArea);
         _loc3_;
         this.waiting_connection.addMessageHandler("*",this.handleMessages);
         SafeGlobal.connected_to_waiting = true;
         this.waiting_ping_timer = new Timer(this.WAITING_PING_DELAY);
         _loc2_;
         this.waiting_ping_timer.addEventListener(TimerEvent.TIMER,this.pingWaitingArea,false,0,true);
         this.waiting_ping_timer.start();
         this.pingWaitingArea(null);
      }
      
      private function campaignJoinFail(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.leave_waiting_reason = this.CAMPAIGN_JOIN_FAIL;
         _loc2_;
         SafeGlobal.connected_to_waiting = false;
      }
      
      private function customJoinFail(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.leave_waiting_reason = this.CUSTOM_JOIN_FAIL;
         _loc2_;
         SafeGlobal.connected_to_waiting = false;
      }
      
      private function finishCountdownFail(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.leave_waiting_reason = this.FINISH_COUNTDOWN_FAIL;
         _loc2_;
         _loc2_;
         SafeGlobal.connected_to_waiting = false;
         _loc3_;
         _loc3_;
         Global.lobby_display.displayLobbyScreen(Global.§_-A1§);
      }
      
      private function receiveRoomName(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.waiting_area_name = param2;
         _loc4_;
         if(this.game_room.Private == "1")
         {
            _loc3_;
            Global.game_share_code = param2;
            _loc4_;
            Global.lobby_display.displayGameShareCode();
         }
      }
      
      private function UpdatePlayerList(param1:Message, param2:String) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         Global.lobby_display.updatePlayerList(param2);
         _loc3_;
         Global.lobby_display.updateLobbyNav();
      }
      
      private function UpdateLevelLimits(param1:Message, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         Global.lobby_display.§_-F9§(param2,param3);
      }
      
      private function AllowStartGame(param1:Message, param2:String, param3:int, param4:String, param5:String, param6:String) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         this.game_room.MaxPlayers = String(param3);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.game_room.RoomName = param2;
         _loc8_;
         _loc7_;
         this.game_room.Mods = param4;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.game_room.Private = param5;
         this.game_room.§_-ZE§ = param6;
         _loc8_;
         _loc8_;
         this.leave_waiting_reason = this.JOIN_GAME;
         _loc8_;
         Global.lobby_display.lobby_players.displayChatDeactivated(true);
         this.waiting_connection.send(this.message_to_waiting.§_-GG§("LeaveWaitingArea"));
      }
      
      private function receiveWaitingAreaChat(param1:Message, param2:String, param3:String, param4:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(true)
         {
            if(_loc6_ >= SafeGlobal.§_-in§.length)
            {
               _loc7_;
               break;
            }
            if(SafeGlobal.§_-in§[_loc6_] == param3)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = true;
               _loc7_;
               _loc7_;
               break;
            }
            _loc6_++;
            _loc7_;
            _loc7_;
         }
         if(!_loc5_)
         {
            _loc8_;
            _loc8_;
            Global.lobby_display.displayWaitingAreaChat(param2,param3,param4);
         }
      }
      
      private function StartCountdown(param1:Message, param2:int, param3:String) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         Global.lobby_display.updatePlayerList(param3);
         _loc7_;
         _loc7_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc7_;
         Global.lobby_display.lobby_nav.§_-BV§();
         _loc7_;
         _loc7_;
         _loc8_;
         Global.lobby_display.closeAllOtherPanels();
         _loc7_;
         Global.lobby_display.hideGameShareCode();
         _loc7_;
         _loc7_;
         Global.lobby_display.displayGameCountdown(param2);
         var _loc4_:String = String(Global.anim_idle[0].getInt() + "," + Global.anim_idle[1].getInt() + "," + Global.anim_idle[2].getInt() + "," + Global.anim_idle[3].getInt());
         _loc7_;
         _loc7_;
         var _loc5_:String = Global.lobby_display.panel_team.§_-sc§();
         _loc8_;
         _loc8_;
         var _loc6_:String = Global.lobby_display.panel_weapons.§_-7T§();
         _loc7_;
         _loc7_;
         Global.lobby_display.lobby_stats.§_-3P§();
         _loc7_;
         SafeGlobal.connected_to_lobby = false;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         Global.lobby_display.lobby_players.displayChatDeactivated();
         _loc7_;
         _loc7_;
         Global.lobby_display.lobby_players.§_-9§();
         _loc8_;
         _loc8_;
         this.connection.send(this.message_to_lobby.§_-GG§("JoinGame"),_loc5_,Global.favourite_colour.getInt(),Global.favourite_helmet.getInt(),Global.anim_victory.getInt(),_loc4_,SafeGlobal.§_-Ds§.getInt(),_loc6_);
      }
      
      private function handleDisconnectWaitingArea() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         SafeGlobal.connected_to_waiting = false;
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_players.displayChatDeactivated(true);
         if(this.waiting_ping_timer != null)
         {
            this.waiting_ping_timer.stop();
            this.waiting_ping_timer = null;
         }
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.leave_waiting_reason == this.JOIN_LOBBY)
         {
            _loc1_;
            _loc1_;
            this.clearGameRoomData();
            _loc2_;
            _loc2_;
            this.rejoinLobby();
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.leave_waiting_reason == this.JOIN_GAME && !(this.game_room == null))
            {
               Global.lobby_display.zoomIntoGame();
               this.back_to_lobby_reason = this.FROM_GAME;
               SafeGlobal.connected_to_lobby = false;
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc1_;
               if(this.leave_waiting_reason == this.CAMPAIGN_JOIN_FAIL)
               {
                  this.clearGameRoomData();
                  this.startNewCampaign(this.saved_campaign_key);
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  if(this.leave_waiting_reason == this.CUSTOM_JOIN_FAIL)
                  {
                     this.clearGameRoomData();
                     this.createCustomGame(Global.§_-Z6§(),SafeGlobal.selected_level.map_id,SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.max_players,SafeGlobal.selected_level.mods,false,SafeGlobal.selected_level.§_-Ar§,SafeGlobal.selected_level.created_by,SafeGlobal.selected_level.§_-op§);
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     if(this.leave_waiting_reason != this.VERSION_CONTROL)
                     {
                        if(this.leave_waiting_reason == this.FINISH_COUNTDOWN_FAIL)
                        {
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function startGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         SafeGlobal.game_client = new GameClient();
         _loc2_;
         _loc2_;
         SafeGlobal.game_client.init(this.connection,this.stage,this.game_room.RoomName,this.game_room.MapId,parseInt(this.game_room.MaxPlayers),parseInt(this.game_room.CampaignKey),this.game_room.Mods,this.game_room.Private,this.game_room.TeamBattle);
      }
      
      public function §_-Rx§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.connected_to_waiting == true)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.waiting_connection != null)
            {
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.waiting_connection.connected)
               {
                  _loc1_;
                  this.waiting_connection.send(this.message_to_waiting.§_-GG§("SwapTeam"));
               }
            }
         }
      }
      
      public function pingWaitingArea(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         if(SafeGlobal.connected_to_waiting == true)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.waiting_connection != null)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.waiting_connection.connected)
               {
                  _loc3_;
                  this.waiting_connection.send(this.message_to_waiting.§_-GG§("RequestRoomPlayers"));
               }
            }
         }
      }
      
      public function sendWaitingAreaChat(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1.slice(0,5) == "/mute" && !(param1.indexOf(" ") == -1))
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_ = param1.split(" ");
            _loc6_;
            _loc6_;
            _loc6_;
            if(_loc2_[0] == "/mute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
            {
               if(_loc2_[1] == TimelineGlobal.player_name)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  Global.lobby_display.displayLobbyChat("YOU CAN\'T MUTE YOURSELF!","ADMIN",8);
                  _loc5_;
                  _loc5_;
               }
               else if(this.getWaitingAreaPlayerExists(_loc2_[1]))
               {
                  SafeGlobal.§_-in§.push(_loc2_[1]);
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  Global.lobby_display.displayWaitingAreaChat("YOU HAVE MUTED " + _loc2_[1],"ADMIN",8);
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  Global.lobby_display.displayWaitingAreaChat("YOU CAN\'T MUTE " + _loc2_[1] + " (NOT A VALID USERNAME)","ADMIN",8);
               }
               
            }
         }
         else
         {
            _loc5_;
            if(param1.slice(0,7) == "/unmute" && !(param1.indexOf(" ") == -1))
            {
               _loc2_ = param1.split(" ");
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               if(_loc2_[0] == "/unmute" && _loc2_.length > 1 && _loc2_[1].length >= 4)
               {
                  _loc6_;
                  _loc6_;
                  _loc3_ = false;
                  _loc5_;
                  _loc5_;
                  _loc4_ = SafeGlobal.§_-in§.length;
                  while(_loc4_ >= 0)
                  {
                     _loc6_;
                     _loc5_;
                     if(SafeGlobal.§_-in§[_loc4_] == _loc2_[1])
                     {
                        SafeGlobal.§_-in§.splice(_loc4_,1);
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc3_ = true;
                        _loc6_;
                     }
                     _loc6_;
                     _loc6_;
                     _loc4_--;
                  }
                  if(_loc3_)
                  {
                     _loc6_;
                     _loc6_;
                     Global.lobby_display.displayWaitingAreaChat("YOU HAVE UNMUTED " + _loc2_[1],"ADMIN",8);
                  }
               }
            }
            else if(SafeGlobal.connected_to_waiting == true)
            {
               _loc5_;
               _loc5_;
               this.waiting_connection.send(this.message_to_waiting.§_-GG§("SendChat"),param1);
            }
            
         }
      }
      
      public function changeGameColour(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(SafeGlobal.connected_to_waiting == true)
         {
            _loc2_;
            this.waiting_connection.send(this.message_to_waiting.§_-GG§("ChangeGameColour"),param1);
         }
      }
      
      public function quitWaitingArea() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.back_to_lobby_reason = this.FROM_WAITING;
         _loc2_;
         this.leave_waiting_reason = this.JOIN_LOBBY;
         var _loc1_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.waiting_connection != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.waiting_connection.connected)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc1_ = true;
               this.waiting_connection.send(this.message_to_waiting.§_-GG§("QuitWaitingArea"));
               _loc3_;
            }
         }
         if(!_loc1_)
         {
            this.handleDisconnectWaitingArea();
         }
      }
      
      private function handleMessages(param1:Message) : void
      {
      }
      
      private function handleJoinLobbyError(param1:Error) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_ERROR);
      }
      
      private function handleGetCampaignRoomsError(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.startNewCampaign(this.saved_campaign_key);
      }
      
      private function handleGetRoomsError(param1:Error) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.lobby_display.receiveBrowseGamesData(new Array());
      }
      
      private function handleGetSecondRoomsError(param1:Error) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.lobby_display.receiveBrowseGamesData(new Array());
      }
      
      private function handleJoinWaitingAreaError(param1:Error) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(SafeGlobal.selected_level.§_-L6§)
         {
            _loc3_;
            this.saved_campaign_key = this.saved_campaign_key = SafeGlobal.§_-oX§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            this.leave_waiting_reason = this.CAMPAIGN_JOIN_FAIL;
            _loc3_;
            SafeGlobal.connected_to_waiting = false;
         }
         else
         {
            this.leave_waiting_reason = this.CUSTOM_JOIN_FAIL;
            _loc4_;
            SafeGlobal.connected_to_waiting = false;
         }
         this.handleDisconnectWaitingArea();
      }
      
      private function handleGetShareCodeRoomError(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.lobby_display.displayShareCodeLoadingError();
      }
      
      private function handleJoinPrivateGameError(param1:Error) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.lobby_display.displayLobbyScreen(Global.SCREEN_ERROR);
      }
      
      public function connectReplayEditor() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(!this.replay_connection || !this.replay_connection.connected)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.CLIENT.multiplayer.createJoinRoom("REPLAY" + TimelineGlobal.player_uid,"ReplayEditor",false,{},{},this.handleJoinReplayEditor,this.handleJoinReplayEditorError);
         }
      }
      
      private function handleJoinReplayEditor(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.replay_connection = param1;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.replay_connection.addMessageHandler(this.message_from_replay.§_-GG§("ReceiveReplayData"),this.receiveReplayData);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.replay_connection.addMessageHandler(this.message_from_replay.§_-GG§("ReceiveReplayList"),this.receiveReplayList);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.replay_connection.addMessageHandler(this.message_from_replay.§_-GG§("ReplaySaveSuccess"),this.replaySaveSuccess);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.replay_connection.addMessageHandler(this.message_from_replay.§_-GG§("ReplaySaveFail"),this.replaySaveFail);
         _loc3_;
         _loc3_;
         _loc3_;
         this.replay_connection.addMessageHandler(this.message_from_replay.§_-GG§("ReplaySaveProgress"),this.replaySaveProgress);
         this.replay_connection.addMessageHandler("*",this.handleMessages);
         this.replay_connection.send(this.message_to_replay.§_-GG§("LoadReplayList"));
      }
      
      private function receiveReplayData(param1:Message, param2:String) : void
      {
      }
      
      private function receiveReplayList(param1:Message, param2:String, param3:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         DataManager.§_-lo§(param2,param3);
         _loc4_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_VIEW_REPLAYS);
      }
      
      private function replaySaveSuccess(param1:Message, param2:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         Global.save_replay_response = param2;
         _loc3_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_REPLAY_SUCCESS);
         _loc3_;
         this.submittedReplay();
      }
      
      private function replaySaveFail(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_REPLAY_FAIL);
      }
      
      private function replaySaveProgress(param1:Message, param2:Number) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         Global.lobby_display.updateReplaySaveProgress(param2);
      }
      
      public function submitReplaySave(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.replay_connection.send(this.message_to_replay.§_-GG§("SubmitReplay"),param1,param2);
      }
      
      public function disconnectReplayEditor() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.replay_connection.send(this.message_to_replay.§_-GG§("QuitReplayEditor"));
      }
      
      private function handleJoinReplayEditorError(param1:Error) : void
      {
      }
      
      private function getLobbyPlayerExists(param1:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < Global.lobby_players_array.length)
         {
            if(Global.lobby_players_array[_loc2_].player_name == param1)
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
      
      private function getWaitingAreaPlayerExists(param1:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < Global.player_array.length)
         {
            if(Global.player_array[_loc2_].user_name == param1)
            {
               _loc4_;
               _loc3_;
               _loc3_;
               return true;
            }
            _loc2_++;
            _loc3_;
         }
         return false;
      }
   }
}
