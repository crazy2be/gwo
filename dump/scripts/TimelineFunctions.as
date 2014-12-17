package
{
   import flash.display.MovieClip;
   import com.funkypear.ui.LoadingScreen;
   import flash.display.Sprite;
   import §_-8Y§.MusicToggle;
   import §_-8Y§.FxToggle;
   import flash.utils.Timer;
   import §_-ZN§.§_-r4§;
   import §_-8Y§.SoundManager;
   import com.funkypear.ui.LobbyDisplay;
   import flash.events.TimerEvent;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.funkypear.ui.LobbyHelpDisplay;
   import com.funkypear.ui.LobbyHelpBackground;
   import com.funkypear.ui.TutorialItemDisplay;
   import §_-zO§.Game;
   import §_-zO§.OfflineGame;
   import §_-zO§.TutorialGame;
   import playerio.*;
   import §_-zO§.EditorGame;
   import §_-zO§.CustomWeaponGame;
   import §_-zO§.§_-FH§;
   import flash.display.DisplayObject;
   import §_-Cv§.DataManager;
   import flash.utils.getTimer;
   import _-5F.multiplayer;
   import _-Jw.developmentServer;
   import _-Jw.createJoinRoom;
   import _-Po.addMessageHandler;
   import _-Po.addDisconnectHandler;
   import §_-3w§.MD5;
   import _-Po.send;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import §_-D3§.§_-4K§;
   import §_-Cv§.§_-bP§;
   
   public class TimelineFunctions extends Object
   {
      
      public function TimelineFunctions(param1:MovieClip)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loading_screen = new LoadingScreen();
         this.tutorial_layer = new Sprite();
         _loc3_;
         _loc3_;
         this.§_-Sk§ = new Sprite();
         super();
         _loc3_;
         this.timeline = param1;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE = this;
         SafeGlobal.§_-zK§ = new §_-bP§(this.timeline);
         this.timeline.addChild(this.loading_screen);
         this.timeline.addChild(this.tutorial_layer);
         this.timeline.addChild(this.§_-Sk§);
      }
      
      private var TEST_LOCALLY:Boolean = false;
      
      private var GAME_ID:String = "graviteewars-j0qjdxsxi0yt1ujatp53fw";
      
      private var DEV_SERVER:String = "192.168.1.68:8184";
      
      public var timeline:MovieClip;
      
      private var §_-Ie§:Connection;
      
      private var §_-0G§:Connection;
      
      private var loading_screen:LoadingScreen;
      
      private var tutorial_layer:Sprite;
      
      private var §_-Sk§:Sprite;
      
      private var music_toggle:MusicToggle;
      
      private var fx_toggle:FxToggle;
      
      private var afk_count:int = 0;
      
      private var afk_timer:Timer;
      
      private var is_afk:Boolean = false;
      
      private var saved_mouse_x:Number = 0;
      
      private var saved_mouse_y:Number = 0;
      
      private var skip_button:§_-r4§;
      
      public function loadLobbyDisplay() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         SoundManager.init();
         _loc1_;
         _loc1_;
         this.addSoundButtons();
         _loc1_;
         _loc1_;
         Global.lobby_display = new LobbyDisplay();
         _loc2_;
         _loc2_;
         this.timeline.addChild(Global.lobby_display);
      }
      
      public function displayLobby() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc1_;
         if(Global.lobby_display == null)
         {
            _loc2_;
            _loc2_;
            Global.loading_screen.showMe();
            Global.lobby_display = new LobbyDisplay();
            this.timeline.addChild(Global.lobby_display);
            _loc2_;
            _loc2_;
            this.bringToFront(Global.loading_screen);
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
         _loc1_;
         _loc1_;
         if(this.afk_timer != null)
         {
            _loc2_;
            _loc2_;
            this.afk_timer.stop();
            _loc1_;
            this.afk_timer.removeEventListener(TimerEvent.TIMER,this.checkAfk);
            _loc2_;
            _loc2_;
            this.afk_timer = null;
            _loc2_;
            _loc2_;
         }
         this.afk_count = 0;
         _loc2_;
         this.is_afk = false;
         _loc1_;
         _loc1_;
         this.afk_timer = new Timer(15000);
         this.afk_timer.addEventListener(TimerEvent.TIMER,this.checkAfk,false,0,true);
         _loc2_;
         this.afk_timer.start();
      }
      
      public function stopAfkChecking() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.afk_timer != null)
         {
            this.afk_timer.stop();
            this.afk_timer.removeEventListener(TimerEvent.TIMER,this.checkAfk);
            this.afk_timer = null;
            _loc1_;
         }
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
      }
      
      public function checkAfk(param1:TimerEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(Global.lobby_client != null)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.afk_count++;
            _loc5_;
            _loc5_;
            _loc5_;
            if(!(this.timeline.mouseX == this.saved_mouse_x) || !(this.timeline.mouseY == this.saved_mouse_y) || !(this.timeline.mouseX == this.saved_mouse_x) && !(this.timeline.mouseY == this.saved_mouse_y))
            {
               _loc5_;
               _loc5_;
               this.resetAfkCount();
            }
            this.saved_mouse_x = this.timeline.mouseX;
            _loc4_;
            this.saved_mouse_y = this.timeline.mouseY;
            if(this.afk_count >= 12)
            {
               _loc5_;
               if(!this.is_afk)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_client.updatePlayerStatus(Global.§_-Mz§);
                  this.timeline.addEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove,false,0,true);
                  this.timeline.addEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress,false,0,true);
               }
               this.is_afk = true;
               _loc5_;
            }
            else
            {
               if(this.is_afk)
               {
                  _loc4_;
                  _loc4_;
                  Global.lobby_client.updatePlayerStatus(Global.§_-Jj§);
                  _loc4_;
               }
               this.is_afk = false;
            }
         }
      }
      
      public function afkMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.resetAfkCount();
         _loc2_;
         _loc2_;
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         _loc3_;
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
         _loc2_;
         _loc2_;
         Global.lobby_client.updatePlayerStatus(Global.§_-Jj§);
      }
      
      public function afkKeyPress(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.resetAfkCount();
         _loc3_;
         _loc3_;
         this.timeline.removeEventListener(MouseEvent.MOUSE_MOVE,this.afkMouseMove);
         _loc2_;
         this.timeline.removeEventListener(KeyboardEvent.KEY_DOWN,this.afkKeyPress);
         _loc3_;
         Global.lobby_client.updatePlayerStatus(Global.§_-Jj§);
      }
      
      public function resetAfkCount() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
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
         _loc3_;
         this.bringToFront(this.§_-Sk§);
         _loc4_;
         _loc4_;
         if(param1.§_-cZ§ != null)
         {
            _loc3_;
            if(param1.§_-cZ§.mask_objects != null)
            {
               _loc3_;
               _loc3_;
               _loc2_ = new LobbyHelpBackground(param1.§_-cZ§.mask_objects,param1.§_-cZ§.arrow_objects);
               _loc4_;
               this.§_-Sk§.addChild(_loc2_);
               _loc4_;
               param1.§_-xI§(_loc2_);
            }
         }
         this.§_-Sk§.addChild(param1);
         _loc3_;
         _loc3_;
         param1.tweenOn();
      }
      
      public function removeLobbyHelpDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(this.§_-Sk§.numChildren > 0)
         {
            this.§_-Sk§.removeChildAt(0);
            _loc1_;
            _loc1_;
         }
      }
      
      public function addTutorialItemDisplay(param1:TutorialItemDisplay) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.bringToFront(this.tutorial_layer);
         _loc3_;
         param1.name = "tid";
         _loc2_;
         this.tutorial_layer.addChild(param1);
         _loc2_;
         _loc2_;
         param1.tweenOn();
      }
      
      public function removeTutorialItemDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(this.tutorial_layer.numChildren > 0)
         {
            this.tutorial_layer.removeChildAt(0);
            _loc2_;
            _loc2_;
         }
      }
      
      public function showTutorialSkipButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         if(this.skip_button != null)
         {
            _loc2_;
            this.skip_button.tweenOn();
         }
      }
      
      public function hideTutorialSkipButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
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
               _loc3_;
               (this.tutorial_layer.getChildAt(_loc1_) as TutorialItemDisplay).tweenOff(true);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function finishHideTutorialItemDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.removeTutorialItemDisplay();
      }
      
      public function startGame(param1:String, param2:String, param3:String, param4:String) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Game = new Game(param1,param2,param3,param4);
         _loc7_;
         this.timeline.addChild(_loc5_);
         _loc6_;
         _loc6_;
         this.bringSoundButtonsToFront();
      }
      
      public function destroyGame(param1:Game) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.parent.removeChild(param1);
         var param1:Game = null;
         _loc2_;
         _loc2_;
         SafeGlobal.§_-Uq§ = null;
      }
      
      public function startOfflineGame(param1:String = "") : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:OfflineGame = new OfflineGame(param1,"","","");
         _loc3_;
         _loc3_;
         this.timeline.addChild(_loc2_);
         _loc4_;
         _loc4_;
         this.bringSoundButtonsToFront();
      }
      
      public function startTutorialGame() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TutorialGame = new TutorialGame("","","","");
         _loc3_;
         this.timeline.addChild(_loc1_);
         _loc2_;
         this.skip_button = new §_-r4§();
         _loc2_;
         _loc2_;
         _loc2_;
         this.skip_button.x = -300;
         _loc3_;
         this.skip_button.y = 518;
         _loc3_;
         _loc3_;
         this.timeline.addChild(this.skip_button);
         this.bringSoundButtonsToFront();
      }
      
      public function skipTutorial() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.hideTutorialItemDisplay();
         _loc1_;
         _loc1_;
         this.hideTutorialSkipButton();
         _loc1_;
         _loc1_;
         SafeGlobal.§_-Uq§.handleClickedSkip();
         _loc2_;
         SafeGlobal.GAME.gameOver();
      }
      
      public function startEditorGame(param1:String = "") : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:EditorGame = new EditorGame(param1,"","","");
         _loc3_;
         this.timeline.addChild(_loc2_);
         _loc4_;
         this.bringSoundButtonsToFront();
      }
      
      public function startCustomWeaponGame(param1:String = "") : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:CustomWeaponGame = new CustomWeaponGame(param1,"","","");
         _loc3_;
         this.timeline.addChild(_loc2_);
         _loc4_;
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
            _loc8_;
            _loc9_;
            _loc9_;
            if(Global.replay_list[_loc2_].replay_slot == SafeGlobal.selected_level.slot_id)
            {
               _loc9_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc1_ = _loc2_;
               _loc8_;
               break;
            }
            _loc2_++;
            _loc8_;
         }
         var _loc3_:String = Global.replay_list[_loc1_].thumbnail;
         var _loc4_:String = Global.replay_list[_loc1_].team_data;
         var _loc5_:String = Global.replay_list[_loc1_].mods;
         var _loc6_:String = Global.replay_list[_loc1_].replay_data;
         var _loc7_:§_-FH§ = new §_-FH§(_loc3_,_loc4_,_loc5_,_loc6_);
         _loc9_;
         _loc9_;
         this.timeline.addChild(_loc7_);
         _loc9_;
         _loc9_;
         this.bringSoundButtonsToFront();
      }
      
      public function addSoundButtons() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.music_toggle = new MusicToggle();
         _loc2_;
         this.timeline.addChild(this.music_toggle);
         _loc2_;
         _loc2_;
         this.fx_toggle = new FxToggle();
         _loc2_;
         _loc2_;
         this.timeline.addChild(this.fx_toggle);
         _loc2_;
         this.bringSoundButtonsToFront();
      }
      
      public function bringSoundButtonsToFront() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.bringToFront(this.music_toggle);
         _loc2_;
         _loc2_;
         this.bringToFront(this.fx_toggle);
      }
      
      public function bringLobbyDisplayToFront() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.bringToFront(Global.lobby_display);
      }
      
      public function bringToFront(param1:DisplayObject) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.timeline.setChildIndex(param1,this.timeline.numChildren - 1);
      }
      
      public function connectToPlayerIO() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         DataManager.§_-Yc§();
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc2_;
            _loc2_;
            PlayerIO.quickConnect.kongregateConnect(this.timeline.stage,this.GAME_ID,TimelineGlobal.kong_uid,TimelineGlobal.KONG.services.getGameAuthToken(),this.handleConnect,this.handleKongLoginError);
            _loc2_;
            _loc2_;
         }
         else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            PlayerIO.connect(this.timeline.stage,this.GAME_ID,"miniplay","miniplay" + TimelineGlobal.§_-iC§,null,"miniplay",this.handleConnect,this.§_-j7§);
            _loc1_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(Global.REGISTER_USER == true)
            {
               _loc2_;
               _loc2_;
               PlayerIO.quickConnect.simpleRegister(this.timeline.stage,this.GAME_ID,TimelineGlobal.input_username,TimelineGlobal.input_password,TimelineGlobal.input_email,null,null,null,"",this.handleConnect,this.handleRegisterError);
            }
            else if(Global.§_-k0§ == true)
            {
               _loc1_;
               Global.lobby_client.§_-sq§();
               _loc1_;
               PlayerIO.quickConnect.simpleRegister(this.timeline.stage,this.GAME_ID,TimelineGlobal.input_username,TimelineGlobal.input_password,TimelineGlobal.input_email,null,null,null,"",this.§default§,this.handleRegisterError);
            }
            else if(Global.§_-41§ == true)
            {
               SafeGlobal.§_-Wv§ = getTimer();
               _loc1_;
               PlayerIO.quickConnect.simpleConnect(this.timeline.stage,this.GAME_ID,"SharedGuest",Global.§_-W1§,this.§_-74§,this.handleLoginError);
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var error:Error = param1;
         _loc4_;
         if(error.errorID == 22)
         {
            try
            {
               _loc5_;
               _loc5_;
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
         else
         {
            _loc4_;
            _loc4_;
            if(error.errorID == 23)
            {
               _loc4_;
               _loc4_;
               try
               {
                  _loc4_;
                  _loc4_;
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
               _loc5_;
               try
               {
                  _loc4_;
                  _loc4_;
                  Global.lobby_display.displayRegisterError("THE USERNAME OR EMAIL HAS ALREADY BEEN REGISTERED.");
                  _loc4_;
                  _loc4_;
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
         _loc5_;
         var error:Error = param1;
         _loc5_;
         if(error.errorID == 22)
         {
            try
            {
               _loc4_;
               _loc4_;
               _loc5_;
               Global.lobby_display.displayLoginError("THE USERNAME OR PASSWORD ENTERED IS INCORRECT.");
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
               _loc4_;
               _loc4_;
               try
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
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
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               Global.lobby_display.displayLoginError("THE USERNAME OR EMAIL HAS ALREADY BEEN REGISTERED.");
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
      
      private function §_-j7§(param1:Error) : void
      {
      }
      
      private function handleConnect(param1:Client) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Global.CLIENT = param1;
         if(this.TEST_LOCALLY)
         {
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
            _loc2_;
            _loc2_;
         }
         Global.REGISTER_USER = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.joinLobbyNewSession();
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            SafeGlobal.§_-zK§.§_-XO§();
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.§_-zK§.§_-fe§();
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-zJ§)
               {
                  _loc2_;
                  SafeGlobal.§_-zK§.§_-0R§();
               }
               else
               {
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
                  {
                     _loc2_;
                     SafeGlobal.§_-zK§.§_-V8§();
                     _loc3_;
                     _loc3_;
                  }
                  else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
                  {
                     _loc2_;
                     _loc2_;
                     SafeGlobal.§_-zK§.§try§();
                  }
                  else
                  {
                     SafeGlobal.§_-zK§.§_-fe§();
                  }
                  
               }
            }
         }
      }
      
      private function §_-74§(param1:Client) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.CLIENT = param1;
         _loc2_;
         _loc2_;
         if(this.TEST_LOCALLY)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
            _loc2_;
         }
         Global.CLIENT.multiplayer.createJoinRoom("GuestAccountSetupRoom","GuestAccountSetup",false,{},{},this.§_-l6§,this.§_-CT§);
      }
      
      private function §_-l6§(param1:Connection) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Ie§ = param1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-Ie§.addMessageHandler("gf",this.§_-e4§);
         _loc2_;
         _loc3_;
         this.§_-Ie§.addMessageHandler("gd",this.§_-uu§);
         _loc2_;
         this.§_-Ie§.addDisconnectHandler(this.§_-D0§);
      }
      
      public function §_-o§(param1:String) : String
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
      
      public function §_-uu§(param1:Message, param2:String, param3:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         Global.§_-41§ = false;
         _loc5_;
         _loc5_;
         TimelineGlobal.input_username = param3;
         TimelineGlobal.input_password = this.§_-o§(param3);
         _loc5_;
         TimelineGlobal.player_name = param3;
         _loc4_;
         TimelineGlobal.player_uid = param2;
         TimelineGlobal.§_-Fv§ = param2;
         _loc4_;
         _loc4_;
         this.§_-Ie§.send("ge");
      }
      
      public function §_-e4§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.displayLoginError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
      }
      
      private function §_-CT§(param1:Error) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         Global.lobby_display.displayLoginError("THERE WAS A PROBLEM CONNECTING TO THE SERVER. PLEASE CHECK YOUR INTERNET CONNECTION AND TRY AGAIN.");
      }
      
      public function §_-D0§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Ie§ = null;
         _loc1_;
         Global.CLIENT = null;
         _loc1_;
         _loc1_;
         this.connectToPlayerIO();
      }
      
      private function §default§(param1:Client) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.§_-k0§ = false;
         _loc3_;
         _loc3_;
         Global.CLIENT = param1;
         _loc3_;
         if(this.TEST_LOCALLY)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            Global.CLIENT.multiplayer.developmentServer = this.DEV_SERVER;
            _loc2_;
         }
         Global.CLIENT.multiplayer.createJoinRoom("GuestClone","GuestClone",false,{},{},this.§with§,this.§_-JA§);
      }
      
      private function §with§(param1:Connection) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-0G§ = param1;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-0G§.addMessageHandler("gc",this.§_-0-Q§);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-0G§.addMessageHandler("gk",this.§_-Vj§);
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-0G§.addDisconnectHandler(this.§_-bZ§);
         _loc2_;
         _loc2_;
         this.§_-0G§.send("cg",TimelineGlobal.§_-Fv§);
      }
      
      public function §_-JA§(param1:Error) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-bZ§();
      }
      
      public function §_-0-Q§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-0G§.send("dc");
      }
      
      public function §_-Vj§(param1:Message) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-0G§.send("dc");
      }
      
      public function §_-bZ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-0G§ = null;
         Global.§_-UW§ = false;
         _loc2_;
         Global.§_-41§ = false;
         Global.§_-k0§ = false;
         _loc1_;
         _loc1_;
         Global.REGISTER_USER = false;
         _loc2_;
         Global.lobby_display.joinLobbyNewSession();
      }
      
      public function removeLobbyGameDisplay() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.removeZoomGameScreen();
      }
      
      public function createKongLoginListener() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         TimelineGlobal.KONG.services.addEventListener("login",this.onKongregateInPageLogin);
      }
      
      private function onKongregateInPageLogin(param1:Event) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         TimelineGlobal.KONG.services.removeEventListener("login",this.onKongregateInPageLogin);
         _loc2_;
         _loc2_;
         this.getKongCredentialsFromPage();
      }
      
      public function getKongCredentialsFromPage() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = null;
         var _loc2_:URLLoader = null;
         TimelineGlobal.kong_is_guest = TimelineGlobal.KONG.services.isGuest();
         if(!TimelineGlobal.kong_is_guest)
         {
            _loc4_;
            TimelineGlobal.kong_uid = TimelineGlobal.KONG.services.getUserId();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = "http://api.kongregate.com/api/authenticate.json?user_id=";
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + TimelineGlobal.kong_uid;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc1_ = _loc1_ + "&game_auth_token=";
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + TimelineGlobal.KONG.services.getGameAuthToken();
            _loc1_ = _loc1_ + "&api_key=";
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + TimelineGlobal.kong_api_key;
            _loc2_ = new URLLoader();
            _loc4_;
            _loc2_.addEventListener(Event.COMPLETE,this.getKongAuthFromPage,false,0,true);
            _loc3_;
            _loc2_.load(new URLRequest(_loc1_));
         }
      }
      
      public function getKongAuthFromPage(param1:Event) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Object = §_-4K§.decode(param1.target.data);
         _loc4_;
         if(_loc2_.success == true)
         {
            _loc4_;
            TimelineGlobal.kong_is_guest = false;
            _loc3_;
            _loc3_;
            TimelineGlobal.kong_uid = _loc2_.user_id;
            TimelineGlobal.kong_player_name = _loc2_.username;
            TimelineGlobal.player_name = _loc2_.username;
            this.connectToPlayerIO();
            _loc4_;
            SafeGlobal.§_-zK§.§_-Tq§();
         }
         else
         {
            TimelineGlobal.kong_is_guest = true;
         }
      }
   }
}
