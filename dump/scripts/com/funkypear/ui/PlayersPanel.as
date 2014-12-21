package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-bY§.§_-2u§;
   import fl.transitions.Tween;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class PlayersPanel extends Sprite
   {
      
      public function PlayersPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.panel_holder = new Sprite();
         addChild(this.panel_holder);
         _loc1_;
         this.game_tab = new PlayersGamePanel();
         _loc2_;
         _loc2_;
         this.game_tab.setPlayersPanel(this);
         _loc1_;
         this.game_tab.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPanel,false,0,true);
         this.panel_holder.addChild(this.game_tab);
         _loc1_;
         _loc1_;
         this.waiting_tab = new PlayersWaitingPanel();
         _loc2_;
         _loc2_;
         _loc2_;
         this.waiting_tab.setPlayersPanel(this);
         _loc2_;
         this.waiting_tab.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPanel,false,0,true);
         this.panel_holder.addChild(this.waiting_tab);
         _loc2_;
         this.lobby_tab = new PlayersLobbyPanel();
         _loc2_;
         this.lobby_tab.setPlayersPanel(this);
         this.lobby_tab.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPanel,false,0,true);
         this.panel_holder.addChild(this.lobby_tab);
         this.setup_tab = new PlayersSetupPanel();
         _loc2_;
         this.setup_tab.setPlayersPanel(this);
         this.setup_tab.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPanel,false,0,true);
         _loc1_;
         _loc1_;
         this.panel_holder.addChild(this.setup_tab);
         _loc1_;
         this.min_button.visible = false;
         this.max_button.visible = false;
         this.hideGameTab();
         _loc1_;
         _loc1_;
         this.hideWaitingTab();
         this.hideSetupTab();
         this.focusLobbyTab();
         this.back_button.visible = false;
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var max_button:MovieClip;
      
      public var back_button:§_-2u§;
      
      public var min_button:MovieClip;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var PANEL_SPEED:int = 10;
      
      private var focused_panel:PlayersTabPanel;
      
      private var panel_holder:Sprite;
      
      private var lobby_tab:PlayersLobbyPanel;
      
      private var waiting_tab:PlayersWaitingPanel;
      
      private var game_tab:PlayersGamePanel;
      
      private var setup_tab:PlayersSetupPanel;
      
      public var is_hidden:Boolean = true;
      
      private var current_lobby_screen:int;
      
      private var prev_lobby_screen:int;
      
      private var end_screen:LS_GameEnd;
      
      private var ctrl_pressed:Boolean = false;
      
      public function updateLobbyPlayerCount() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.lobby_tab.updateLobbyPlayerCount();
      }
      
      public function setGameMaxPlayers() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.game_tab.setMaxPlayers(SafeGlobal.selected_level.max_players);
      }
      
      public function displayChatDeactivated(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc3_;
            this.waiting_tab.displayChatDeactivated();
            _loc3_;
            _loc3_;
         }
         else
         {
            this.lobby_tab.displayChatDeactivated();
         }
      }
      
      public function §_-wB§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.waiting_tab.§_-x1§();
      }
      
      public function displayChatActivated() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.waiting_tab.displayChatActivated();
         _loc1_;
         _loc1_;
         this.lobby_tab.displayChatActivated();
         _loc1_;
         _loc1_;
         this.game_tab.displayChatActivated();
      }
      
      public function updateScreen(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.updateBackButton(param1,param2);
         _loc3_;
         this.prev_lobby_screen = param1;
         _loc4_;
         this.current_lobby_screen = param2;
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(!(this.current_lobby_screen == Global.SCREEN_WAITING_AREA) && !(this.current_lobby_screen == Global.SCREEN_GAME_END) && !(this.current_lobby_screen == Global.SCREEN_ZOOMGAME) && !(this.current_lobby_screen == Global.SCREEN_CUSTOM_GAME) && !(this.current_lobby_screen == Global.SCREEN_TUTORIAL_GAME) && !(this.current_lobby_screen == Global.SCREEN_PRELOADER) && !(this.current_lobby_screen == Global.SCREEN_LOGIN) && !(this.current_lobby_screen == Global.SCREEN_REGISTER) && !(this.current_lobby_screen == Global.SCREEN_PASSWORD) && !(this.current_lobby_screen == Global.SCREEN_LOADING_LOBBY) && !(this.current_lobby_screen == Global.SCREEN_BANNED) && !(this.current_lobby_screen == Global.SCREEN_VERSIONCONTROL) && !(this.current_lobby_screen == Global.§_-4D§))
         {
            _loc4_;
            this.hideGameTab();
            _loc3_;
            _loc3_;
            this.hideWaitingTab();
            _loc3_;
            _loc3_;
            this.hideSetupTab();
            this.focusLobbyTab();
            _loc3_;
            if(this.prev_lobby_screen == Global.SCREEN_GAME_END)
            {
               this.clearGameChat();
               _loc4_;
               _loc4_;
            }
         }
         if(this.prev_lobby_screen == Global.SCREEN_CW_END)
         {
            _loc3_;
            _loc3_;
            visible = true;
            this.is_hidden = false;
            _loc4_;
            this.focusLobbyTab();
            _loc4_;
            _loc4_;
            this.activateChat();
         }
         if(this.prev_lobby_screen == Global.SCREEN_EDITOR_GAME)
         {
            this.focusLobbyTab();
            _loc4_;
            _loc4_;
            this.activateChat();
            _loc3_;
         }
         if(this.prev_lobby_screen == Global.SCREEN_EDIT_REPLAY)
         {
            _loc3_;
            _loc3_;
            visible = true;
            this.is_hidden = false;
            this.focusLobbyTab();
            this.activateChat();
            _loc3_;
         }
         _loc4_;
         _loc3_;
         if(this.current_lobby_screen == Global.SCREEN_WAITING_AREA)
         {
            _loc4_;
            this.waiting_tab.displayChatActivated();
            this.waiting_tab.setMaxPlayers(SafeGlobal.selected_level.max_players,SafeGlobal.selected_level.§_-Ga§);
            this.autoMaximise();
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(this.current_lobby_screen == Global.SCREEN_HUB)
            {
               this.autoMaximise();
               _loc4_;
            }
            else
            {
               _loc3_;
               if(this.current_lobby_screen == Global.SCREEN_CUSTOM_GAME)
               {
                  this.autoMaximise();
               }
               else
               {
                  _loc3_;
                  if(this.current_lobby_screen == Global.SCREEN_REPLAY_SUCCESS)
                  {
                     _loc4_;
                     _loc4_;
                     this.autoMaximise();
                  }
                  else if(this.current_lobby_screen == Global.SCREEN_REPLAY_FAIL)
                  {
                     this.autoMaximise();
                     _loc3_;
                     _loc3_;
                  }
                  else if(this.current_lobby_screen == Global.§_-1y§)
                  {
                     _loc3_;
                     _loc3_;
                     this.autoMaximise();
                  }
                  else
                  {
                     _loc4_;
                     if(this.current_lobby_screen == Global.SCREEN_ZOOMGAME)
                     {
                        _loc4_;
                        this.tweenOut();
                     }
                     else if(this.current_lobby_screen == Global.SCREEN_EDITOR)
                     {
                        this.tweenOut();
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        if(this.current_lobby_screen == Global.SCREEN_CW_GAME)
                        {
                           _loc3_;
                           _loc3_;
                           this.tweenOut();
                           _loc3_;
                        }
                        else
                        {
                           _loc3_;
                           if(this.current_lobby_screen == Global.SCREEN_EDIT_REPLAY)
                           {
                              _loc3_;
                              _loc3_;
                              this.tweenOut();
                           }
                           else if(this.current_lobby_screen == Global.§_-4D§)
                           {
                              this.tweenOut();
                           }
                           else if(this.current_lobby_screen != Global.SCREEN_CW_END)
                           {
                              _loc4_;
                              _loc4_;
                              if(this.current_lobby_screen != Global.SCREEN_GAME_END)
                              {
                                 if(this.current_lobby_screen == Global.SCREEN_EDITOR_GAME)
                                 {
                                    _loc3_;
                                 }
                                 else
                                 {
                                    _loc3_;
                                    _loc3_;
                                    if(this.current_lobby_screen == Global.SCREEN_EDITOR_SLOTS && this.prev_lobby_screen == Global.SCREEN_EDITOR)
                                    {
                                       this.tweenInFromEditor();
                                       _loc3_;
                                       _loc3_;
                                    }
                                    else
                                    {
                                       this.autoMinimise();
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
      
      public function init(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.activateChat();
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
      }
      
      public function checkKeyPressed(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.focused_panel != null)
         {
            _loc2_;
            _loc2_;
            this.focused_panel.handleKeyPressed();
         }
      }
      
      public function checkKeyReleased(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.focused_panel != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.focused_panel.input_text_focused)
            {
               _loc3_;
               this.focused_panel.handleKeyReleased(param1.charCode);
            }
         }
      }
      
      public function activateChat() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.checkKeyPressed,false,0,true);
         _loc1_;
         _loc1_;
         stage.addEventListener(KeyboardEvent.KEY_UP,this.checkKeyReleased,false,0,true);
      }
      
      private function deactivateChat() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.checkKeyPressed);
         _loc1_;
         _loc1_;
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.checkKeyReleased);
      }
      
      public function displayLobbyChat(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.lobby_tab.displayChat(param1,param2,param3);
      }
      
      public function displayWaitingChat(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.waiting_tab.displayChat(param1,param2,param3);
      }
      
      public function displayGameChat(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         this.game_tab.displayChat(param1,param2,param3);
      }
      
      public function updateWaitingPlayers() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.waiting_tab.updatePlayers();
      }
      
      public function updateLobbyPlayers() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.lobby_tab.updatePlayerList();
      }
      
      private function clearAllChat() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.clearLobbyChat();
         _loc1_;
         this.clearWaitingChat();
         _loc2_;
         this.clearGameChat();
      }
      
      public function clearLobbyChat() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.lobby_tab.clearChat();
      }
      
      public function clearWaitingChat() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.waiting_tab.clearChat();
      }
      
      public function clearGameChat() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.game_tab.clearChat();
      }
      
      public function focusLobbyTab() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.panel_holder.setChildIndex(this.lobby_tab,this.panel_holder.numChildren - 1);
         _loc1_;
         _loc1_;
         this.lobby_tab.setActive(true);
         this.game_tab.setActive(false);
         _loc1_;
         _loc1_;
         this.waiting_tab.setActive(false);
         _loc1_;
         _loc1_;
         this.setup_tab.setActive(false);
         _loc2_;
         _loc2_;
         this.focused_panel = this.lobby_tab;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.stage.focus = this.lobby_tab.chat_input_text;
         this.lobby_tab.input_text_focused = true;
      }
      
      public function focusGameTab() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.panel_holder.setChildIndex(this.game_tab,this.panel_holder.numChildren - 1);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.game_tab.setActive(true);
         this.lobby_tab.setActive(false);
         _loc2_;
         this.waiting_tab.setActive(false);
         this.setup_tab.setActive(false);
         _loc1_;
         _loc1_;
         this.focused_panel = this.game_tab;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.stage.focus = this.game_tab.chat_input_text;
         _loc1_;
         this.game_tab.input_text_focused = true;
      }
      
      public function focusWaitingTab() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.panel_holder.setChildIndex(this.waiting_tab,this.panel_holder.numChildren - 1);
         _loc1_;
         _loc2_;
         this.waiting_tab.setActive(true);
         _loc2_;
         this.lobby_tab.setActive(false);
         _loc1_;
         _loc1_;
         this.game_tab.setActive(false);
         this.setup_tab.setActive(false);
         this.focused_panel = this.waiting_tab;
         _loc1_;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.stage.focus = this.waiting_tab.chat_input_text;
         this.waiting_tab.input_text_focused = true;
      }
      
      public function focusSetupTab() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.panel_holder.setChildIndex(this.setup_tab,this.panel_holder.numChildren - 1);
         _loc1_;
         this.setup_tab.setActive(true);
         this.waiting_tab.setActive(false);
         this.lobby_tab.setActive(false);
         this.game_tab.setActive(false);
         _loc2_;
         this.focused_panel = this.setup_tab;
         SafeGlobal.TIMELINE.timeline.stage.focus = null;
      }
      
      public function hideGameTab() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.game_tab.visible = false;
         _loc2_;
         _loc2_;
         this.game_tab.setActive(false);
      }
      
      public function hideWaitingTab() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.waiting_tab.visible = false;
         _loc1_;
         _loc1_;
         this.waiting_tab.setActive(false);
      }
      
      public function hideSetupTab() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.setup_tab.visible = false;
         _loc1_;
         _loc1_;
         this.setup_tab.setActive(false);
      }
      
      public function showGameTab() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.game_tab.visible = true;
         _loc1_;
         this.waiting_tab.visible = false;
         _loc1_;
         _loc1_;
         this.setup_tab.visible = false;
      }
      
      public function showWaitingTab() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.waiting_tab.visible = true;
         _loc1_;
         this.game_tab.visible = false;
         _loc2_;
         _loc2_;
         this.setup_tab.visible = false;
      }
      
      public function showSetupTab() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.setup_tab.visible = true;
         _loc2_;
         this.waiting_tab.visible = false;
         _loc1_;
         _loc1_;
         this.game_tab.visible = false;
      }
      
      public function displayPlayingAgain(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.game_tab.displayPlayingAgain(param1);
      }
      
      public function displayLeftRoom(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.game_tab.displayLeftRoom(param1);
      }
      
      public function updateGamePositions() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.game_tab.updateGamePositions();
      }
      
      public function initMinimiseButton() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.min_button.mouseEnabled = true;
         this.min_button.mouseChildren = false;
         this.min_button.buttonMode = true;
         _loc1_;
         _loc1_;
         this.min_button.addEventListener(MouseEvent.CLICK,this.clickMinimise,false,0,true);
         this.min_button.addEventListener(MouseEvent.ROLL_OVER,this.rollOverMinimise,false,0,true);
         this.min_button.addEventListener(MouseEvent.ROLL_OUT,this.rollOutMinimise,false,0,true);
      }
      
      public function initMaximiseButton() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.max_button.mouseEnabled = true;
         this.max_button.mouseChildren = false;
         this.max_button.buttonMode = true;
         this.max_button.addEventListener(MouseEvent.CLICK,this.clickMaximise,false,0,true);
         _loc2_;
         _loc2_;
         this.max_button.addEventListener(MouseEvent.ROLL_OVER,this.rollOverMaximise,false,0,true);
         this.max_button.addEventListener(MouseEvent.ROLL_OUT,this.rollOutMaximise,false,0,true);
      }
      
      public function disableMinimiseButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.min_button.mouseEnabled = false;
         this.min_button.buttonMode = false;
         _loc1_;
         if(this.min_button.hasEventListener(MouseEvent.CLICK))
         {
            this.min_button.removeEventListener(MouseEvent.CLICK,this.clickMinimise);
            this.min_button.removeEventListener(MouseEvent.ROLL_OVER,this.rollOverMinimise);
            this.min_button.removeEventListener(MouseEvent.ROLL_OUT,this.rollOutMinimise);
         }
      }
      
      public function disableMaximiseButton() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.max_button.mouseEnabled = false;
         this.max_button.buttonMode = false;
         _loc1_;
         _loc1_;
         if(this.max_button.hasEventListener(MouseEvent.CLICK))
         {
            _loc1_;
            _loc1_;
            this.max_button.removeEventListener(MouseEvent.CLICK,this.clickMaximise);
            _loc1_;
            _loc1_;
            this.max_button.removeEventListener(MouseEvent.ROLL_OVER,this.rollOverMaximise);
            _loc1_;
            _loc1_;
            this.max_button.removeEventListener(MouseEvent.ROLL_OUT,this.rollOutMaximise);
         }
      }
      
      public function autoMinimise() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(!this.is_hidden)
         {
            _loc2_;
            this.clickMinimise(null);
         }
      }
      
      public function clickMinimise(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         SafeGlobal.TIMELINE.timeline.stage.focus = null;
         _loc2_;
         _loc2_;
         this.disableMinimiseButton();
         _loc2_;
         _loc2_;
         this.min_button.up_graphic.visible = true;
         this.max_button.up_graphic.visible = true;
         _loc2_;
         _loc2_;
         this.min_button.visible = false;
         _loc3_;
         _loc3_;
         this.max_button.visible = true;
         _loc2_;
         _loc2_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,800,this.PANEL_SPEED,false);
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishMinimise,false,0,true);
         this.tween_x.start();
      }
      
      public function finishMinimise(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.initMaximiseButton();
         _loc3_;
         this.is_hidden = true;
      }
      
      public function autoMaximise() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.focused_panel != null)
         {
            _loc1_;
            if(this.focused_panel is PlayersLobbyPanel)
            {
               _loc1_;
               SafeGlobal.TIMELINE.timeline.stage.focus = this.lobby_tab.chat_input_text;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.focused_panel is PlayersWaitingPanel)
            {
               _loc1_;
               _loc1_;
               SafeGlobal.TIMELINE.timeline.stage.focus = this.waiting_tab.chat_input_text;
            }
            _loc1_;
            if(this.focused_panel is PlayersGamePanel)
            {
               _loc2_;
               _loc2_;
               SafeGlobal.TIMELINE.timeline.stage.focus = this.game_tab.chat_input_text;
               _loc1_;
            }
         }
         _loc2_;
         if(this.is_hidden)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.current_lobby_screen == Global.SCREEN_WAITING_AREA)
            {
               this.clearWaitingChat();
               this.showWaitingTab();
               this.focusWaitingTab();
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.current_lobby_screen == Global.SCREEN_CUSTOM_GAME)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(!(this.prev_lobby_screen == Global.SCREEN_WAITING_AREA) && !(this.prev_lobby_screen == Global.SCREEN_GAME_END))
               {
                  _loc1_;
                  _loc1_;
                  this.setup_tab.resetPanel();
               }
               this.showSetupTab();
               this.focusSetupTab();
               _loc2_;
               _loc2_;
            }
            this.disableMaximiseButton();
            _loc1_;
            this.min_button.up_graphic.visible = true;
            _loc2_;
            this.max_button.up_graphic.visible = true;
            this.max_button.visible = false;
            this.min_button.visible = false;
            _loc1_;
            _loc1_;
            this.tween_x = new Tween(this,"x",Strong.easeOut,x,519,this.PANEL_SPEED,false);
            _loc2_;
            this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishAutoMaximise,false,0,true);
            _loc2_;
            this.tween_x.start();
         }
         else
         {
            this.disableMinimiseButton();
            this.min_button.visible = false;
            _loc2_;
            this.startOffAndOn();
         }
      }
      
      public function clickMaximise(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.focused_panel != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.focused_panel is PlayersLobbyPanel)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               SafeGlobal.TIMELINE.timeline.stage.focus = this.lobby_tab.chat_input_text;
               _loc3_;
            }
            _loc2_;
            _loc3_;
            _loc3_;
            if(this.focused_panel is PlayersWaitingPanel)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               SafeGlobal.TIMELINE.timeline.stage.focus = this.waiting_tab.chat_input_text;
            }
            if(this.focused_panel is PlayersGamePanel)
            {
               SafeGlobal.TIMELINE.timeline.stage.focus = this.game_tab.chat_input_text;
            }
         }
         this.disableMaximiseButton();
         this.min_button.up_graphic.visible = true;
         this.max_button.up_graphic.visible = true;
         this.max_button.visible = false;
         this.min_button.visible = true;
         _loc3_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,519,this.PANEL_SPEED,false);
         _loc3_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishMaximise,false,0,true);
         this.tween_x.start();
      }
      
      public function finishMaximise(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.initMinimiseButton();
         _loc2_;
         this.is_hidden = false;
      }
      
      public function finishAutoMaximise(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.is_hidden = false;
      }
      
      private function startOffAndOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tween_x = new Tween(this,"x",Strong.easeIn,x,800,this.PANEL_SPEED,false);
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishOffAndOn,false,0,true);
         _loc1_;
         this.tween_x.start();
      }
      
      public function finishOffAndOn(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishOffAndOn);
         _loc3_;
         _loc3_;
         this.tween_x = null;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(this.current_lobby_screen == Global.SCREEN_WAITING_AREA)
         {
            this.clearWaitingChat();
            this.showWaitingTab();
            _loc2_;
            this.focusWaitingTab();
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.current_lobby_screen == Global.SCREEN_CUSTOM_GAME)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(!(this.prev_lobby_screen == Global.SCREEN_WAITING_AREA) && !(this.prev_lobby_screen == Global.SCREEN_GAME_END))
            {
               _loc2_;
               _loc2_;
               this.setup_tab.resetPanel();
               _loc2_;
            }
            this.showSetupTab();
            _loc3_;
            _loc3_;
            this.focusSetupTab();
            _loc3_;
            _loc3_;
         }
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,519,this.PANEL_SPEED,false);
         this.tween_x.start();
      }
      
      public function rollOverMinimise(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.min_button.up_graphic.visible = false;
      }
      
      public function rollOutMinimise(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.min_button.up_graphic.visible = true;
      }
      
      public function rollOverMaximise(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.max_button.up_graphic.visible = false;
         _loc3_;
         _loc3_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,790,this.PANEL_SPEED,false);
         _loc3_;
         this.tween_x.start();
      }
      
      public function rollOutMaximise(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.max_button.up_graphic.visible = true;
         _loc3_;
         _loc3_;
         _loc2_;
         if(mouseX < 0 || mouseY < 82 || mouseY > 185)
         {
            if(x != 800)
            {
               _loc2_;
               this.tween_x = new Tween(this,"x",Strong.easeOut,x,800,this.PANEL_SPEED,false);
               _loc2_;
               _loc2_;
               this.tween_x.start();
            }
         }
      }
      
      public function rollOutPanel(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.max_button.hasEventListener(MouseEvent.ROLL_OUT))
         {
            _loc2_;
            _loc2_;
            this.rollOutMaximise(null);
         }
      }
      
      public function tweenInFromGame(param1:LS_GameEnd) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.end_screen = param1;
         _loc3_;
         visible = true;
         this.hideSetupTab();
         _loc3_;
         this.hideWaitingTab();
         this.showGameTab();
         this.focusGameTab();
         _loc2_;
         _loc2_;
         this.game_tab.§_-rl§();
         this.min_button.up_graphic.visible = true;
         _loc2_;
         _loc2_;
         this.max_button.up_graphic.visible = true;
         _loc2_;
         _loc2_;
         this.min_button.visible = false;
         this.max_button.visible = false;
         this.tween_x = new Tween(this,"x",Strong.easeOut,840,519,this.PANEL_SPEED,false);
         _loc3_;
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenInFromGame,false,0,true);
         _loc2_;
         _loc2_;
         this.tween_x.start();
      }
      
      private function finishTweenInFromGame(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenInFromGame);
         _loc3_;
         _loc3_;
         this.is_hidden = false;
         _loc2_;
         _loc2_;
         this.end_screen.§_-LL§();
         _loc3_;
         _loc3_;
         this.end_screen = null;
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         visible = true;
         _loc1_;
         _loc1_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,840,519,this.PANEL_SPEED,false);
         _loc1_;
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenIn,false,0,true);
         _loc1_;
         this.tween_x.start();
      }
      
      private function finishTweenIn(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenIn);
         this.min_button.up_graphic.visible = true;
         this.max_button.up_graphic.visible = true;
         this.min_button.visible = false;
         this.max_button.visible = false;
         this.is_hidden = false;
      }
      
      public function tweenInFromEditor() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         visible = true;
         _loc1_;
         _loc1_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,800,this.PANEL_SPEED,false);
         _loc1_;
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenInFromEditor,false,0,true);
         _loc1_;
         this.tween_x.start();
      }
      
      private function finishTweenInFromEditor(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenInFromEditor);
         _loc3_;
         this.min_button.up_graphic.visible = true;
         _loc3_;
         this.max_button.up_graphic.visible = true;
         this.initMaximiseButton();
         _loc3_;
         this.min_button.visible = false;
         this.max_button.visible = true;
         this.activateChat();
         this.is_hidden = true;
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,840,this.PANEL_SPEED,false);
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut,false,0,true);
         _loc1_;
         this.tween_x.start();
      }
      
      private function finishTweenOut(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.lobby_display.getCurrentScreen() == Global.SCREEN_EDITOR)
         {
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(Global.lobby_display.getCurrentScreen() == Global.SCREEN_EDIT_REPLAY)
            {
               _loc3_;
               _loc3_;
            }
            else if(Global.lobby_display.getCurrentScreen() != Global.SCREEN_CW_GAME)
            {
               this.deactivateChat();
               _loc3_;
               _loc3_;
               this.clearAllChat();
               _loc2_;
            }
            
         }
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut);
         _loc3_;
         _loc3_;
         visible = false;
         this.is_hidden = true;
      }
      
      public function tweenIntoGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tweenOut();
      }
      
      public function deactivateColourChange() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.waiting_tab.deactivateColourChange();
      }
      
      public function updateBackButton(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.back_button.§_-h6§();
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param2 == Global.SCREEN_HUB || param2 == Global.SCREEN_ERROR || param2 == Global.SCREEN_ZOOMGAME || param2 == Global.SCREEN_CW_GAME || param2 == Global.SCREEN_EDITOR || param2 == Global.SCREEN_TUTORIAL_END || param2 == Global.SCREEN_TUTORIAL_GAME || param2 == Global.SCREEN_BANNED || param2 == Global.SCREEN_VERSIONCONTROL)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.back_button.visible = false;
         }
         else
         {
            _loc4_;
            _loc3_;
            _loc3_;
            this.back_button.visible = true;
            _loc3_;
            _loc3_;
         }
         this.back_button.setActive(false);
      }
      
      public function finishUpdateBackButton(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.back_button.setActive(param1);
      }
   }
}
