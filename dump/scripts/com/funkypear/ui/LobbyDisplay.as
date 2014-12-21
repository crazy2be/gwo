package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-Uq§.LobbyClient;
   import §_-zj§.Editor;
   import fl.transitions.easing.*;
   import §_-4M§.SoundManager;
   import flash.events.Event;
   
   public class LobbyDisplay extends Sprite
   {
      
      public function LobbyDisplay()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.intro_anims = [Global.SCREEN_FUNKYPEAR];
         super();
         Global.lobby_display = this;
         this.lobby_canvas = new Sprite();
         addChild(this.lobby_canvas);
         this.displayNextIntroAnim();
         Global.help_manager = new HelpManager();
      }
      
      private var intro_logo:§_-va§;
      
      private var intro_copyright:§_-4S§;
      
      private var lobby_client:LobbyClient;
      
      public var lobby_nav:§_-jh§;
      
      public var lobby_stats:LobbyStats;
      
      public var lobby_menu:LobbyMenu;
      
      public var lobby_players:PlayersPanel;
      
      private var game_countdown:§_-Mq§;
      
      private var §_-L6§:§_-KO§;
      
      private var editor:Editor;
      
      private var lobby_canvas:Sprite;
      
      private var bg_shadow:Sprite;
      
      private var unlock_shadow:Sprite;
      
      public var panel_awards:LP_Awards;
      
      public var panel_shop:LP_Shop;
      
      public var panel_stats:LP_Stats;
      
      public var panel_team:LP_TeamSetUp;
      
      public var panel_weapons:LP_WeaponSetUp;
      
      public var panel_credits:LP_Credits;
      
      public var panel_help:§_-DR§;
      
      public var panel_custom:LP_CustomWeapon;
      
      public var panel_codeunlock:LP_CodeUnlock;
      
      public var panel_buyitem:LP_BuyItem;
      
      public var panel_moregravitons:LP_MoreGravitons;
      
      public var panel_buygravitons:LP_BuyGravitons;
      
      public var panel_deletemap:§_-Eg§;
      
      public var panel_kreds:§_-Kj§;
      
      public var panel_versioncontrol:§_-Xc§;
      
      public var panel_news:§_-W4§;
      
      public var panel_daily:LP_DailyChallenge;
      
      public var panel_weekly:LP_WeeklyChallenge;
      
      public var panel_registerguest:§_-C9§;
      
      public var panel_miniplay:§_-MU§;
      
      public var panel_unlock:LP_Unlock;
      
      public var logo:§_-s4§;
      
      public var created_lobby_features:Boolean = false;
      
      public var award_panel:AwardPanel;
      
      public var intro_anims:Array;
      
      public var intro_anim_id = -1;
      
      private var game_error:GameStartError;
      
      public function displayIntroLogo() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.intro_logo == null)
         {
            this.intro_logo = new §_-va§();
            this.intro_copyright = new §_-4S§();
            _loc1_;
            _loc1_;
            addChild(this.intro_logo);
            _loc1_;
            addChild(this.intro_copyright);
            _loc1_;
            _loc2_;
            this.intro_logo.tweenOn();
            _loc2_;
            this.intro_copyright.tweenOn();
         }
         else
         {
            this.intro_logo.tweenOn();
            this.intro_copyright.tweenOn();
         }
      }
      
      public function removeIntroLogo(param1:Boolean = false) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc4_;
            _loc4_;
            if(this.intro_anims.length > 0)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc2_ = true;
               _loc3_;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_ = true;
            _loc4_;
         }
         if(_loc2_)
         {
            _loc4_;
            if(this.intro_logo != null)
            {
               _loc3_;
               this.intro_logo.tweenOff();
               _loc4_;
               _loc4_;
            }
            _loc4_;
            if(this.intro_copyright != null)
            {
               _loc4_;
               _loc4_;
               this.intro_copyright.tweenOff();
            }
         }
      }
      
      public function finishRemoveIntroLogo() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.intro_logo != null)
         {
            _loc1_;
            removeChild(this.intro_logo);
            this.intro_logo = null;
            _loc1_;
         }
         if(this.intro_copyright != null)
         {
            removeChild(this.intro_copyright);
            this.intro_copyright = null;
         }
      }
      
      public function displayNextIntroAnim() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.intro_anim_id++;
         _loc3_;
         _loc3_;
         if(this.intro_anim_id < this.intro_anims.length)
         {
            this.displayLobbyScreen(this.intro_anims[this.intro_anim_id]);
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(TimelineGlobal.kong_is_guest == true)
               {
                  this.displayLobbyScreen(Global.§_-7P§);
                  _loc3_;
                  _loc3_;
                  SafeGlobal.TIMELINE.createKongLoginListener();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  SafeGlobal.TIMELINE.connectToPlayerIO();
                  _loc3_;
                  SafeGlobal.§_-8m§.§_-Ry§();
               }
            }
            else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
            {
               if(TimelineGlobal.§_-Gi§ == true)
               {
                  TimelineGlobal.§_-Zm§.user.login();
               }
               else
               {
                  SafeGlobal.TIMELINE.connectToPlayerIO();
               }
            }
            else
            {
               this.displayLoginScreen();
            }
            
         }
      }
      
      public function displayLoginScreen() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_LOGIN);
      }
      
      public function displayLoginError(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:LobbyScreen = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
         _loc4_;
         if(_loc3_ != null)
         {
            _loc5_;
            (_loc3_ as §_-2d§).§_-gc§(param1,param2);
         }
      }
      
      public function displayRegisterScreen() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_REGISTER);
      }
      
      public function displayRegisterError(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:LobbyScreen = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
         _loc4_;
         _loc4_;
         if(_loc2_ != null)
         {
            _loc4_;
            (_loc2_ as §_-rT§).§_-gc§(param1);
         }
      }
      
      public function displayPasswordScreen() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_PASSWORD);
      }
      
      public function displayEmailPasswordError() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:LobbyScreen = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
         _loc3_;
         if(_loc1_ != null)
         {
            _loc2_;
            _loc2_;
            (_loc1_ as §_-hL§).§_-gc§();
         }
      }
      
      public function displayEmailPasswordSuccess() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:LobbyScreen = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
         _loc3_;
         _loc3_;
         if(_loc1_ != null)
         {
            _loc2_;
            _loc2_;
            (_loc1_ as §_-hL§).§_-Vn§();
         }
      }
      
      public function displayVersionControlComingSoon(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
         _loc3_;
         _loc3_;
         _loc3_;
         this.panel_versioncontrol.update(param1);
         _loc3_;
         this.panel_versioncontrol.tweenIn(true);
      }
      
      public function closeAllOtherPanels() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.panel_versioncontrol.§_-0B§)
         {
            this.panel_versioncontrol.doClose();
         }
         _loc1_;
         if(this.panel_codeunlock.§_-0B§)
         {
            _loc2_;
            _loc2_;
            this.panel_codeunlock.doClose();
         }
         _loc1_;
         _loc1_;
         if(this.panel_buyitem.§_-0B§)
         {
            _loc1_;
            this.panel_buyitem.doClose();
            _loc1_;
            _loc1_;
         }
         _loc2_;
         if(this.panel_moregravitons.§_-0B§)
         {
            _loc2_;
            _loc2_;
            this.panel_moregravitons.doClose();
            _loc1_;
            _loc1_;
         }
         _loc1_;
         if(this.panel_buygravitons.§_-0B§)
         {
            _loc2_;
            this.panel_buygravitons.doClose();
         }
         _loc1_;
         _loc1_;
         if(this.panel_deletemap.§_-0B§)
         {
            this.panel_deletemap.doClose();
            _loc2_;
            _loc2_;
         }
         _loc1_;
         if(this.panel_kreds.§_-0B§)
         {
            _loc1_;
            _loc1_;
            this.panel_kreds.doClose();
            _loc2_;
            _loc2_;
         }
         _loc1_;
         if(this.panel_unlock.§_-0B§)
         {
            this.panel_unlock.§_-6f§();
         }
         _loc2_;
         if(this.panel_news.§_-0B§)
         {
            this.panel_news.doClose();
         }
         _loc1_;
         _loc1_;
         if(this.panel_daily.§_-0B§)
         {
            _loc1_;
            _loc1_;
            this.panel_daily.doClose();
         }
         _loc2_;
         if(this.panel_weekly.§_-0B§)
         {
            this.panel_weekly.doClose();
            _loc1_;
            _loc1_;
         }
         _loc1_;
         _loc1_;
         if(this.panel_registerguest.§_-0B§)
         {
            _loc1_;
            _loc1_;
            this.panel_registerguest.doClose();
         }
         _loc2_;
         if(this.panel_miniplay.§_-0B§)
         {
            this.panel_miniplay.doClose();
         }
      }
      
      public function displayVersionControl() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.lobby_menu.§_-ny§();
         _loc2_;
         _loc2_;
         this.closeAllOtherPanels();
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_VERSIONCONTROL);
      }
      
      public function getVCShadowTween() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.panel_codeunlock.§_-0B§)
         {
            return false;
         }
         if(this.panel_buyitem.§_-0B§)
         {
            return false;
         }
         if(this.panel_moregravitons.§_-0B§)
         {
            _loc1_;
            return false;
         }
         if(this.panel_buygravitons.§_-0B§)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            return false;
         }
         if(this.panel_deletemap.§_-0B§)
         {
            return false;
         }
         if(this.panel_kreds.§_-0B§)
         {
            _loc2_;
            _loc2_;
            return false;
         }
         if(this.panel_unlock.§_-0B§)
         {
            return false;
         }
         if(this.panel_news.§_-0B§)
         {
            _loc2_;
            return false;
         }
         if(this.panel_daily.§_-0B§)
         {
            _loc2_;
            _loc2_;
            return false;
         }
         if(this.panel_weekly.§_-0B§)
         {
            _loc2_;
            return false;
         }
         if(this.panel_registerguest.§_-0B§)
         {
            _loc1_;
            _loc1_;
            return false;
         }
         if(this.panel_miniplay.§_-0B§)
         {
            return false;
         }
         return true;
      }
      
      public function displayBanned() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_BANNED);
      }
      
      public function addBlackBarTurnDisplay() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:BlackBarTurnDisplay = null;
         _loc2_;
         if(!this.game_error)
         {
            _loc1_ = new BlackBarTurnDisplay();
            _loc3_;
            _loc1_.name = "black_bar";
            _loc3_;
            _loc3_;
            _loc3_;
            SafeGlobal.TIMELINE.timeline.addChild(_loc1_);
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.bringToFront(_loc1_);
         }
      }
      
      public function removeBlackBarTurnDisplay() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BlackBarTurnDisplay = SafeGlobal.TIMELINE.timeline.getChildByName("black_bar") as BlackBarTurnDisplay;
         _loc2_;
         _loc2_;
         if(_loc1_ != null)
         {
            _loc3_;
            _loc1_.tweenOff();
         }
      }
      
      public function bringBlackBarToFront() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BlackBarTurnDisplay = SafeGlobal.TIMELINE.timeline.getChildByName("black_bar") as BlackBarTurnDisplay;
         _loc2_;
         if(_loc1_ != null)
         {
            _loc3_;
            SafeGlobal.TIMELINE.bringToFront(_loc1_);
         }
      }
      
      public function displayGameStartError() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.removeBlackBarTurnDisplay();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.game_error == null)
         {
            _loc2_;
            this.game_error = new GameStartError();
            _loc1_;
            this.game_error.name = "game_start_error";
            _loc1_;
            _loc1_;
            _loc1_;
            SafeGlobal.TIMELINE.timeline.addChild(this.game_error);
            _loc1_;
            SafeGlobal.TIMELINE.bringToFront(this.game_error);
         }
      }
      
      public function handleGameStartError() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.game_error != null)
         {
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.timeline.removeChild(this.game_error);
            this.game_error = null;
         }
         if(SafeGlobal.GAME != null)
         {
            SafeGlobal.GAME.destroyGame();
            SafeGlobal.GAME.finalDestroy();
            _loc2_;
         }
         _loc2_;
         if(SafeGlobal.game_client != null)
         {
            SafeGlobal.game_client.cleanUp();
            _loc1_;
            _loc1_;
            SafeGlobal.game_client = null;
         }
         SafeGlobal.game_was_disconnected = true;
         _loc2_;
         _loc2_;
         this.createLobbyClient();
         this.removeBlackBarTurnDisplay();
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_LOADING_RECONNECT);
      }
      
      public function checkForMenuClickHelp(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.help_manager != null)
         {
            _loc3_;
            Global.help_manager.checkForMenuClickHelp(param1);
         }
      }
      
      public function checkForPanelCloseHelp(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         if(Global.help_manager != null)
         {
            _loc3_;
            Global.help_manager.checkForPanelCloseHelp(param1);
         }
      }
      
      public function joinLobbyNewSession() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_LOADING_LOBBY);
         _loc1_;
         if(!this.created_lobby_features)
         {
            this.bg_shadow = new Sprite();
            _loc2_;
            this.bg_shadow.graphics.beginFill(0,1);
            this.bg_shadow.graphics.drawRect(0,0,800,600);
            this.bg_shadow.graphics.endFill();
            this.bg_shadow.visible = false;
            this.bg_shadow.alpha = 0;
            addChild(this.bg_shadow);
            this.logo = new §_-s4§();
            _loc1_;
            _loc1_;
            _loc2_;
            this.logo.x = 12;
            this.logo.y = 610;
            addChild(this.logo);
            this.lobby_nav = new §_-jh§();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.lobby_nav.x = 0;
            _loc2_;
            _loc2_;
            this.lobby_nav.y = -200;
            addChild(this.lobby_nav);
            _loc1_;
            _loc1_;
            this.lobby_stats = new LobbyStats();
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.lobby_stats.x = 331;
            _loc1_;
            this.lobby_stats.y = 610;
            _loc1_;
            _loc1_;
            addChild(this.lobby_stats);
            _loc1_;
            _loc1_;
            this.lobby_players = new PlayersPanel();
            _loc1_;
            _loc2_;
            this.lobby_players.x = 840;
            _loc1_;
            this.lobby_players.y = 13;
            addChild(this.lobby_players);
            _loc1_;
            this.panel_awards = new LP_Awards(this.bg_shadow);
            this.panel_awards.name = "panel_awards";
            _loc1_;
            _loc1_;
            addChild(this.panel_awards);
            _loc2_;
            this.panel_shop = new LP_Shop(this.bg_shadow);
            _loc1_;
            _loc1_;
            this.panel_shop.name = "panel_shop";
            _loc2_;
            addChild(this.panel_shop);
            this.panel_stats = new LP_Stats(this.bg_shadow);
            _loc1_;
            this.panel_stats.name = "panel_stats";
            _loc2_;
            addChild(this.panel_stats);
            _loc2_;
            _loc2_;
            this.panel_team = new LP_TeamSetUp(this.bg_shadow);
            this.panel_team.name = "panel_team";
            addChild(this.panel_team);
            this.panel_weapons = new LP_WeaponSetUp(this.bg_shadow);
            _loc2_;
            _loc2_;
            this.panel_weapons.name = "panel_weapons";
            _loc2_;
            addChild(this.panel_weapons);
            this.panel_credits = new LP_Credits(this.bg_shadow);
            this.panel_credits.name = "panel_credits";
            addChild(this.panel_credits);
            _loc1_;
            this.panel_help = new §_-DR§(this.bg_shadow);
            _loc1_;
            this.panel_help.name = "panel_help";
            _loc2_;
            _loc2_;
            addChild(this.panel_help);
            this.panel_custom = new LP_CustomWeapon(this.bg_shadow);
            _loc1_;
            this.panel_custom.name = "panel_custom";
            addChild(this.panel_custom);
            _loc1_;
            this.lobby_menu = new LobbyMenu(this.panel_awards,this.panel_shop,this.panel_stats,this.panel_team,this.panel_weapons,this.panel_credits,this.panel_help,this.panel_custom);
            _loc1_;
            this.lobby_menu.x = -100;
            addChild(this.lobby_menu);
            this.award_panel = new AwardPanel();
            _loc2_;
            _loc2_;
            addChild(this.award_panel);
            this.unlock_shadow = new Sprite();
            _loc1_;
            this.unlock_shadow.graphics.beginFill(0,1);
            this.unlock_shadow.graphics.drawRect(0,0,800,600);
            this.unlock_shadow.graphics.endFill();
            _loc1_;
            this.unlock_shadow.visible = false;
            _loc1_;
            this.unlock_shadow.alpha = 0;
            _loc1_;
            _loc1_;
            addChild(this.unlock_shadow);
            this.panel_unlock = new LP_Unlock(this.unlock_shadow);
            this.panel_unlock.name = "panel_unlock";
            addChild(this.panel_unlock);
            this.panel_buyitem = new LP_BuyItem(this.unlock_shadow);
            this.panel_buyitem.name = "panel_buyitem";
            addChild(this.panel_buyitem);
            this.panel_moregravitons = new LP_MoreGravitons(this.unlock_shadow);
            this.panel_moregravitons.name = "panel_moregravitons";
            _loc1_;
            _loc1_;
            addChild(this.panel_moregravitons);
            this.panel_buygravitons = new LP_BuyGravitons(this.unlock_shadow);
            this.panel_buygravitons.name = "panel_buygravitons";
            _loc1_;
            _loc1_;
            addChild(this.panel_buygravitons);
            this.panel_kreds = new §_-Kj§(this.unlock_shadow);
            this.panel_kreds.name = "panel_kreds";
            addChild(this.panel_kreds);
            this.panel_miniplay = new §_-MU§(this.unlock_shadow);
            this.panel_miniplay.name = "panel_miniplay";
            addChild(this.panel_miniplay);
            this.panel_deletemap = new §_-Eg§(this.unlock_shadow);
            _loc1_;
            _loc1_;
            this.panel_deletemap.name = "panel_deletemap";
            _loc2_;
            addChild(this.panel_deletemap);
            this.panel_codeunlock = new LP_CodeUnlock(this.unlock_shadow);
            this.panel_codeunlock.name = "panel_codeunlock";
            addChild(this.panel_codeunlock);
            _loc1_;
            this.panel_news = new §_-W4§(this.unlock_shadow);
            this.panel_news.name = "panel_news";
            addChild(this.panel_news);
            this.panel_daily = new LP_DailyChallenge(this.unlock_shadow);
            this.panel_daily.name = "panel_daily";
            addChild(this.panel_daily);
            this.panel_weekly = new LP_WeeklyChallenge(this.unlock_shadow);
            this.panel_weekly.name = "panel_weekly";
            _loc1_;
            addChild(this.panel_weekly);
            _loc2_;
            _loc2_;
            this.panel_registerguest = new §_-C9§(this.unlock_shadow);
            this.panel_registerguest.name = "panel_registerguest";
            _loc2_;
            _loc2_;
            addChild(this.panel_registerguest);
            _loc1_;
            _loc1_;
            this.panel_versioncontrol = new §_-Xc§(this.unlock_shadow);
            this.panel_versioncontrol.name = "panel_versioncontrol";
            addChild(this.panel_versioncontrol);
         }
         this.created_lobby_features = true;
         this.createLobbyClient();
      }
      
      public function displayLatestNews() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.panel_news.update(Global.§_-g-§);
         _loc1_;
         _loc1_;
         this.panel_news.tweenIn(true);
         _loc2_;
         _loc2_;
         Global.§_-g-§ = "";
      }
      
      public function §_-ex§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         this.panel_daily.update();
         _loc2_;
         this.panel_daily.tweenIn(true);
         _loc2_;
         _loc2_;
         SafeGlobal.§_-xf§ = true;
      }
      
      public function §_-aH§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         this.panel_weekly.update();
         _loc1_;
         this.panel_weekly.tweenIn(false);
         _loc1_;
         _loc1_;
         SafeGlobal.§_-Hr§ = true;
      }
      
      public function §_-8k§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.panel_registerguest.update(param1);
         _loc3_;
         if(param1 == 1)
         {
            _loc2_;
            _loc3_;
            _loc2_;
            this.panel_registerguest.tweenIn(false);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.panel_registerguest.tweenIn(true);
         }
      }
      
      public function §_-zK§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.lobby_menu.§_-ny§();
         this.displayIntroLogo();
         _loc1_;
         _loc1_;
         this.lobby_menu.tweenOut();
         _loc2_;
         _loc2_;
         this.lobby_nav.tweenOut();
         this.lobby_stats.tweenOut();
         _loc1_;
         _loc1_;
         this.logo.tweenOut();
         _loc1_;
         this.displayLobbyScreen(Global.§_-4D§);
      }
      
      public function displayConfirmDeleteMap(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.panel_deletemap.slot_id = param1;
         _loc2_;
         this.panel_deletemap.tweenIn(true);
      }
      
      public function displayBuyItem(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         if(Global.§_-Ba§ == true)
         {
            _loc4_;
            this.§_-8k§(0);
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            this.panel_buyitem.update(param1);
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            this.panel_buyitem.back_to_shop = param2;
            _loc4_;
            this.panel_buyitem.tweenIn(true);
         }
      }
      
      public function displayMoreGravitonsPanel(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(Global.§_-Ba§ == true)
         {
            _loc4_;
            _loc4_;
            this.§_-8k§(0);
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            this.panel_moregravitons.update(param1);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.panel_moregravitons.back_to_shop = param2;
            _loc4_;
            this.panel_moregravitons.tweenIn(true);
         }
      }
      
      public function displayBuyGravitonsPanel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(Global.§_-Ba§ == true)
         {
            _loc1_;
            this.§_-8k§(0);
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.panel_buygravitons.update(true);
            _loc2_;
            _loc2_;
            this.panel_buygravitons.tweenIn(true);
         }
      }
      
      public function displayKredsPanel() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.panel_kreds.update(true);
         _loc2_;
         _loc2_;
         this.panel_kreds.tweenIn(true);
      }
      
      public function §_-v8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.panel_miniplay.update(true);
         _loc1_;
         _loc1_;
         this.panel_miniplay.tweenIn(true);
      }
      
      public function displayCodeUnlockPanel() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         this.panel_codeunlock.§_-La§();
         _loc2_;
         this.panel_codeunlock.tweenIn(true);
      }
      
      public function displayNewUnlock(param1:String, param2:LS_GameEnd) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.panel_unlock.getOnScreen() == true)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            this.panel_unlock.§_-04§(param1);
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            this.panel_unlock.update(param1,param2);
            _loc4_;
            this.panel_unlock.tweenIn(true);
         }
      }
      
      public function hideUnlockPanel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.panel_unlock.§_-or§ = "";
         _loc1_;
         if(Global.§_-Ba§ == true)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.panel_unlock.tweenOut(false);
            _loc1_;
            _loc1_;
         }
         else
         {
            this.panel_unlock.tweenOut(true);
         }
      }
      
      public function createLobbyClient() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.player_name != "")
         {
            _loc2_;
            _loc1_;
            if(this.lobby_client == null)
            {
               _loc1_;
               this.lobby_client = new LobbyClient(this,SafeGlobal.TIMELINE.timeline.stage);
               _loc1_;
               _loc1_;
            }
            this.lobby_client.joinLobby();
         }
      }
      
      public function displayAlreadyConnected() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.displayLobbyScreen(Global.§_-mS§);
      }
      
      public function hideContent() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.lobby_canvas.visible = false;
         this.panel_awards.visible = false;
         this.panel_shop.visible = false;
         _loc1_;
         this.panel_stats.visible = false;
         this.panel_team.visible = false;
         _loc1_;
         this.panel_weapons.visible = false;
         _loc1_;
         _loc1_;
         this.panel_credits.visible = false;
         this.panel_unlock.visible = false;
         this.lobby_nav.visible = false;
         _loc1_;
         this.lobby_stats.visible = false;
         _loc1_;
         _loc1_;
         this.lobby_menu.visible = false;
         this.lobby_players.visible = false;
      }
      
      public function showContent() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lobby_canvas.visible = true;
         this.panel_awards.visible = true;
         this.panel_shop.visible = true;
         _loc1_;
         this.panel_stats.visible = true;
         _loc1_;
         this.panel_team.visible = true;
         _loc1_;
         this.panel_weapons.visible = true;
         _loc1_;
         _loc1_;
         this.panel_credits.visible = true;
         this.panel_unlock.visible = true;
         _loc2_;
         _loc2_;
         this.lobby_nav.visible = true;
         _loc2_;
         _loc2_;
         this.lobby_stats.visible = true;
         _loc2_;
         _loc2_;
         this.lobby_menu.visible = true;
         this.lobby_players.visible = true;
      }
      
      public function init(param1:uint) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
         _loc2_;
         _loc2_;
         if(param1 == 0)
         {
            Global.nav_path = new Array();
            _loc2_;
            _loc2_;
            _loc2_;
            this.lobby_menu.tweenIn();
            _loc2_;
            _loc2_;
            _loc2_;
            this.lobby_nav.tweenIn();
            _loc3_;
            _loc2_;
            _loc2_;
            this.lobby_stats.setName();
            _loc3_;
            _loc3_;
            this.lobby_stats.tweenIn();
            _loc3_;
            this.logo.tweenIn();
            _loc3_;
            _loc3_;
            this.lobby_players.tweenIn();
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_HUB);
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(param1 == 1)
            {
               _loc2_;
               _loc2_;
               this.lobby_menu.tweenIn();
            }
            else
            {
               _loc2_;
               _loc2_;
               if(param1 == 2)
               {
                  _loc3_;
                  _loc3_;
                  this.lobby_menu.tweenIn();
                  _loc3_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  if(param1 == 3)
                  {
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     if(param1 == 4)
                     {
                        _loc2_;
                        _loc2_;
                        this.selectTutorialGame();
                        _loc2_;
                        Global.§_-g-§ = "";
                     }
                     else if(param1 == 5)
                     {
                        this.lobby_menu.tweenIn();
                        this.lobby_nav.tweenIn();
                        this.lobby_stats.tweenIn();
                        this.logo.tweenIn();
                        this.lobby_players.tweenIn();
                        this.displayLobbyScreen(Global.SCREEN_HUB);
                     }
                     
                  }
               }
            }
         }
      }
      
      private function checkScreenMusic(param1:uint) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_FUNKYPEAR)
         {
            SoundManager.§_-ZR§();
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_TUTORIAL_GAME)
            {
               SoundManager.§_-Ed§();
            }
            else if(param1 == Global.SCREEN_ZOOMGAME)
            {
               _loc2_;
               SoundManager.§_-Ed§();
            }
            else
            {
               _loc3_;
               if(param1 == Global.SCREEN_CW_GAME)
               {
                  _loc2_;
                  SoundManager.§_-Ed§();
               }
               else if(param1 == Global.SCREEN_EDITOR_GAME)
               {
                  SoundManager.§_-Ed§();
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(param1 == Global.SCREEN_GAME_END)
                  {
                     SoundManager.§_-ZR§();
                  }
                  else if(param1 == Global.SCREEN_CW_END)
                  {
                     SoundManager.§_-ZR§();
                  }
                  else if(param1 == Global.SCREEN_EDITOR)
                  {
                     _loc2_;
                     _loc2_;
                     SoundManager.§_-ZR§();
                  }
                  else if(param1 == Global.SCREEN_TUTORIAL_END)
                  {
                     SoundManager.§_-ZR§();
                  }
                  
                  
                  
               }
               
            }
            
         }
      }
      
      private function checkLobbyStatus(param1:uint, param2:uint) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         if(param1 == Global.SCREEN_EDITOR)
         {
            _loc4_;
            _loc4_;
            if(param2 == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.lobby_client.updatePlayerStatus(Global.§_-WE§);
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               SafeGlobal.TIMELINE.stopAfkChecking();
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            _loc3_;
            if(param1 == Global.SCREEN_EDITOR_SLOTS)
            {
               if(param2 == Global.SCREEN_EDITOR)
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                  _loc4_;
                  _loc4_;
                  SafeGlobal.TIMELINE.startAfkChecking();
                  _loc3_;
               }
            }
            else if(param1 == Global.SCREEN_EDIT_REPLAY)
            {
               if(param2 == Global.SCREEN_VIEW_REPLAYS)
               {
                  _loc4_;
                  this.lobby_client.updatePlayerStatus(Global.§_-dp§);
                  _loc3_;
                  _loc3_;
                  SafeGlobal.TIMELINE.stopAfkChecking();
                  _loc3_;
               }
            }
            else
            {
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_VIEW_REPLAYS)
               {
                  if(param2 == Global.SCREEN_EDIT_REPLAY)
                  {
                     this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                     SafeGlobal.TIMELINE.startAfkChecking();
                  }
               }
               else if(param1 == Global.SCREEN_REPLAY_FAIL)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                  _loc3_;
                  SafeGlobal.TIMELINE.startAfkChecking();
               }
               else
               {
                  _loc3_;
                  if(param1 == Global.SCREEN_REPLAY_SUCCESS)
                  {
                     _loc3_;
                     _loc3_;
                     this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     SafeGlobal.TIMELINE.startAfkChecking();
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     if(param1 == Global.SCREEN_CW_GAME)
                     {
                        _loc4_;
                        _loc4_;
                        this.lobby_client.updatePlayerStatus(Global.§_-lD§);
                        SafeGlobal.TIMELINE.stopAfkChecking();
                        _loc4_;
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(param1 == Global.SCREEN_CW_END)
                        {
                           _loc4_;
                           this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                           _loc4_;
                           _loc4_;
                           SafeGlobal.TIMELINE.startAfkChecking();
                           _loc4_;
                           _loc4_;
                        }
                        else if(param1 == Global.SCREEN_TUTORIAL_GAME)
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           this.lobby_client.updatePlayerStatus(Global.§_-tV§);
                           SafeGlobal.TIMELINE.stopAfkChecking();
                        }
                        else if(param1 == Global.SCREEN_TUTORIAL_END)
                        {
                           this.lobby_client.updatePlayerStatus(Global.§_-yP§);
                           SafeGlobal.TIMELINE.startAfkChecking();
                        }
                        
                        
                     }
                  }
               }
               
            }
            
         }
      }
      
      public function displayLobbyScreen(param1:uint, param2:Boolean = false) : void
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc5_:LobbyScreen = null;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         var _loc11_:LobbyScreen = null;
         var _loc12_:String = null;
         var _loc13_:* = 0;
         _loc14_;
         _loc14_;
         this.checkScreenMusic(param1);
         var _loc3_:* = -1;
         _loc14_;
         if(Global.nav_path.length > 0)
         {
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc3_ = Global.nav_path[Global.nav_path.length - 1];
         }
         _loc15_;
         if(Global.nav_path.length > 0)
         {
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc7_ = Global.nav_path[Global.nav_path.length - 1];
            if((Global.nav_path[Global.nav_path.length - 1]) == param1)
            {
               if(!param2)
               {
                  _loc15_;
                  _loc14_;
                  _loc15_;
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  _loc15_;
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  if(!(_loc7_ == Global.SCREEN_EDITOR_SLOTS) && !(_loc7_ == Global.SCREEN_BROWSE_YOUR_CUSTOM) && !(_loc7_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM) && !(_loc7_ == Global.SCREEN_BROWSE_LATEST_CUSTOM) && !(_loc7_ == Global.SCREEN_BROWSE_GAMES))
                  {
                     return;
                  }
               }
            }
            _loc8_ = new Array();
            _loc15_;
            _loc9_ = false;
            _loc15_;
            _loc15_;
            _loc10_ = 0;
            while(_loc10_ < Global.nav_path.length)
            {
               _loc14_;
               _loc14_;
               _loc14_;
               if(Global.nav_path[_loc10_] == param1)
               {
                  _loc14_;
                  _loc8_ = Global.nav_path.splice(_loc10_ + 1);
                  _loc14_;
                  _loc9_ = true;
                  _loc14_;
                  _loc14_;
                  break;
               }
               _loc10_++;
               _loc14_;
            }
            _loc15_;
            _loc15_;
            _loc14_;
            if(_loc8_.length == 0 && _loc9_ == false)
            {
               _loc15_;
               Global.nav_path.push(param1);
            }
         }
         else
         {
            _loc14_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc15_;
            if(!(param1 == Global.SCREEN_TUTORIAL_GAME) && !(param1 == Global.SCREEN_PRELOADER) && !(param1 == Global.SCREEN_LOGIN) && !(param1 == Global.SCREEN_REGISTER) && !(param1 == Global.SCREEN_PASSWORD) && !(param1 == Global.SCREEN_LOADING_LOBBY) && !(param1 == Global.SCREEN_FUNKYPEAR) && !(param1 == Global.SCREEN_KONGREGATE) && !(param1 == Global.SCREEN_BETA) && !(param1 == Global.§_-7P§) && !(param1 == Global.§_-4D§))
            {
               _loc14_;
               _loc14_;
               Global.nav_path.push(param1);
               _loc14_;
               _loc14_;
            }
            _loc15_;
            _loc15_;
            if(param1 == Global.SCREEN_LOGIN)
            {
               if(_loc3_ == -1 && param1 == Global.SCREEN_LOGIN)
               {
                  _loc11_ = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
                  if(_loc11_ != null)
                  {
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     if(_loc11_ is §_-rT§)
                     {
                        _loc15_;
                        _loc15_;
                        _loc15_;
                        _loc15_;
                        _loc3_ = Global.SCREEN_REGISTER;
                        _loc15_;
                        _loc15_;
                     }
                     if(_loc11_ is §_-hL§)
                     {
                        _loc15_;
                        _loc15_;
                        _loc15_;
                        _loc3_ = Global.SCREEN_PASSWORD;
                     }
                  }
               }
            }
         }
         if(Global.nav_path.length > 0)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc12_ = "";
            _loc15_;
            _loc13_ = 0;
            _loc15_;
            _loc15_;
            while(true)
            {
               _loc14_;
               if(_loc13_ >= Global.nav_path.length)
               {
                  break;
               }
               _loc14_;
               _loc14_;
               _loc15_;
               _loc14_;
               _loc12_ = _loc12_ + "[";
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc12_ = _loc12_ + String(Global.nav_path[_loc13_]);
               _loc12_ = _loc12_ + "]-";
               _loc14_;
               _loc14_;
               _loc13_++;
               _loc15_;
            }
         }
         var _loc4_:int = param1;
         _loc15_;
         this.checkLobbyStatus(_loc4_,_loc3_);
         _loc15_;
         _loc15_;
         _loc15_;
         if(_loc3_ == Global.SCREEN_WAITING_AREA && !(_loc4_ == Global.SCREEN_ZOOMGAME))
         {
            _loc15_;
            _loc15_;
            _loc15_;
            Global.lobby_client.quitWaitingArea();
            _loc14_;
         }
         _loc15_;
         _loc15_;
         if(_loc4_ == Global.SCREEN_GAME_END)
         {
            _loc14_;
            this.createLobbyClient();
            _loc14_;
         }
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         if(_loc3_ == Global.SCREEN_GAME_END || _loc3_ == Global.SCREEN_ZOOMGAME && _loc4_ == Global.SCREEN_HUB)
         {
            _loc14_;
            _loc14_;
            if(SafeGlobal.game_client != null)
            {
               _loc15_;
               _loc15_;
               SafeGlobal.game_client.disconnectGameClient();
               _loc14_;
               _loc14_;
            }
         }
         _loc14_;
         _loc14_;
         _loc14_;
         _loc14_;
         _loc15_;
         if((_loc3_ == Global.SCREEN_VIEW_REPLAYS || _loc3_ == Global.SCREEN_REPLAY_FAIL || _loc3_ == Global.SCREEN_REPLAY_SUCCESS) && _loc4_ == Global.SCREEN_HUB)
         {
            Global.lobby_client.disconnectReplayEditor();
         }
         _loc14_;
         _loc14_;
         _loc14_;
         if(this.lobby_players != null)
         {
            _loc15_;
            _loc15_;
            this.lobby_players.updateScreen(_loc3_,_loc4_);
         }
         _loc14_;
         _loc14_;
         if(Global.help_manager != null)
         {
            Global.help_manager.tweenOffHelp();
            _loc14_;
            _loc14_;
         }
         if(_loc4_ == Global.SCREEN_ZOOMGAME)
         {
            _loc15_;
            if(this.lobby_players != null)
            {
               _loc14_;
               this.lobby_players.setGameMaxPlayers();
            }
         }
         Global.disable_clicks = true;
         _loc14_;
         _loc14_;
         Global.saved_last_click = 0;
         if(param1 == Global.SCREEN_HUB)
         {
            Global.page_dir_clicked = 0;
            _loc14_;
            _loc14_;
            _loc5_ = new LS_Hub();
            _loc15_;
         }
         else
         {
            _loc15_;
            _loc14_;
            if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
            {
               _loc14_;
               _loc5_ = new LS_CampaignSelect();
            }
            else
            {
               _loc14_;
               if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
               {
                  _loc14_;
                  _loc5_ = new LS_BrowseCampaign();
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  if(param1 == Global.SCREEN_BROWSE_GAMES)
                  {
                     _loc5_ = new LS_BrowseGames();
                  }
                  else
                  {
                     _loc15_;
                     if(param1 == Global.SCREEN_WAITING_AREA)
                     {
                        _loc14_;
                        _loc5_ = new LS_WaitingArea();
                     }
                     else if(param1 == Global.SCREEN_CUSTOM_GAME)
                     {
                        _loc15_;
                        _loc15_;
                        _loc5_ = new LS_CustomGame();
                     }
                     else
                     {
                        _loc15_;
                        _loc15_;
                        if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
                        {
                           _loc5_ = new LS_BrowseCustom();
                        }
                        else
                        {
                           _loc14_;
                           _loc14_;
                           _loc14_;
                           _loc14_;
                           if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
                           {
                              _loc15_;
                              _loc5_ = new LS_Loading();
                           }
                           else
                           {
                              _loc15_;
                              if(param1 == Global.SCREEN_LOADING_CUSTOM_GAME)
                              {
                                 _loc15_;
                                 _loc15_;
                                 _loc5_ = new LS_Loading();
                              }
                              else
                              {
                                 _loc15_;
                                 _loc15_;
                                 _loc14_;
                                 if(param1 == Global.SCREEN_EDITOR)
                                 {
                                    _loc5_ = new LS_Editor();
                                 }
                                 else
                                 {
                                    _loc15_;
                                    if(param1 == Global.SCREEN_ZOOMGAME)
                                    {
                                       _loc5_ = new §_-b3§();
                                    }
                                    else
                                    {
                                       _loc15_;
                                       if(param1 == Global.SCREEN_GAME_END)
                                       {
                                          _loc14_;
                                          _loc5_ = new LS_GameEnd();
                                       }
                                       else if(param1 == Global.SCREEN_EDITOR_SLOTS)
                                       {
                                          _loc15_;
                                          _loc5_ = new LS_EditorSlots();
                                       }
                                       else
                                       {
                                          _loc15_;
                                          _loc15_;
                                          if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
                                          {
                                             _loc5_ = new LS_BrowseCampaignCustom();
                                          }
                                          else if(param1 == Global.SCREEN_LOGIN)
                                          {
                                             _loc15_;
                                             _loc5_ = new §_-2d§();
                                          }
                                          else
                                          {
                                             _loc15_;
                                             _loc15_;
                                             if(param1 == Global.SCREEN_REGISTER)
                                             {
                                                _loc5_ = new §_-rT§();
                                             }
                                             else if(param1 == Global.SCREEN_PASSWORD)
                                             {
                                                _loc5_ = new §_-hL§();
                                             }
                                             else if(param1 == Global.SCREEN_LOADING_LOBBY)
                                             {
                                                _loc5_ = new LS_LoadingLobby();
                                             }
                                             else
                                             {
                                                _loc14_;
                                                if(param1 == Global.SCREEN_ERROR)
                                                {
                                                   _loc5_ = new §_-0e§();
                                                }
                                                else
                                                {
                                                   _loc15_;
                                                   _loc15_;
                                                   if(param1 == Global.SCREEN_BANNED)
                                                   {
                                                      _loc15_;
                                                      _loc5_ = new §_-AX§();
                                                   }
                                                   else if(param1 == Global.SCREEN_VERSIONCONTROL)
                                                   {
                                                      _loc5_ = new §_-GD§();
                                                   }
                                                   else
                                                   {
                                                      _loc14_;
                                                      _loc14_;
                                                      if(param1 == Global.SCREEN_LOADING_SHARE_CODE)
                                                      {
                                                         _loc5_ = new LS_LoadingShareCode();
                                                      }
                                                      else
                                                      {
                                                         _loc14_;
                                                         _loc14_;
                                                         if(param1 == Global.SCREEN_OFFLINE_GAME)
                                                         {
                                                            _loc14_;
                                                            _loc14_;
                                                            _loc5_ = new §_-Np§();
                                                         }
                                                         else if(param1 == Global.SCREEN_TUTORIAL_GAME)
                                                         {
                                                            _loc15_;
                                                            _loc15_;
                                                            _loc5_ = new §_-SZ§();
                                                         }
                                                         else
                                                         {
                                                            _loc15_;
                                                            _loc15_;
                                                            if(param1 == Global.SCREEN_TUTORIAL_END)
                                                            {
                                                               _loc5_ = new LS_TutorialEnd();
                                                            }
                                                            else if(param1 == Global.SCREEN_EDITOR_GAME)
                                                            {
                                                               _loc5_ = new LS_EditorGame();
                                                            }
                                                            else
                                                            {
                                                               _loc15_;
                                                               _loc15_;
                                                               if(param1 == Global.SCREEN_OFFLINE_END)
                                                               {
                                                                  _loc14_;
                                                                  _loc5_ = new LS_OfflineEnd();
                                                               }
                                                               else
                                                               {
                                                                  _loc15_;
                                                                  _loc15_;
                                                                  if(param1 == Global.SCREEN_CW_GAME)
                                                                  {
                                                                     _loc14_;
                                                                     _loc14_;
                                                                     _loc5_ = new §_-nR§();
                                                                  }
                                                                  else if(param1 == Global.SCREEN_CW_END)
                                                                  {
                                                                     _loc5_ = new LS_CustomWeaponEnd();
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc14_;
                                                                     _loc14_;
                                                                     if(param1 == Global.SCREEN_FUNKYPEAR)
                                                                     {
                                                                        _loc5_ = new §_-xR§();
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc15_;
                                                                        _loc15_;
                                                                        if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                                                                        {
                                                                           _loc15_;
                                                                           _loc15_;
                                                                           _loc5_ = new LS_LatestCustom();
                                                                        }
                                                                        else if(param1 == Global.SCREEN_CUSTOM_SELECT)
                                                                        {
                                                                           _loc14_;
                                                                           _loc5_ = new §_-QX§();
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc15_;
                                                                           if(param1 == Global.SCREEN_LOADING_LATEST_MAPS)
                                                                           {
                                                                              _loc5_ = new LS_LoadingMaps();
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc15_;
                                                                              _loc15_;
                                                                              if(param1 == Global.SCREEN_VIEW_REPLAYS)
                                                                              {
                                                                                 _loc5_ = new LS_ViewReplays();
                                                                              }
                                                                              else if(param1 == Global.SCREEN_LOADING_REPLAYS)
                                                                              {
                                                                                 _loc5_ = new LS_LoadingReplays();
                                                                              }
                                                                              else if(param1 == Global.SCREEN_EDIT_REPLAY)
                                                                              {
                                                                                 _loc5_ = new LS_EditReplay();
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc15_;
                                                                                 if(param1 == Global.SCREEN_SAVING_REPLAY)
                                                                                 {
                                                                                    _loc15_;
                                                                                    _loc15_;
                                                                                    _loc5_ = new LS_SavingReplay();
                                                                                 }
                                                                                 else if(param1 == Global.SCREEN_REPLAY_FAIL)
                                                                                 {
                                                                                    _loc5_ = new LS_SaveReplayFail();
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc15_;
                                                                                    _loc15_;
                                                                                    if(param1 == Global.SCREEN_REPLAY_SUCCESS)
                                                                                    {
                                                                                       _loc15_;
                                                                                       _loc5_ = new LS_SaveReplaySuccess();
                                                                                    }
                                                                                    else if(param1 == Global.SCREEN_LOADING_RECONNECT)
                                                                                    {
                                                                                       _loc5_ = new LS_LoadingReconnect();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc14_;
                                                                                       _loc14_;
                                                                                       if(param1 == Global.SCREEN_BETA)
                                                                                       {
                                                                                          _loc5_ = new §_-1a§();
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc14_;
                                                                                          _loc14_;
                                                                                          _loc14_;
                                                                                          if(param1 == Global.§_-mS§)
                                                                                          {
                                                                                             _loc14_;
                                                                                             _loc14_;
                                                                                             _loc5_ = new §_-Ac§();
                                                                                          }
                                                                                          else if(param1 == Global.§_-7P§)
                                                                                          {
                                                                                             _loc15_;
                                                                                             _loc5_ = new §_-Ml§();
                                                                                          }
                                                                                          else if(param1 == Global.§_-1y§)
                                                                                          {
                                                                                             _loc14_;
                                                                                             _loc5_ = new §_-0-O§();
                                                                                          }
                                                                                          else if(param1 == Global.§_-4D§)
                                                                                          {
                                                                                             _loc5_ = new §_-v2§();
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
         _loc5_.init(this.lobby_canvas,_loc3_);
         var _loc6_:LobbyScreen = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
         if(_loc6_ != null)
         {
            _loc5_.name = "new_screen";
         }
         else
         {
            _loc5_.name = "current_screen";
            _loc14_;
            _loc14_;
         }
         this.lobby_canvas.addChild(_loc5_);
         _loc5_.§_-4L§(_loc3_);
         _loc15_;
         _loc15_;
         _loc15_;
         if(this.lobby_nav != null)
         {
            _loc14_;
            this.lobby_nav.updateTitleText(_loc4_);
            _loc15_;
         }
         if(_loc6_ != null)
         {
            _loc15_;
            _loc15_;
            _loc15_;
            _loc14_;
            if(this.lobby_nav != null)
            {
               this.lobby_nav.§_-Di§();
            }
            _loc6_.§_-s-§(param1);
         }
         else
         {
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            if(_loc3_ == -1)
            {
               _loc14_;
               _loc15_;
               _loc15_;
               if(this.lobby_nav != null)
               {
                  _loc15_;
                  this.lobby_nav.updateButtons(_loc4_);
               }
               Global.disable_clicks = false;
               _loc15_;
            }
            else if(_loc4_ == Global.SCREEN_GAME_END)
            {
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               if(this.lobby_nav != null)
               {
                  _loc14_;
                  _loc14_;
                  _loc15_;
                  this.lobby_nav.updateButtons(_loc4_);
               }
               Global.disable_clicks = false;
               _loc15_;
               _loc15_;
            }
            else if(this.lobby_nav != null)
            {
               this.lobby_nav.§_-Di§();
            }
            
            
         }
      }
      
      public function displayAwardUnlocked(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.award_panel.§_-9R§(param1,param2);
      }
      
      public function displayGameMods(param1:Array) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:LobbyScreen = null;
         var _loc2_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc5_;
         _loc5_;
         if(_loc2_ == Global.SCREEN_CUSTOM_GAME)
         {
            _loc3_ = this.lobby_canvas.getChildByName("current_screen") as LobbyScreen;
            _loc4_;
            if(_loc3_ != null)
            {
               _loc5_;
               (_loc3_ as LS_CustomGame).§_-DW§(param1);
            }
         }
      }
      
      public function displayGamePositions(param1:LS_GameEnd) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         this.lobby_players.visible = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.lobby_players.showGameTab();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.lobby_players.focusGameTab();
         _loc2_;
         _loc2_;
         _loc2_;
         this.lobby_players.activateChat();
         _loc2_;
         _loc2_;
         this.lobby_players.tweenInFromGame(param1);
      }
      
      public function tryUpdateGamePositions() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc2_;
         _loc2_;
         if(_loc1_ == Global.SCREEN_GAME_END)
         {
            _loc2_;
            _loc2_;
            this.lobby_players.updateGamePositions();
         }
      }
      
      public function displayGameQuitScreen() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.showContent();
         _loc2_;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_GAME_END);
      }
      
      public function displayGameEndScreen() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.showContent();
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_GAME_END);
      }
      
      public function displayTutorialEndScreen() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.showContent();
         _loc2_;
         _loc2_;
         Global.nav_path.length = 0;
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_TUTORIAL_END);
         _loc1_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
      }
      
      public function finishEditorGame() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc3_;
         _loc3_;
         if(_loc1_ != Global.SCREEN_VERSIONCONTROL)
         {
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_EDITOR);
         }
      }
      
      public function finishOfflineGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_OFFLINE_END);
      }
      
      public function finishCustomWeaponGame() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc2_;
         _loc2_;
         if(_loc1_ != Global.SCREEN_VERSIONCONTROL)
         {
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_CW_END);
         }
      }
      
      public function updateLobbyNav() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.lobby_nav.updateButtons(Global.nav_path[Global.nav_path.length - 1]);
         _loc1_;
         _loc1_;
         Global.disable_clicks = false;
      }
      
      public function removeOldScreen() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         (this.lobby_canvas.getChildByName("current_screen") as LobbyScreen).finishTweenOff();
         _loc4_;
         this.lobby_canvas.removeChild(this.lobby_canvas.getChildByName("current_screen"));
         var _loc1_:LobbyScreen = this.lobby_canvas.getChildByName("new_screen") as LobbyScreen;
         _loc1_.name = "current_screen";
         _loc3_;
         _loc3_;
         _loc2_ = -1;
         _loc3_;
         _loc3_;
         if(Global.nav_path.length > 0)
         {
            _loc2_ = Global.nav_path[Global.nav_path.length - 1];
            _loc3_;
            _loc3_;
            _loc3_;
            if(!(_loc2_ == Global.SCREEN_WAITING_AREA) && !(_loc2_ == Global.SCREEN_GAME_END))
            {
               this.lobby_nav.updateButtons(_loc2_);
               _loc4_;
               _loc4_;
               Global.disable_clicks = false;
            }
         }
         _loc1_.finishTweenOn();
         _loc3_;
         _loc3_;
         if(!(Global.help_manager == null) && !(_loc2_ == -1))
         {
            Global.help_manager.§_-MK§(_loc2_);
         }
         if(_loc2_ == Global.SCREEN_LOADING_BROWSE_GAMES)
         {
            _loc3_;
            _loc3_;
            this.lobby_client.getBrowseGameRooms();
         }
         _loc3_;
         _loc3_;
         if(_loc2_ == Global.SCREEN_LOADING_LATEST_MAPS)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            this.lobby_client.getLatestCustomMaps(Global.custom_timestamp);
         }
         _loc4_;
         _loc4_;
         if(_loc2_ == Global.SCREEN_LOADING_CUSTOM_GAME)
         {
         }
         _loc4_;
         if(_loc2_ == Global.SCREEN_LOADING_SHARE_CODE)
         {
            this.lobby_client.joinGameFromCode(Global.game_share_code);
         }
         _loc3_;
         if(_loc2_ == Global.SCREEN_HUB)
         {
            _loc3_;
            this.finishRemoveIntroLogo();
         }
         if(Global.saved_last_click != 0)
         {
            this.processLastClick();
            _loc4_;
         }
         Global.saved_last_click = 0;
      }
      
      private function processLastClick() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(Global.saved_last_click == 1)
         {
            this.backToHub();
            _loc1_;
         }
         else
         {
            _loc2_;
            if(Global.saved_last_click == 2)
            {
               _loc2_;
               this.backOneScreen();
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc1_;
               if(Global.saved_last_click == 3)
               {
                  this.selectViewCampaigns();
                  _loc1_;
                  _loc1_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(Global.saved_last_click == 4)
                  {
                     _loc2_;
                     this.selectBrowseGames();
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     if(Global.saved_last_click == 5)
                     {
                        _loc1_;
                        this.selectCampaign(Global.saved_click_data);
                     }
                     else if(Global.saved_last_click == 6)
                     {
                        this.selectLevel(Global.saved_click_data);
                        _loc1_;
                     }
                     else if(Global.saved_last_click == 7)
                     {
                        this.selectNextPage();
                     }
                     else
                     {
                        _loc2_;
                        _loc2_;
                        if(Global.saved_last_click == 8)
                        {
                           this.selectPreviousPage();
                           _loc1_;
                           _loc1_;
                        }
                        else
                        {
                           _loc1_;
                           _loc1_;
                           if(Global.saved_last_click == 9)
                           {
                              this.selectCreateNewCustom();
                           }
                           else
                           {
                              _loc1_;
                              if(Global.saved_last_click == 10)
                              {
                                 _loc2_;
                                 _loc2_;
                                 this.selectViewEditorSlots();
                              }
                              else
                              {
                                 _loc2_;
                                 _loc2_;
                                 if(Global.saved_last_click == 11)
                                 {
                                    _loc1_;
                                    _loc1_;
                                    this.selectOfflineGame();
                                    _loc2_;
                                    _loc2_;
                                 }
                                 else
                                 {
                                    _loc2_;
                                    if(Global.saved_last_click == 12)
                                    {
                                       this.selectBrowseYourCustom();
                                    }
                                    else
                                    {
                                       _loc2_;
                                       _loc2_;
                                       _loc2_;
                                       _loc2_;
                                       if(Global.saved_last_click == 13)
                                       {
                                          this.selectBrowseCampaignCustom();
                                          _loc1_;
                                       }
                                       else
                                       {
                                          _loc2_;
                                          if(Global.saved_last_click == 14)
                                          {
                                             this.selectBrowseLatestCustom();
                                          }
                                          else if(Global.saved_last_click == 15)
                                          {
                                             _loc1_;
                                             _loc1_;
                                             this.selectViewReplayEditor();
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
      
      public function removeZoomGameScreen() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         if(this.lobby_canvas.numChildren > 0)
         {
            _loc2_;
            _loc2_;
            _loc1_ = this.lobby_canvas.numChildren - 1;
            while(_loc1_ >= 0)
            {
               this.lobby_canvas.removeChild(this.lobby_canvas.getChildAt(_loc1_));
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc1_--;
               _loc2_;
            }
            _loc3_;
         }
         this.bringBlackBarToFront();
      }
      
      public function checkShopItemRefresh(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         var _loc2_:String = param1.slice(0,1);
         var _loc3_:int = int(param1.slice(1,1));
         var _loc4_:* = -1;
         _loc5_;
         if(Global.nav_path.length > 0)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_ = Global.nav_path[Global.nav_path.length - 1];
         }
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(_loc2_ == "S" && _loc4_ == Global.SCREEN_EDITOR_SLOTS)
         {
            this.displayLobbyScreen(Global.SCREEN_EDITOR_SLOTS,true);
         }
         _loc6_;
         _loc6_;
         if(_loc2_ == "C" && _loc4_ == Global.SCREEN_CAMPAIGN_SELECT)
         {
            (this.lobby_canvas.getChildByName("current_screen") as LS_CampaignSelect).refreshCampaignData();
         }
      }
      
      public function selectTutorialGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.displayLobbyScreen(Global.SCREEN_TUTORIAL_GAME);
      }
      
      public function selectOfflineGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_OFFLINE_GAME);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.saved_last_click = 11;
         }
      }
      
      public function selectViewCampaigns() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc1_;
            _loc1_;
            this.displayLobbyScreen(Global.SCREEN_CAMPAIGN_SELECT);
            _loc1_;
            _loc1_;
         }
         else
         {
            Global.saved_last_click = 3;
         }
      }
      
      public function selectBrowseGames() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            Global.saved_rooms = new Array();
            _loc2_;
            _loc2_;
            Global.saved_rooms.length = 0;
            _loc1_;
            _loc1_;
            this.displayLobbyScreen(Global.SCREEN_LOADING_BROWSE_GAMES);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.saved_last_click = 4;
         }
      }
      
      public function selectCampaign(param1:int = 0) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            SafeGlobal.selected_level.campaign_id = param1;
            _loc2_;
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_BROWSE_CAMPAIGN);
            _loc3_;
            _loc3_;
         }
         else
         {
            Global.saved_last_click = 5;
            _loc3_;
            _loc3_;
            Global.saved_click_data = param1;
         }
      }
      
      public function selectLevel(param1:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc9_;
         _loc8_;
         _loc8_;
         if(!Global.disable_clicks)
         {
            SafeGlobal.selected_level.§_-p2§ = param1;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc2_ = Global.nav_path[Global.nav_path.length - 1];
            _loc9_;
            _loc9_;
            if(_loc2_ == Global.SCREEN_BROWSE_CAMPAIGN)
            {
               _loc8_;
               _loc8_;
               SafeGlobal.selected_level.level_id = param1;
               SafeGlobal.selected_level.§_-Td§ = true;
               SafeGlobal.selected_level.§_-Vv§();
               _loc8_;
               SafeGlobal.selected_level.screen_total = 5;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               SafeGlobal.selected_level.thumbnail = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].thumbs[SafeGlobal.selected_level.level_id];
               _loc8_;
               _loc9_;
               _loc9_;
               _loc8_;
               SafeGlobal.selected_level.start_x = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[param1].x;
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               SafeGlobal.selected_level.start_y = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[param1].y;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               SafeGlobal.selected_level.mods = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].mods[SafeGlobal.selected_level.level_id];
               _loc8_;
               _loc8_;
               SafeGlobal.selected_level.max_players = 4;
               _loc9_;
               _loc9_;
               SafeGlobal.selected_level.§_-Wn§ = false;
               _loc9_;
               _loc9_;
               _loc8_;
               SafeGlobal.selected_level.§_-Ga§ = false;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               this.lobby_client.startCampaign(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
               this.displayLobbyScreen(Global.SCREEN_WAITING_AREA);
            }
            else
            {
               _loc9_;
               if(_loc2_ == Global.SCREEN_BROWSE_GAMES)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  SafeGlobal.selected_level.§_-uM§(Global.saved_rooms[param1].data.CampaignKey);
                  _loc9_;
                  SafeGlobal.selected_level.screen_total = Global.saved_rooms.length;
                  _loc8_;
                  _loc8_;
                  if(Global.saved_rooms.length > 5)
                  {
                     _loc9_;
                     SafeGlobal.selected_level.screen_total = 5;
                     _loc8_;
                     _loc8_;
                  }
                  _loc8_;
                  _loc8_;
                  SafeGlobal.selected_level.start_x = Global.positions[SafeGlobal.selected_level.screen_total][SafeGlobal.selected_level.§_-p2§].x;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  SafeGlobal.selected_level.start_y = Global.positions[SafeGlobal.selected_level.screen_total][SafeGlobal.selected_level.§_-p2§].y;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  SafeGlobal.selected_level.room_name = Global.saved_rooms[param1].id;
                  SafeGlobal.selected_level.map_id = Global.saved_rooms[param1].data.MapId;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  SafeGlobal.selected_level.max_players = Global.saved_rooms[param1].data.MaxPlayers;
                  _loc9_;
                  _loc8_;
                  _loc9_;
                  SafeGlobal.selected_level.§_-hx§ = Global.saved_rooms[param1].onlineUsers;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  SafeGlobal.selected_level.thumbnail = Global.saved_rooms[param1].data.Thumbnail;
                  SafeGlobal.selected_level.mods = Global.saved_rooms[param1].data.Mods;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  SafeGlobal.selected_level.§_-Wn§ = false;
                  _loc8_;
                  _loc8_;
                  SafeGlobal.selected_level.created_by = Global.saved_rooms[param1].data.Creator;
                  _loc9_;
                  _loc8_;
                  SafeGlobal.selected_level.from_browse_games = true;
                  _loc8_;
                  _loc8_;
                  _loc3_ = false;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  if(Global.saved_rooms[param1].data.TeamBattle != null)
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(Global.saved_rooms[param1].data.TeamBattle == "1")
                     {
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc3_ = true;
                        _loc9_;
                     }
                  }
                  SafeGlobal.selected_level.§_-Ga§ = _loc3_;
                  this.lobby_client.joinSpecificGame(SafeGlobal.selected_level.room_name,SafeGlobal.selected_level.map_id,SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.mods,String(SafeGlobal.selected_level.max_players),"0",Global.saved_rooms[param1].data.TeamBattle,true);
                  _loc9_;
                  _loc9_;
                  this.displayLobbyScreen(Global.SCREEN_WAITING_AREA);
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  if(_loc2_ == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                  {
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.§_-Td§ = false;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.§_-tn§ = false;
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.screen_total = Global.latest_maps.length;
                     _loc9_;
                     _loc8_;
                     if(SafeGlobal.selected_level.screen_total > 5)
                     {
                        _loc8_;
                        SafeGlobal.selected_level.screen_total = 5;
                        _loc9_;
                        _loc9_;
                     }
                     _loc9_;
                     _loc8_;
                     SafeGlobal.selected_level.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
                     _loc8_;
                     _loc9_;
                     SafeGlobal.selected_level.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     SafeGlobal.selected_level.created_by = Global.latest_maps[param1].created_by;
                     _loc9_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     SafeGlobal.selected_level.map_id = Global.latest_maps[param1].key;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.thumbnail = Global.latest_maps[param1].thumbnail;
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc8_;
                     _loc8_;
                     SafeGlobal.selected_level.mods = "";
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.§_-Wn§ = true;
                     _loc8_;
                     _loc8_;
                     this.displayLobbyScreen(Global.SCREEN_CUSTOM_GAME);
                  }
                  else if(_loc2_ == Global.SCREEN_BROWSE_YOUR_CUSTOM)
                  {
                     _loc9_;
                     SafeGlobal.selected_level.§_-Td§ = false;
                     _loc9_;
                     SafeGlobal.selected_level.§_-tn§ = false;
                     _loc9_;
                     _loc9_;
                     SafeGlobal.selected_level.screen_total = Global.custom_maps.length;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(SafeGlobal.selected_level.screen_total > 5)
                     {
                        _loc8_;
                        _loc8_;
                        SafeGlobal.selected_level.screen_total = 5;
                     }
                     SafeGlobal.selected_level.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
                     SafeGlobal.selected_level.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
                     _loc8_;
                     SafeGlobal.selected_level.slot_id = param1 + Global.page_id_your_custom * 5;
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc9_;
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc9_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     SafeGlobal.selected_level.map_id = Global.custom_maps[param1 + Global.page_id_your_custom * 5].mapKey;
                     _loc9_;
                     SafeGlobal.selected_level.thumbnail = Global.custom_maps[param1 + Global.page_id_your_custom * 5].mapData;
                     _loc8_;
                     _loc8_;
                     SafeGlobal.selected_level.mods = "";
                     SafeGlobal.selected_level.§_-Wn§ = true;
                     _loc9_;
                     SafeGlobal.selected_level.created_by = TimelineGlobal.player_name;
                     this.displayLobbyScreen(Global.SCREEN_CUSTOM_GAME);
                     _loc9_;
                  }
                  else
                  {
                     _loc9_;
                     if(_loc2_ == Global.SCREEN_EDITOR_SLOTS)
                     {
                        Global.selected_map_slot = param1 + Global.page_id_editorslots * 5;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc8_;
                        if(Global.custom_maps[Global.selected_map_slot] == null || Global.custom_maps[Global.selected_map_slot].mapData == "")
                        {
                           _loc9_;
                           _loc9_;
                           _loc6_ = 0;
                           while(true)
                           {
                              if(_loc6_ >= Global.custom_maps.length)
                              {
                                 _loc9_;
                                 break;
                              }
                              _loc8_;
                              _loc8_;
                              _loc8_;
                              _loc8_;
                              if(Global.custom_maps[_loc6_] == null || Global.custom_maps[_loc6_].mapData == "")
                              {
                                 _loc8_;
                                 Global.selected_map_slot = _loc6_;
                                 break;
                              }
                              _loc6_++;
                              _loc9_;
                              _loc9_;
                           }
                        }
                        _loc4_ = 5;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc5_ = Global.selected_map_slot;
                        while(true)
                        {
                           _loc9_;
                           _loc9_;
                           if(_loc5_ <= 4)
                           {
                              break;
                           }
                           _loc9_;
                           _loc9_;
                           _loc9_;
                           _loc9_;
                           _loc5_ = _loc5_ - 5;
                        }
                        _loc9_;
                        SafeGlobal.selected_level.§_-p2§ = _loc5_;
                        SafeGlobal.selected_level.start_x = Global.positions[_loc4_][SafeGlobal.selected_level.§_-p2§].x;
                        _loc8_;
                        _loc9_;
                        SafeGlobal.selected_level.start_y = Global.positions[_loc4_][SafeGlobal.selected_level.§_-p2§].y;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        if(Global.custom_maps[Global.selected_map_slot] != null)
                        {
                           _loc8_;
                           if(Global.custom_maps[Global.selected_map_slot].mapData != "")
                           {
                              _loc9_;
                              Global.lobby_client.checkEditorMD5(Global.selected_map_slot);
                           }
                        }
                        this.displayLobbyScreen(Global.SCREEN_EDITOR);
                     }
                     else
                     {
                        _loc8_;
                        if(_loc2_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
                        {
                           _loc9_;
                           SafeGlobal.selected_level.§_-Td§ = false;
                           _loc9_;
                           _loc8_;
                           _loc8_;
                           _loc9_;
                           _loc9_;
                           SafeGlobal.selected_level.§_-tn§ = false;
                           SafeGlobal.selected_level.screen_total = 5;
                           SafeGlobal.selected_level.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
                           _loc8_;
                           _loc8_;
                           SafeGlobal.selected_level.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
                           _loc8_;
                           SafeGlobal.selected_level.campaign_id = Global.§_-1c§;
                           _loc8_;
                           SafeGlobal.selected_level.level_id = SafeGlobal.selected_level.§_-p2§;
                           _loc8_;
                           SafeGlobal.selected_level.map_id = SafeGlobal.campaigns[Global.§_-1c§].keys[SafeGlobal.selected_level.§_-p2§];
                           _loc9_;
                           _loc9_;
                           SafeGlobal.selected_level.thumbnail = SafeGlobal.campaigns[Global.§_-1c§].thumbs[SafeGlobal.selected_level.§_-p2§];
                           _loc9_;
                           SafeGlobal.selected_level.mods = "";
                           _loc8_;
                           SafeGlobal.selected_level.created_by = "";
                           _loc9_;
                           _loc9_;
                           SafeGlobal.selected_level.§_-Wn§ = true;
                           _loc8_;
                           this.displayLobbyScreen(Global.SCREEN_CUSTOM_GAME);
                           _loc9_;
                           _loc9_;
                        }
                        else
                        {
                           _loc8_;
                           if(_loc2_ == Global.SCREEN_VIEW_REPLAYS)
                           {
                              _loc8_;
                              _loc8_;
                              _loc9_;
                              _loc9_;
                              _loc9_;
                              SafeGlobal.selected_level.§_-Td§ = false;
                              SafeGlobal.selected_level.§_-tn§ = false;
                              _loc8_;
                              _loc8_;
                              _loc9_;
                              _loc9_;
                              _loc7_ = Global.replay_list.length;
                              _loc8_;
                              if((Global.replay_list.length) > 5)
                              {
                                 _loc7_ = 5;
                              }
                              SafeGlobal.selected_level.screen_total = _loc7_;
                              _loc9_;
                              SafeGlobal.selected_level.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
                              SafeGlobal.selected_level.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
                              _loc8_;
                              SafeGlobal.selected_level.slot_id = Global.replay_list[param1].replay_slot;
                              _loc8_;
                              SafeGlobal.selected_level.§_-p2§ = param1;
                              SafeGlobal.selected_level.level_id = param1;
                              _loc8_;
                              _loc8_;
                              _loc8_;
                              SafeGlobal.selected_level.thumbnail = Global.replay_list[param1].thumbnail;
                              SafeGlobal.selected_level.mods = Global.replay_list[param1].mods;
                              this.displayLobbyScreen(Global.SCREEN_EDIT_REPLAY);
                           }
                        }
                     }
                  }
                  
               }
            }
         }
         else
         {
            Global.saved_last_click = 6;
            _loc9_;
            _loc9_;
            Global.saved_click_data = param1;
         }
      }
      
      public function selectNextPage() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         _loc4_;
         if(!Global.disable_clicks)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = Global.nav_path[Global.nav_path.length - 1];
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(_loc1_ == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               Global.page_id_editorslots++;
               _loc5_;
               this.displayLobbyScreen(Global.SCREEN_EDITOR_SLOTS);
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc4_;
               if(_loc1_ == Global.SCREEN_BROWSE_YOUR_CUSTOM)
               {
                  _loc4_;
                  _loc5_;
                  Global.page_id_your_custom++;
                  this.displayLobbyScreen(Global.SCREEN_BROWSE_YOUR_CUSTOM);
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     _loc4_;
                     Global.page_id_campaign_custom++;
                     _loc5_;
                     _loc5_;
                     this.displayLobbyScreen(Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM);
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     if(_loc1_ == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                     {
                        _loc4_;
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        Global.page_id_latest_custom++;
                        _loc4_;
                        _loc4_;
                        Global.custom_timestamp = Global.saved_timestamps[Global.page_id_latest_custom];
                        this.displayLobbyScreen(Global.SCREEN_LOADING_LATEST_MAPS);
                     }
                     else if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
                     {
                        _loc5_;
                        _loc5_;
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        Global.page_id_browsegames++;
                        _loc4_;
                        this.displayLobbyScreen(Global.SCREEN_BROWSE_GAMES);
                        _loc5_;
                        _loc5_;
                     }
                     
                  }
               }
            }
         }
         else
         {
            Global.saved_last_click = 7;
         }
      }
      
      public function selectPreviousPage() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         if(!Global.disable_clicks)
         {
            _loc4_;
            _loc1_ = Global.nav_path[Global.nav_path.length - 1];
            _loc5_;
            if(_loc1_ == Global.SCREEN_EDITOR_SLOTS)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               Global.page_id_editorslots--;
               if(Global.page_id_editorslots < 0)
               {
                  Global.page_id_editorslots = 0;
               }
               this.displayLobbyScreen(Global.SCREEN_EDITOR_SLOTS);
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(_loc1_ == Global.SCREEN_BROWSE_YOUR_CUSTOM)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  Global.page_id_your_custom--;
                  if(Global.page_id_your_custom < 0)
                  {
                     Global.page_id_your_custom = 0;
                  }
                  this.displayLobbyScreen(Global.SCREEN_BROWSE_YOUR_CUSTOM);
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
                  {
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     Global.page_id_campaign_custom--;
                     _loc4_;
                     if(Global.page_id_campaign_custom < 0)
                     {
                        _loc4_;
                        _loc4_;
                        Global.page_id_campaign_custom = 0;
                        _loc5_;
                        _loc5_;
                     }
                     this.displayLobbyScreen(Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM);
                     _loc4_;
                  }
                  else if(_loc1_ == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     Global.page_id_latest_custom--;
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     if(Global.page_id_latest_custom < 0)
                     {
                        Global.page_id_latest_custom = 0;
                        _loc5_;
                        _loc5_;
                     }
                     Global.custom_timestamp = Global.saved_timestamps[Global.page_id_latest_custom];
                     _loc4_;
                     this.displayLobbyScreen(Global.SCREEN_LOADING_LATEST_MAPS);
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
                     {
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        Global.page_id_browsegames--;
                        if(Global.page_id_browsegames < 0)
                        {
                           _loc4_;
                           _loc4_;
                           Global.page_id_browsegames = 0;
                           _loc4_;
                        }
                        this.displayLobbyScreen(Global.SCREEN_BROWSE_GAMES);
                     }
                  }
                  
               }
            }
         }
         else
         {
            Global.saved_last_click = 8;
         }
      }
      
      public function selectCreateNewCustom() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_CUSTOM_SELECT);
            _loc1_;
            _loc1_;
         }
         else
         {
            Global.saved_last_click = 9;
         }
      }
      
      public function selectBrowseYourCustom() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_BROWSE_YOUR_CUSTOM);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.saved_last_click = 20;
         }
      }
      
      public function selectBrowseCampaignCustom() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM);
            _loc1_;
         }
         else
         {
            Global.saved_last_click = 21;
         }
      }
      
      public function selectBrowseLatestCustom() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!Global.disable_clicks)
         {
            Global.page_id_latest_custom = 0;
            Global.latest_maps = new Array();
            _loc2_;
            _loc1_;
            _loc1_;
            Global.latest_maps.length = 0;
            _loc2_;
            _loc2_;
            Global.custom_timestamp = Global.custom_timestamp_first;
            Global.saved_timestamps = new Array();
            Global.saved_timestamps.length = 0;
            this.displayLobbyScreen(Global.SCREEN_LOADING_LATEST_MAPS);
            _loc1_;
         }
         else
         {
            Global.saved_last_click = 22;
         }
      }
      
      public function startCustomLevel(param1:int, param2:Array, param3:Boolean, param4:Boolean, param5:Boolean) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         SafeGlobal.selected_level.mods = param2.toString();
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         SafeGlobal.selected_level.max_players = param1;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         SafeGlobal.selected_level.is_private = param3;
         _loc7_;
         _loc7_;
         SafeGlobal.selected_level.mods = param2.toString();
         _loc6_;
         if(param4)
         {
            SafeGlobal.selected_level.§_-sh§(Global.getLevel(Global.teamXP.getInt()));
            _loc6_;
         }
         else
         {
            SafeGlobal.selected_level.§_-yb§ = "-1";
            _loc7_;
         }
         SafeGlobal.selected_level.§_-Ga§ = param5;
         this.lobby_client.createCustomGame(Global.§_-ZM§(),SafeGlobal.selected_level.map_id,SafeGlobal.selected_level.thumbnail,param1,param2.toString(),param3,SafeGlobal.selected_level.§_-yb§,SafeGlobal.selected_level.created_by,SafeGlobal.selected_level.§_-Ga§);
         this.displayLobbyScreen(Global.SCREEN_WAITING_AREA);
      }
      
      public function displayGameShareCode() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-bu§ = null;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc4_;
         _loc4_;
         if(_loc1_ == Global.SCREEN_WAITING_AREA)
         {
            _loc2_ = new §_-bu§();
            _loc3_;
            _loc2_.x = 1;
            _loc4_;
            _loc4_;
            _loc2_.y = 86;
            _loc4_;
            _loc2_.name = "share_panel";
            _loc3_;
            _loc3_;
            this.lobby_canvas.addChild(_loc2_);
         }
      }
      
      public function hideGameShareCode() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-bu§ = null;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc4_;
         _loc4_;
         if(_loc1_ == Global.SCREEN_WAITING_AREA)
         {
            _loc2_ = this.lobby_canvas.getChildByName("share_panel") as §_-bu§;
            _loc3_;
            if(_loc2_ != null)
            {
               _loc3_;
               _loc3_;
               this.lobby_canvas.removeChild(_loc2_);
            }
         }
      }
      
      public function tryJoinGameFromCode(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.displayLobbyScreen(Global.SCREEN_LOADING_SHARE_CODE);
         _loc2_;
         _loc2_;
         Global.game_share_code = param1;
      }
      
      public function handleJoinGameFromCode() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_WAITING_AREA);
      }
      
      public function displayShareCodeLoadingError() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:LS_LoadingShareCode = null;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc4_;
         if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
         {
            _loc2_ = this.lobby_canvas.getChildByName("current_screen") as LS_LoadingShareCode;
            _loc3_;
            _loc3_;
            _loc2_.§_-NS§();
         }
      }
      
      public function getGameEnd() : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc2_;
         if(_loc1_ == Global.SCREEN_GAME_END)
         {
            _loc2_;
            _loc3_;
            return true;
         }
         return false;
      }
      
      public function replayGameMap() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         if(_loc1_ == Global.SCREEN_GAME_END)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((SafeGlobal.selected_level.§_-Td§) && SafeGlobal.selected_level.§_-tn§ == false)
            {
               Global.replay_last_map = 1;
            }
            else
            {
               Global.replay_last_map = 2;
            }
            SafeGlobal.game_client.confirmPlayingAgain();
            this.lobby_client.replayLastMap();
            _loc3_;
            this.displayLobbyScreen(Global.SCREEN_WAITING_AREA);
         }
      }
      
      public function displayPlayingAgain(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc4_;
         _loc4_;
         if(_loc2_ == Global.SCREEN_GAME_END)
         {
            _loc4_;
            _loc4_;
            this.lobby_players.displayPlayingAgain(param1);
         }
      }
      
      public function displayLeftRoom(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc3_;
         _loc3_;
         if(_loc2_ == Global.SCREEN_GAME_END)
         {
            _loc3_;
            _loc3_;
            this.lobby_players.displayLeftRoom(param1);
         }
      }
      
      public function backOneScreen() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         if(!Global.disable_clicks)
         {
            _loc3_;
            _loc3_;
            _loc1_ = -1;
            _loc3_;
            _loc3_;
            _loc4_;
            if(Global.nav_path.length > 1)
            {
               _loc2_ = Global.nav_path[Global.nav_path.length - 1];
               _loc4_;
               _loc4_;
               if(_loc2_ == Global.SCREEN_GAME_END)
               {
                  _loc4_;
                  _loc4_;
                  _loc1_ = Global.nav_path[Global.nav_path.length - 4];
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
                  {
                     _loc4_;
                     _loc1_ = Global.SCREEN_LOADING_BROWSE_GAMES;
                  }
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
                  {
                     _loc4_;
                     _loc1_ = Global.SCREEN_HUB;
                     _loc3_;
                  }
               }
               else if(_loc2_ == Global.SCREEN_WAITING_AREA)
               {
                  _loc1_ = Global.nav_path[Global.nav_path.length - 2];
                  _loc3_;
                  if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
                  {
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     _loc1_ = Global.SCREEN_LOADING_BROWSE_GAMES;
                  }
                  _loc3_;
                  _loc3_;
                  if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
                  {
                     _loc1_ = Global.SCREEN_HUB;
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(_loc2_ == Global.SCREEN_CW_END)
                  {
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc1_ = Global.nav_path[Global.nav_path.length - 3];
                  }
                  else if(_loc2_ == Global.SCREEN_VIEW_REPLAYS)
                  {
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc3_;
                     _loc1_ = Global.nav_path[Global.nav_path.length - 3];
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(_loc2_ == Global.SCREEN_REPLAY_SUCCESS || _loc2_ == Global.SCREEN_REPLAY_FAIL)
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc1_ = Global.nav_path[Global.nav_path.length - 4];
                        _loc3_;
                     }
                     else if(_loc2_ == Global.§_-1y§)
                     {
                        _loc3_;
                        _loc1_ = Global.SCREEN_HUB;
                     }
                     else
                     {
                        _loc1_ = Global.nav_path[Global.nav_path.length - 2];
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        if(_loc1_ == Global.SCREEN_LOADING_BROWSE_GAMES)
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc1_ = Global.SCREEN_HUB;
                           _loc4_;
                           _loc4_;
                        }
                        if(_loc1_ == Global.SCREEN_LOADING_LATEST_MAPS)
                        {
                           _loc3_;
                           _loc1_ = Global.SCREEN_CUSTOM_SELECT;
                           _loc4_;
                           _loc4_;
                        }
                     }
                     
                  }
                  
               }
               
            }
            this.displayLobbyScreen(_loc1_);
         }
         else
         {
            Global.saved_last_click = 2;
         }
      }
      
      public function backToHub() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_HUB);
            _loc2_;
         }
         else
         {
            Global.saved_last_click = 1;
         }
      }
      
      public function selectViewEditorSlots() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(!Global.disable_clicks)
         {
            _loc2_;
            _loc2_;
            this.displayLobbyScreen(Global.SCREEN_EDITOR_SLOTS);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.saved_last_click = 10;
         }
      }
      
      public function selectViewReplayEditor() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!Global.disable_clicks)
         {
            _loc1_;
            this.displayLobbyScreen(Global.SCREEN_LOADING_REPLAYS);
            _loc1_;
            _loc1_;
         }
         else
         {
            Global.saved_last_click = 15;
         }
      }
      
      public function zoomIntoGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.removeGameCountdown();
         _loc2_;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_ZOOMGAME);
      }
      
      public function receiveLatestMapsData(param1:Array) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.latest_maps = param1;
         _loc3_;
         _loc3_;
         this.pause_count = 0;
         _loc3_;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.pauseLatestMaps,false,0,true);
      }
      
      private function pauseLatestMaps(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         this.pause_count++;
         _loc5_;
         if(this.pause_count == 20)
         {
            _loc5_;
            removeEventListener(Event.ENTER_FRAME,this.pauseLatestMaps);
            _loc4_;
            _loc4_;
            this.displayLobbyScreen(Global.SCREEN_BROWSE_LATEST_CUSTOM);
         }
      }
      
      private var pause_count:int = 0;
      
      public function receiveBrowseGamesData(param1:Array) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         if(param1.length > 0)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < param1.length)
            {
               _loc2_++;
               _loc4_;
               _loc4_;
            }
            _loc4_;
            Global.saved_rooms = param1;
            _loc3_;
         }
         else
         {
            Global.saved_rooms.length = 0;
            _loc3_;
         }
         this.pause_count = 0;
         _loc4_;
         _loc4_;
         addEventListener(Event.ENTER_FRAME,this.pauseBrowseGames,false,0,true);
      }
      
      private function pauseBrowseGames(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.pause_count++;
         _loc4_;
         _loc4_;
         if(this.pause_count == 10)
         {
            _loc5_;
            _loc5_;
            removeEventListener(Event.ENTER_FRAME,this.pauseBrowseGames);
            _loc4_;
            this.displayLobbyScreen(Global.SCREEN_BROWSE_GAMES);
         }
      }
      
      public function refreshBrowseGames() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_LOADING_BROWSE_GAMES);
      }
      
      public function updatePlayerList(param1:String) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:Array = param1.split("|");
         _loc9_;
         Global.player_array = new Array();
         var _loc3_:* = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc3_ >= _loc2_.length)
            {
               break;
            }
            _loc5_ = _loc2_[_loc3_].split(",");
            _loc9_;
            _loc9_;
            _loc6_ = -1;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc7_ = -1;
            if(_loc5_.length > 8)
            {
               _loc8_;
               _loc8_;
               _loc6_ = parseInt(_loc5_[8]);
               _loc7_ = parseInt(_loc5_[9]);
               _loc8_;
               _loc8_;
            }
            Global.player_array.push({
               "uid":_loc5_[1],
               "user_name":_loc5_[0],
               "colour":parseInt(_loc5_[2]),
               "helmet":parseInt(_loc5_[3]),
               "teamxp":parseInt(_loc5_[4]),
               "kills":parseInt(_loc5_[5]),
               "golds":parseInt(_loc5_[6]),
               "awards":parseInt(_loc5_[7]),
               "team_id":_loc6_,
               "team_pos":_loc7_
            });
            _loc3_++;
         }
         var _loc4_:int = Global.nav_path[Global.nav_path.length - 1];
         if(_loc4_ == Global.SCREEN_WAITING_AREA)
         {
            _loc8_;
            _loc8_;
            this.lobby_players.updateWaitingPlayers();
         }
      }
      
      public function §_-D§(param1:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:LS_WaitingArea = null;
         var _loc2_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc5_;
         if(_loc2_ == Global.SCREEN_WAITING_AREA)
         {
            _loc3_ = this.lobby_canvas.getChildByName("current_screen") as LS_WaitingArea;
            _loc4_;
            if(_loc3_)
            {
               _loc4_;
               _loc4_;
               _loc3_.§_-D§(param1);
            }
         }
      }
      
      public function §_-QW§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:LS_WaitingArea = null;
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         _loc4_;
         if(_loc1_ == Global.SCREEN_WAITING_AREA)
         {
            _loc2_ = this.lobby_canvas.getChildByName("current_screen") as LS_WaitingArea;
            _loc3_;
            _loc2_.§_-QW§();
         }
      }
      
      public function hideReplayLoading() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:LS_EditReplay = null;
         _loc4_;
         var _loc1_:int = this.getCurrentScreen();
         _loc3_;
         if(_loc1_ == Global.SCREEN_EDIT_REPLAY)
         {
            _loc2_ = this.lobby_canvas.getChildByName("current_screen") as LS_EditReplay;
            _loc3_;
            _loc3_;
            _loc2_.hideReplayLoading();
         }
      }
      
      public function hideReplayCover() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:LS_EditReplay = null;
         _loc4_;
         var _loc1_:int = this.getCurrentScreen();
         _loc3_;
         _loc3_;
         if(_loc1_ == Global.SCREEN_EDIT_REPLAY)
         {
            _loc2_ = this.lobby_canvas.getChildByName("current_screen") as LS_EditReplay;
            _loc4_;
            _loc2_.hideReplayCover();
         }
      }
      
      public function updateReplaySaveProgress(param1:Number) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:LS_SavingReplay = null;
         _loc4_;
         var _loc2_:int = this.getCurrentScreen();
         _loc5_;
         _loc5_;
         if(_loc2_ == Global.SCREEN_SAVING_REPLAY)
         {
            _loc3_ = this.lobby_canvas.getChildByName("current_screen") as LS_SavingReplay;
            _loc5_;
            _loc3_.§_-K6§(param1);
         }
      }
      
      public function getCurrentScreen() : int
      {
         var _loc1_:int = Global.nav_path[Global.nav_path.length - 1];
         return _loc1_;
      }
      
      public function getPreviousScreen() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:* = 0;
         _loc3_;
         if(Global.nav_path.length > 1)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = Global.nav_path[Global.nav_path.length - 1];
            _loc4_;
            _loc4_;
            if(_loc2_ == Global.SCREEN_GAME_END)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc1_ = Global.nav_path[Global.nav_path.length - 4];
               _loc4_;
               _loc3_;
               if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
               {
                  _loc4_;
                  _loc4_;
                  _loc1_ = Global.SCREEN_HUB;
                  _loc3_;
                  _loc3_;
               }
            }
            else
            {
               _loc4_;
               if(_loc2_ == Global.SCREEN_CW_END)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc1_ = Global.nav_path[Global.nav_path.length - 3];
                  _loc4_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc2_ == Global.§_-1y§)
                  {
                     _loc4_;
                     _loc4_;
                     _loc1_ = Global.SCREEN_HUB;
                  }
                  else
                  {
                     _loc1_ = Global.nav_path[Global.nav_path.length - 2];
                     _loc4_;
                     if(_loc1_ == Global.SCREEN_LOADING_BROWSE_GAMES)
                     {
                        _loc4_;
                        _loc4_;
                        _loc1_ = Global.SCREEN_HUB;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function displayWaitingAreaChat(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         this.lobby_players.displayWaitingChat(param1,param2,param3);
      }
      
      public function displayLobbyChat(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         this.lobby_players.displayLobbyChat(param1,param2,param3);
      }
      
      public function displayGameEndChat(param1:String, param2:String, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         this.lobby_players.displayGameChat(param1,param2,param3);
      }
      
      public function deactivateGameColourChange() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.lobby_players.deactivateColourChange();
         _loc2_;
         this.lobby_players.displayChatDeactivated(true);
         _loc1_;
         SafeGlobal.connected_to_waiting = false;
         _loc1_;
         SafeGlobal.connected_to_lobby = false;
      }
      
      public function updateLobbyPlayers() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.lobby_players.updateLobbyPlayers();
      }
      
      public function §_-Od§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-L6§ = new §_-KO§();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-L6§.x = Global.large_thumbnail_x;
         _loc1_;
         _loc1_;
         this.§_-L6§.y = Global.large_thumbnail_y;
         _loc1_;
         _loc1_;
         this.lobby_canvas.addChild(this.§_-L6§);
      }
      
      public function §_-kQ§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-L6§ != null)
         {
            _loc4_;
            _loc4_;
            this.§_-L6§.§_-sV§(param1,param2);
         }
      }
      
      public function §_-J4§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-L6§ != null)
         {
            _loc1_;
            this.§_-L6§.tweenOff();
         }
      }
      
      public function §_-IS§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-L6§ != null)
         {
            _loc2_;
            this.lobby_canvas.removeChild(this.§_-L6§);
            _loc2_;
            this.§_-L6§ = null;
         }
      }
      
      public function displayGameCountdown(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-J4§();
         _loc3_;
         this.game_countdown = new §_-Mq§(param1);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         this.game_countdown.x = Global.large_thumbnail_x;
         _loc3_;
         this.game_countdown.y = Global.large_thumbnail_y;
         _loc2_;
         _loc2_;
         addChild(this.game_countdown);
      }
      
      public function removeGameCountdown() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.game_countdown != null)
         {
            _loc2_;
            _loc2_;
            removeChild(this.game_countdown);
            _loc1_;
            _loc1_;
            this.game_countdown = null;
         }
      }
      
      public function testCustomWeapon() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.displayLobbyScreen(Global.SCREEN_CW_GAME);
      }
      
      public function exitEditor(param1:int = -1) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         if(param1 == -1)
         {
            _loc4_;
            _loc2_ = Global.nav_path[Global.nav_path.length - 2];
            _loc4_;
            _loc4_;
            SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
            _loc3_;
            this.displayLobbyScreen(_loc2_);
            _loc4_;
         }
         else
         {
            this.displayLobbyScreen(param1);
         }
      }
      
      public function refreshCampaignData() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         (this.lobby_canvas.getChildByName("current_screen") as LobbyScreen).refreshCampaignData();
      }
   }
}
