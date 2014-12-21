package
{
   import flash.display.MovieClip;
   import com.funkypear.ui.LoadingScreen;
   import flash.display.Sprite;
   import §_-4M§.MusicToggle;
   import §_-4M§.FxToggle;
   import flash.utils.Timer;
   import §_-bY§.§_-IH§;
   import §_-4M§.SoundManager;
   import com.funkypear.ui.LobbyDisplay;
   import flash.events.TimerEvent;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.funkypear.ui.LobbyHelpDisplay;
   import com.funkypear.ui.LobbyHelpBackground;
   import com.funkypear.ui.TutorialItemDisplay;
   import §_-JH§.Game;
   import §_-JH§.OfflineGame;
   import §_-JH§.TutorialGame;
   import playerio.*;
   import §_-JH§.EditorGame;
   import §_-JH§.CustomWeaponGame;
   import §_-JH§.§_-4A§;
   import flash.display.DisplayObject;
   import §_-Ff§.DataManager;
   import flash.utils.getTimer;
   import _-PW.multiplayer;
   import _-2t.developmentServer;
   import _-2t.createJoinRoom;
   import _-Rg.addMessageHandler;
   import _-Rg.addDisconnectHandler;
   import §_-1Q§.MD5;
   import _-Rg.send;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import §_-nf§.§_-Ge§;
   import §_-Ff§.§_-bl§;
   
   public class TimelineFunctions extends Object
   {
      
      public function TimelineFunctions(param1:MovieClip)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loading_screen = new LoadingScreen();
         _loc2_;
         this.tutorial_layer = new Sprite();
         this.§_-mf§ = new Sprite();
         super();
         this.timeline = param1;
         SafeGlobal.TIMELINE = this;
         _loc3_;
         SafeGlobal.§_-8m§ = new §_-bl§(this.timeline);
         _loc3_;
         this.timeline.addChild(this.loading_screen);
         this.timeline.addChild(this.tutorial_layer);
         this.timeline.addChild(this.§_-mf§);
      }
      
      private var TEST_LOCALLY:Boolean = false;
      
      private var GAME_ID:String = "graviteewars-j0qjdxsxi0yt1ujatp53fw";
      
      private var DEV_SERVER:String = "192.168.1.68:8184";
      
      public var timeline:MovieClip;
      
      private var §_-6P§:Connection;
      
      private var §_-D1§:Connection;
      
      private var loading_screen:LoadingScreen;
      
      private var tutorial_layer:Sprite;
      
      private var §_-mf§:Sprite;
      
      private var music_toggle:MusicToggle;
      
      private var fx_toggle:FxToggle;
      
      private var afk_count:int = 0;
      
      private var afk_timer:Timer;
      
      private var is_afk:Boolean = false;
      
      private var saved_mouse_x:Number = 0;
      
      private var saved_mouse_y:Number = 0;
      
      private var skip_button:§_-IH§;
      
      public function loadLobbyDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         SoundManager.init();
         _loc2_;
         _loc2_;
         this.addSoundButtons();
         _loc1_;
         _loc1_;
         Global.lobby_display = new LobbyDisplay();
         _loc2_;
         this.timeline.addChild(Global.lobby_display);
      }
      
      public function displayLobby() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.lobby_display == null)
         {
            _loc2_;
            Global.loading_screen.showMe();
            Global.lobby_display = new LobbyDisplay();
            _loc2_;
            this.timeline.addChild(Global.lobby_display);
            this.bringToFront(Global.loading_screen);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.lobby_display.createLobbyClient();
         }
      }
      
      public function startAfkChecking() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.afk_timer != null)
         {
            this.afk_timer.stop();
            this.afk_timer.removeEventListener(TimerEvent.TIMER,this.checkAfk);
            this.afk_timer = null;
         }
         this.afk_count = 0;
         _loc2_;
         this.is_afk = false;
         this.afk_timer = new Timer(15000);
         this.afk_timer.addEventListener(TimerEvent.TIMER,this.checkAfk,false,0,true);
         this.afk_timer.start();
      }
      
      public function stopAfkChecking() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.afk_timer != null)
         {
            this.afk_timer.stop();
            _loc1_;
            this.afk_timer.removeEventListener(TimerEvent.TIMER,this.checkAfk);
            this.afk_timer = null;
         }
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
      }
      
      public function checkAfk(param1:TimerEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(Global.lobby_client != null)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.afk_count++;
            _loc5_;
            _loc4_;
            _loc4_;
            if(!(this.timeline.mouseX == this.saved_mouse_x) || !(this.timeline.mouseY == this.saved_mouse_y) || !(this.timeline.mouseX == this.saved_mouse_x) && !(this.timeline.mouseY == this.saved_mouse_y))
            {
               _loc4_;
               this.resetAfkCount();
            }
            this.saved_mouse_x = this.timeline.mouseX;
            this.saved_mouse_y = this.timeline.mouseY;
            if(this.afk_count >= 12)
            {
               if(!this.is_afk)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  Global.lobby_client.updatePlayerStatus(Global.§_-XP§);
                  this.timeline.addEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove,false,0,true);
                  this.timeline.addEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress,false,0,true);
               }
               this.is_afk = true;
            }
            else
            {
               if(this.is_afk)
               {
                  Global.lobby_client.updatePlayerStatus(Global.§_-yP§);
               }
               this.is_afk = false;
            }
         }
      }
      
      public function afkMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.resetAfkCount();
         _loc3_;
         _loc3_;
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         _loc2_;
         _loc2_;
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
         _loc2_;
         Global.lobby_client.updatePlayerStatus(Global.§_-yP§);
      }
      
      public function afkKeyPress(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.resetAfkCount();
         _loc2_;
         _loc2_;
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         _loc3_;
         _loc3_;
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
         _loc3_;
         _loc3_;
         Global.lobby_client.updatePlayerStatus(Global.§_-yP§);
      }
      
      public function resetAfkCount() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.afk_count = 0;
         _loc1_;
         _loc1_;
         this.is_afk = false;
      }
      
      public function addLobbyHelpDisplay(param1:LobbyHelpDisplay) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:LobbyHelpBackground = null;
         _loc4_;
         _loc4_;
         this.bringToFront(this.§_-mf§);
         _loc3_;
         _loc4_;
         if(param1.§_-Y4§ != null)
         {
            _loc3_;
            if(param1.§_-Y4§.mask_objects != null)
            {
               _loc4_;
               _loc2_ = new LobbyHelpBackground(param1.§_-Y4§.mask_objects,param1.§_-Y4§.arrow_objects);
               _loc3_;
               _loc3_;
               this.§_-mf§.addChild(_loc2_);
               _loc3_;
               param1.§_-96§(_loc2_);
            }
         }
         this.§_-mf§.addChild(param1);
         _loc3_;
         _loc3_;
         param1.tweenOn();
      }
      
      public function removeLobbyHelpDisplay() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.§_-mf§.numChildren > 0)
         {
            this.§_-mf§.removeChildAt(0);
            _loc2_;
         }
      }
      
      public function addTutorialItemDisplay(param1:TutorialItemDisplay) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.bringToFront(this.tutorial_layer);
         _loc2_;
         _loc2_;
         param1.name = "tid";
         _loc3_;
         _loc3_;
         this.tutorial_layer.addChild(param1);
         _loc2_;
         _loc2_;
         param1.tweenOn();
      }
      
      public function removeTutorialItemDisplay() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.tutorial_layer.numChildren > 0)
         {
            this.tutorial_layer.removeChildAt(0);
            _loc1_;
         }
      }
      
      public function showTutorialSkipButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.skip_button != null)
         {
            _loc1_;
            this.skip_button.tweenOn();
         }
      }
      
      public function hideTutorialSkipButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.skip_button != null)
         {
            _loc1_;
            this.skip_button.tweenOff();
         }
      }
      
      public function finishHideTutorialSkipButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.skip_button != null)
         {
            _loc1_;
            this.timeline.removeChild(this.skip_button);
         }
      }
      
      public function hideTutorialItemDisplay() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.tutorial_layer.numChildren)
         {
            if(this.tutorial_layer.getChildAt(_loc1_).name == "tid")
            {
               _loc3_;
               (this.tutorial_layer.getChildAt(_loc1_) as TutorialItemDisplay).tweenOff(true);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function finishHideTutorialItemDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.removeTutorialItemDisplay();
      }
      
      public function startGame(param1:String, param2:String, param3:String, param4:String) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Game = new Game(param1,param2,param3,param4);
         _loc6_;
         _loc6_;
         this.timeline.addChild(_loc5_);
         _loc7_;
         _loc7_;
         this.bringSoundButtonsToFront();
      }
      
      public function destroyGame(param1:Game) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         param1.parent.removeChild(param1);
         var param1:Game = null;
         _loc3_;
         SafeGlobal.§_-vX§ = null;
      }
      
      public function startOfflineGame(param1:String = "") : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:OfflineGame = new OfflineGame(param1,"","","");
         _loc4_;
         _loc4_;
         this.timeline.addChild(_loc2_);
         _loc3_;
         this.bringSoundButtonsToFront();
      }
      
      public function startTutorialGame() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TutorialGame = new TutorialGame("","","","");
         this.timeline.addChild(_loc1_);
         this.skip_button = new §_-IH§();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.skip_button.x = -300;
         _loc2_;
         this.skip_button.y = 518;
         this.timeline.addChild(this.skip_button);
         this.bringSoundButtonsToFront();
      }
      
      public function skipTutorial() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.hideTutorialItemDisplay();
         _loc2_;
         this.hideTutorialSkipButton();
         _loc1_;
         _loc1_;
         SafeGlobal.§_-vX§.handleClickedSkip();
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.gameOver();
      }
      
      public function startEditorGame(param1:String = "") : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:EditorGame = new EditorGame(param1,"","","");
         _loc3_;
         _loc3_;
         this.timeline.addChild(_loc2_);
         _loc4_;
         _loc4_;
         this.bringSoundButtonsToFront();
      }
      
      public function startCustomWeaponGame(param1:String = "") : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CustomWeaponGame = new CustomWeaponGame(param1,"","","");
         _loc4_;
         _loc4_;
         this.timeline.addChild(_loc2_);
         _loc3_;
         this.bringSoundButtonsToFront();
      }
      
      public function startReplayGame() : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:* = -1;
         var _loc2_:* = 0;
         while(_loc2_ < Global.replay_list.length)
         {
            _loc9_;
            _loc9_;
            if(Global.replay_list[_loc2_].replay_slot == SafeGlobal.selected_level.slot_id)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc1_ = _loc2_;
               _loc9_;
               _loc9_;
               break;
            }
            _loc2_++;
            _loc9_;
            _loc9_;
         }
         var _loc3_:String = Global.replay_list[_loc1_].thumbnail;
         var _loc4_:String = Global.replay_list[_loc1_].team_data;
         var _loc5_:String = Global.replay_list[_loc1_].mods;
         var _loc6_:String = Global.replay_list[_loc1_].replay_data;
         var _loc7_:§_-4A§ = new §_-4A§(_loc3_,_loc4_,_loc5_,_loc6_);
         _loc8_;
         _loc8_;
         this.timeline.addChild(_loc7_);
         _loc8_;
         this.bringSoundButtonsToFront();
      }
      
      public function addSoundButtons() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.music_toggle = new MusicToggle();
         _loc2_;
         this.timeline.addChild(this.music_toggle);
         _loc1_;
         _loc1_;
         this.fx_toggle = new FxToggle();
         _loc2_;
         _loc2_;
         this.timeline.addChild(this.fx_toggle);
         _loc1_;
         this.bringSoundButtonsToFront();
      }
      
      public function bringSoundButtonsToFront() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.bringToFront(this.music_toggle);
         _loc2_;
         this.bringToFront(this.fx_toggle);
      }
      
      public function bringLobbyDisplayToFront() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.bringToFront(Global.lobby_display);
      }
      
      public function bringToFront(param1:DisplayObject) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.timeline.setChildIndex(param1,this.timeline.numChildren - 1);
      }
      
      public function connectToPlayerIO() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         DataManager.§_-ZY§();
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc1_;
            _loc1_;
            PlayerIO.quickConnect.kongregateConnect(this.timeline.stage,this.GAME_ID,TimelineGlobal.kong_uid,TimelineGlobal.KONG.services.getGameAuthToken(),this.handleConnect,this.handleKongLoginError);
         }
         else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
         {
            _loc1_;
            PlayerIO.connect(this.timeline.stage,this.GAME_ID,"miniplay","miniplay" + TimelineGlobal.§_-E§,null,"miniplay",this.handleConnect,this.§_-6G§);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(Global.REGISTER_USER == true)
            {
               _loc2_;
               _loc2_;
               PlayerIO.quickConnect.simpleRegister(this.timeline.stage,this.GAME_ID,TimelineGlobal.input_username,TimelineGlobal.input_password,TimelineGlobal.input_email,null,null,null,"",this.handleConnect,this.handleRegisterError);
            }
            else if(Global.§_-qU§ == true)
            {
               Global.lobby_client.§_-mY§();
               _loc1_;
               _loc1_;
               PlayerIO.quickConnect.simpleRegister(this.timeline.stage,this.GAME_ID,TimelineGlobal.input_username,TimelineGlobal.input_password,TimelineGlobal.input_email,null,null,null,"",this.§_-uV§,this.handleRegisterError);
            }
            else if(Global.§_-kR§ == true)
            {
               SafeGlobal.§_-vS§ = getTimer();
               _loc2_;
               PlayerIO.quickConnect.simpleConnect(this.timeline.stage,this.GAME_ID,"SharedGuest",Global.§_-Bp§,this.§_-Io§,this.handleLoginError);
            }
            else
            {
               PlayerIO.quickConnect.simpleConnect(this.timeline.stage,this.GAME_ID,TimelineGlobal.input_username,TimelineGlobal.input_password,this.handleConnect,this.handleLoginError);
            }
            
            
         }
         
      }
      
      public function retrievePassword() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         PlayerIO.quickConnect.simpleRecoverPassword(this.GAME_ID,TimelineGlobal.input_email,this.handleEmailSent,this.handleEmailError);
      }
      
      private function handleEmailError(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.displayEmailPasswordError();
      }
      
      private function handleEmailSent() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.lobby_display.displayEmailPasswordSuccess();
      }
      
      private function handleRegisterError(param1:Error) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var error:Error = param1;
         _loc5_;
         if(error.errorID == 22)
         {
            try
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               Global.lobby_display.displayRegisterError("THE USERNAME OR PASSWORD ENTERED IS INCORRECT.");
               _loc5_;
               _loc5_;
            }
            catch(e:Error)
            {
            }
         }
         else
         {
            _loc5_;
            _loc5_;
            if(error.errorID == 23)
            {
               _loc4_;
               try
               {
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.displayRegisterError("THE USERNAME OR PASSWORD ENTERED IS INCORRECT.");
                  _loc4_;
                  _loc4_;
               }
               catch(e:Error)
               {
               }
            }
            else if(error.errorID == 24)
            {
               _loc4_;
               try
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.displayRegisterError("THE USERNAME OR EMAIL HAS ALREADY BEEN REGISTERED.");
                  _loc5_;
                  _loc5_;
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               Global.lobby_display.displayRegisterError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
            }
            
         }
      }
      
      private function handleLoginError(param1:Error) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var error:Error = param1;
         _loc4_;
         _loc4_;
         if(error.errorID == 22)
         {
            try
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               Global.lobby_display.displayLoginError("THE USERNAME OR PASSWORD ENTERED IS INCORRECT.");
               _loc4_;
               _loc4_;
            }
            catch(e:Error)
            {
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            if(error.errorID == 23)
            {
               _loc5_;
               _loc5_;
               try
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  Global.lobby_display.displayLoginError("THE USERNAME OR PASSWORD ENTERED IS INCORRECT.",true);
                  _loc4_;
                  _loc4_;
               }
               catch(e:Error)
               {
               }
            }
            else if(error.errorID == 24)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               Global.lobby_display.displayLoginError("THE USERNAME OR EMAIL HAS ALREADY BEEN REGISTERED.");
               _loc4_;
               _loc4_;
            }
            else
            {
               Global.lobby_display.displayLoginError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
            }
            
         }
      }
      
      private function handleKongLoginError(param1:Error) : void
      {
      }
      
      private function §_-6G§(param1:Error) : void
      {
      }
      
      private function handleConnect(param1:Client) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Global.CLIENT = param1;
         if(this.TEST_LOCALLY)
         {
            _loc3_;
            _loc3_;
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
         }
         Global.REGISTER_USER = false;
         Global.lobby_display.joinLobbyNewSession();
         _loc2_;
         _loc2_;
         _loc3_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc2_;
            SafeGlobal.§_-8m§.§_-FE§();
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
            {
               _loc2_;
               _loc3_;
               _loc3_;
               SafeGlobal.§_-8m§.§_-OP§();
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc2_;
               _loc2_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-ul§)
               {
                  _loc2_;
                  SafeGlobal.§_-8m§.§_-0-P§();
               }
               else
               {
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
                  {
                     _loc3_;
                     _loc3_;
                     SafeGlobal.§_-8m§.§_-sx§();
                  }
                  else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
                  {
                     _loc2_;
                     SafeGlobal.§_-8m§.§_-mI§();
                     _loc3_;
                  }
                  else
                  {
                     SafeGlobal.§_-8m§.§_-OP§();
                  }
                  
               }
            }
         }
      }
      
      private function §_-Io§(param1:Client) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         Global.CLIENT = param1;
         _loc2_;
         if(this.TEST_LOCALLY)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
            _loc3_;
            _loc3_;
         }
         Global.CLIENT.multiplayer.createJoinRoom("GuestAccountSetupRoom","GuestAccountSetup",false,{},{},this.§_-pu§,this.§_-MH§);
      }
      
      private function §_-pu§(param1:Connection) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-6P§ = param1;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-6P§.addMessageHandler("gf",this.§_-cO§);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-6P§.addMessageHandler("gd",this.§_-uh§);
         _loc2_;
         this.§_-6P§.addDisconnectHandler(this.§_-0W§);
      }
      
      public function §_-0-5§(param1:String) : String
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:int = parseInt(param1.slice(5));
         var _loc3_:String = String("guest" + _loc2_);
         var _loc4_:* = "jekfnsdisdosmsdfnudfkso";
         _loc7_;
         _loc6_;
         var _loc5_:int = _loc2_ * 3701 - _loc2_ * 32;
         return MD5.hash(_loc3_ + _loc5_ + _loc4_);
      }
      
      public function §_-uh§(param1:Message, param2:String, param3:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         Global.§_-kR§ = false;
         _loc5_;
         TimelineGlobal.input_username = param3;
         _loc4_;
         TimelineGlobal.input_password = this.§_-0-5§(param3);
         TimelineGlobal.player_name = param3;
         TimelineGlobal.player_uid = param2;
         TimelineGlobal.§_-eK§ = param2;
         this.§_-6P§.send("ge");
      }
      
      public function §_-cO§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.displayLoginError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
      }
      
      private function §_-MH§(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.lobby_display.displayLoginError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
      }
      
      public function §_-0W§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-6P§ = null;
         _loc1_;
         _loc1_;
         Global.CLIENT = null;
         _loc1_;
         _loc1_;
         this.connectToPlayerIO();
      }
      
      private function §_-uV§(param1:Client) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.§_-qU§ = false;
         _loc3_;
         Global.CLIENT = param1;
         _loc2_;
         _loc2_;
         if(this.TEST_LOCALLY)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
            _loc2_;
         }
         Global.CLIENT.multiplayer.createJoinRoom("GuestClone","GuestClone",false,{},{},this.§_-Kh§,this.§_-bV§);
      }
      
      private function §_-Kh§(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-D1§ = param1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-D1§.addMessageHandler("gc",this.§_-yK§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-D1§.addMessageHandler("gk",this.§_-so§);
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-D1§.addDisconnectHandler(this.§_-F6§);
         _loc2_;
         this.§_-D1§.send("cg",TimelineGlobal.§_-eK§);
      }
      
      public function §_-bV§(param1:Error) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-F6§();
      }
      
      public function §_-yK§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-D1§.send("dc");
      }
      
      public function §_-so§(param1:Message) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-D1§.send("dc");
      }
      
      public function §_-F6§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-D1§ = null;
         _loc2_;
         _loc2_;
         Global.§_-Ba§ = false;
         _loc2_;
         _loc2_;
         Global.§_-kR§ = false;
         Global.§_-qU§ = false;
         Global.REGISTER_USER = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.joinLobbyNewSession();
      }
      
      public function removeLobbyGameDisplay() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.removeZoomGameScreen();
      }
      
      public function createKongLoginListener() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         TimelineGlobal.KONG.services.addEventListener("login",this.onKongregateInPageLogin);
      }
      
      private function onKongregateInPageLogin(param1:Event) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         TimelineGlobal.KONG.services.removeEventListener("login",this.onKongregateInPageLogin);
         _loc3_;
         _loc3_;
         this.getKongCredentialsFromPage();
      }
      
      public function getKongCredentialsFromPage() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = null;
         var _loc2_:URLLoader = null;
         _loc3_;
         TimelineGlobal.kong_is_guest = TimelineGlobal.KONG.services.isGuest();
         if(!TimelineGlobal.kong_is_guest)
         {
            _loc3_;
            TimelineGlobal.kong_uid = TimelineGlobal.KONG.services.getUserId();
            _loc3_;
            _loc1_ = "http://api.kongregate.com/api/authenticate.json?user_id=";
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + TimelineGlobal.kong_uid;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + "&game_auth_token=";
            _loc1_ = _loc1_ + TimelineGlobal.KONG.services.getGameAuthToken();
            _loc4_;
            _loc4_;
            _loc3_;
            _loc1_ = _loc1_ + "&api_key=";
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + TimelineGlobal.kong_api_key;
            _loc2_ = new URLLoader();
            _loc4_;
            _loc4_;
            _loc2_.addEventListener(Event.COMPLETE,this.getKongAuthFromPage,false,0,true);
            _loc4_;
            _loc2_.load(new URLRequest(_loc1_));
         }
      }
      
      public function getKongAuthFromPage(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = §_-Ge§.decode(param1.target.data);
         if(_loc2_.success == true)
         {
            TimelineGlobal.kong_is_guest = false;
            TimelineGlobal.kong_uid = _loc2_.user_id;
            _loc3_;
            TimelineGlobal.kong_player_name = _loc2_.username;
            TimelineGlobal.player_name = _loc2_.username;
            this.connectToPlayerIO();
            SafeGlobal.§_-8m§.§_-Ry§();
            _loc4_;
            _loc4_;
         }
         else
         {
            TimelineGlobal.kong_is_guest = true;
         }
      }
   }
}
