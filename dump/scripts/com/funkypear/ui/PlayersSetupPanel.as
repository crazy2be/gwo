package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class PlayersSetupPanel extends PlayersTabPanel
   {
      
      public function PlayersSetupPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         tab_button = this.tab_not_focused;
         init();
         this.modSelectPanel = new ModSelectPanel(this);
         addChild(this.modSelectPanel);
         _loc1_;
         this.set_players_2.mouseEnabled = true;
         this.set_players_2.mouseChildren = false;
         _loc1_;
         this.set_players_2.buttonMode = true;
         _loc1_;
         _loc1_;
         this.set_players_2.addEventListener(MouseEvent.ROLL_OVER,this.rollOverPlayersButton,false,0,true);
         this.set_players_2.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPlayersButton,false,0,true);
         this.set_players_2.addEventListener(MouseEvent.CLICK,this.selectTwoPlayers,false,0,true);
         _loc2_;
         _loc2_;
         this.set_players_3.mouseEnabled = true;
         _loc2_;
         this.set_players_3.mouseChildren = false;
         this.set_players_3.buttonMode = true;
         _loc2_;
         this.set_players_3.addEventListener(MouseEvent.ROLL_OVER,this.rollOverPlayersButton,false,0,true);
         _loc2_;
         _loc2_;
         this.set_players_3.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPlayersButton,false,0,true);
         this.set_players_3.addEventListener(MouseEvent.CLICK,this.selectThreePlayers,false,0,true);
         this.set_players_4.mouseEnabled = true;
         this.set_players_4.mouseChildren = false;
         _loc2_;
         this.set_players_4.buttonMode = true;
         this.set_players_4.addEventListener(MouseEvent.ROLL_OVER,this.rollOverPlayersButton,false,0,true);
         this.set_players_4.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPlayersButton,false,0,true);
         this.set_players_4.addEventListener(MouseEvent.CLICK,this.selectFourPlayers,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-VE§.mouseEnabled = true;
         this.§_-VE§.mouseChildren = false;
         this.§_-VE§.buttonMode = true;
         this.§_-VE§.addEventListener(MouseEvent.ROLL_OVER,this.rollOverPlayersButton,false,0,true);
         this.§_-VE§.addEventListener(MouseEvent.ROLL_OUT,this.rollOutPlayersButton,false,0,true);
         this.§_-VE§.addEventListener(MouseEvent.CLICK,this.§_-am§,false,0,true);
         this.GA_Open.mouseEnabled = true;
         _loc1_;
         _loc1_;
         this.GA_Open.mouseChildren = false;
         _loc2_;
         this.GA_Open.buttonMode = true;
         this.GA_Open.addEventListener(MouseEvent.ROLL_OVER,this.rollOverAccessButton,false,0,true);
         _loc1_;
         _loc1_;
         this.GA_Open.addEventListener(MouseEvent.ROLL_OUT,this.rollOutAccessButton,false,0,true);
         _loc2_;
         _loc2_;
         this.GA_Open.addEventListener(MouseEvent.CLICK,this.selectOpenGame,false,0,true);
         this.GA_Limited.mouseEnabled = true;
         this.GA_Limited.mouseChildren = false;
         this.GA_Limited.buttonMode = true;
         _loc2_;
         this.GA_Limited.addEventListener(MouseEvent.ROLL_OVER,this.rollOverAccessButton,false,0,true);
         this.GA_Limited.addEventListener(MouseEvent.ROLL_OUT,this.rollOutAccessButton,false,0,true);
         this.GA_Limited.addEventListener(MouseEvent.CLICK,this.selectLimitedGame,false,0,true);
         _loc2_;
         this.GA_Private.mouseEnabled = true;
         _loc1_;
         _loc1_;
         this.GA_Private.mouseChildren = false;
         _loc1_;
         this.GA_Private.buttonMode = true;
         this.GA_Private.addEventListener(MouseEvent.ROLL_OVER,this.rollOverAccessButton,false,0,true);
         this.GA_Private.addEventListener(MouseEvent.ROLL_OUT,this.rollOutAccessButton,false,0,true);
         this.GA_Private.addEventListener(MouseEvent.CLICK,this.selectPrivateGame,false,0,true);
         this.mod_slot_1.mouseEnabled = true;
         this.mod_slot_1.mouseChildren = false;
         _loc2_;
         _loc2_;
         this.mod_slot_1.buttonMode = true;
         this.mod_slot_1.addEventListener(MouseEvent.ROLL_OVER,this.rollOverModSlot,false,0,true);
         _loc1_;
         this.mod_slot_1.addEventListener(MouseEvent.ROLL_OUT,this.rollOutModSlot,false,0,true);
         this.mod_slot_1.addEventListener(MouseEvent.CLICK,this.selectModSlot,false,0,true);
         this.mod_slot_2.mouseEnabled = true;
         this.mod_slot_2.mouseChildren = false;
         this.mod_slot_2.buttonMode = true;
         _loc2_;
         this.mod_slot_2.addEventListener(MouseEvent.ROLL_OVER,this.rollOverModSlot,false,0,true);
         this.mod_slot_2.addEventListener(MouseEvent.ROLL_OUT,this.rollOutModSlot,false,0,true);
         _loc1_;
         _loc1_;
         this.mod_slot_2.addEventListener(MouseEvent.CLICK,this.selectModSlot,false,0,true);
         this.mod_slot_3.mouseEnabled = true;
         this.mod_slot_3.mouseChildren = false;
         this.mod_slot_3.buttonMode = true;
         _loc2_;
         _loc2_;
         this.mod_slot_3.addEventListener(MouseEvent.ROLL_OVER,this.rollOverModSlot,false,0,true);
         _loc2_;
         _loc2_;
         this.mod_slot_3.addEventListener(MouseEvent.ROLL_OUT,this.rollOutModSlot,false,0,true);
         this.mod_slot_3.addEventListener(MouseEvent.CLICK,this.selectModSlot,false,0,true);
         this.setup_button.mouseEnabled = true;
         this.setup_button.mouseChildren = false;
         _loc1_;
         this.setup_button.buttonMode = true;
         this.setup_button.addEventListener(MouseEvent.ROLL_OVER,this.rollOverSetup,false,0,true);
         this.setup_button.addEventListener(MouseEvent.ROLL_OUT,this.rollOutSetup,false,0,true);
         _loc2_;
         this.setup_button.addEventListener(MouseEvent.CLICK,this.startCustomGame,false,0,true);
         _loc2_;
         this.setup_button.gotoAndStop("up");
      }
      
      public var setup_button:MovieClip;
      
      public var tab_not_focused:MovieClip;
      
      public var mod_slot_2:MovieClip;
      
      public var GA_Limited:MovieClip;
      
      public var mod_slot_3:MovieClip;
      
      public var tab_focused:MovieClip;
      
      public var mod_slot_1:MovieClip;
      
      public var GA_Private:MovieClip;
      
      public var set_players_3:MovieClip;
      
      public var set_players_2:MovieClip;
      
      public var §_-VE§:MovieClip;
      
      public var set_players_4:MovieClip;
      
      public var GA_Open:MovieClip;
      
      private var players_count:int = 4;
      
      private var §_-Ga§:Boolean = false;
      
      private var private_game:Boolean = false;
      
      private var mods:Array;
      
      private var limit_level:Boolean = false;
      
      public var modSelectPanel:ModSelectPanel;
      
      private var current_mod_slot:int;
      
      private var unlocked_count:int = 0;
      
      private var mod_panel_visible:Boolean = false;
      
      public function resetPanel() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selectFourPlayers(null);
         _loc3_;
         this.selectOpenGame(null);
         this.limit_level = false;
         this.§_-Ga§ = false;
         this.clearAllMods();
         this.modSelectPanel.§_-qs§();
         var _loc1_:String = String(Math.floor(Global.getLevel(Global.teamXP.getInt()) / 10));
         _loc3_;
         _loc3_;
         if(_loc1_ == "0")
         {
            _loc3_;
            this.GA_Limited.levels_text.text = String("TO LEVELS\n1-9");
            _loc3_;
         }
         else
         {
            this.GA_Limited.levels_text.text = String("TO LEVELS\n" + _loc1_ + "0-" + _loc1_ + "9");
         }
      }
      
      private function hideModPanel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.modSelectPanel.visible = false;
         _loc1_;
         _loc1_;
         this.mod_panel_visible = false;
      }
      
      private function showModPanel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         if(this.current_mod_slot == 1)
         {
            _loc2_;
            _loc2_;
            this.modSelectPanel.x = 17;
            _loc1_;
            _loc1_;
            this.modSelectPanel.y = this.mod_slot_1.y + 2;
            _loc1_;
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.current_mod_slot == 2)
            {
               _loc1_;
               _loc1_;
               _loc1_;
               this.modSelectPanel.x = 17;
               _loc1_;
               this.modSelectPanel.y = this.mod_slot_2.y + 2;
               _loc2_;
            }
            else if(this.current_mod_slot == 3)
            {
               _loc1_;
               _loc1_;
               this.modSelectPanel.x = 17;
               this.modSelectPanel.y = this.mod_slot_3.y + 2;
            }
            
         }
         this.modSelectPanel.visible = true;
         this.mod_panel_visible = true;
      }
      
      private function selectModSlot(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.mod_panel_visible)
         {
            this.disableModSlots();
            _loc3_;
            _loc3_;
            if(this.unlocked_count > 0)
            {
               _loc3_;
               _loc3_;
               this.modSelectPanel.§_-qs§(this.mods);
               if(param1.currentTarget == this.mod_slot_1)
               {
                  this.current_mod_slot = 1;
                  this.mod_slot_1.mouseEnabled = true;
                  _loc3_;
                  _loc3_;
               }
               else if(param1.currentTarget == this.mod_slot_2)
               {
                  this.current_mod_slot = 2;
                  _loc2_;
                  this.mod_slot_2.mouseEnabled = true;
                  _loc2_;
               }
               else if(param1.currentTarget == this.mod_slot_3)
               {
                  _loc2_;
                  this.current_mod_slot = 3;
                  this.mod_slot_3.mouseEnabled = true;
               }
               
               
               this.showModPanel();
            }
         }
         else
         {
            this.hideModPanel();
            this.enableModSlots();
         }
      }
      
      public function finishSelectMod(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.hideModPanel();
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.current_mod_slot == 1)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(param1 == -1)
            {
               this.mod_slot_1.gotoAndStop("off");
               this.mod_slot_1.mod_icon.visible = false;
               _loc5_;
               this.mod_slot_1.mod_name.text = "";
            }
            else
            {
               this.mod_slot_1.gotoAndStop("active");
               this.mod_slot_1.mod_icon.changeIcon(param1);
               _loc5_;
               _loc5_;
               this.mod_slot_1.mod_icon.visible = true;
               this.mod_slot_1.mod_name.text = Global.modNames[param1].toUpperCase();
               _loc4_;
               _loc4_;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.mods[0] = param1;
         }
         else
         {
            _loc5_;
            _loc4_;
            if(this.current_mod_slot == 2)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(param1 == -1)
               {
                  _loc5_;
                  this.mod_slot_2.gotoAndStop("off");
                  _loc5_;
                  _loc5_;
                  this.mod_slot_2.mod_icon.visible = false;
                  this.mod_slot_2.mod_name.text = "";
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  this.mod_slot_2.gotoAndStop("active");
                  _loc4_;
                  _loc4_;
                  this.mod_slot_2.mod_icon.changeIcon(param1);
                  this.mod_slot_2.mod_icon.visible = true;
                  this.mod_slot_2.mod_name.text = Global.modNames[param1].toUpperCase();
                  _loc4_;
               }
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.mods[1] = param1;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(this.current_mod_slot == 3)
               {
                  if(param1 == -1)
                  {
                     _loc5_;
                     this.mod_slot_3.gotoAndStop("off");
                     this.mod_slot_3.mod_icon.visible = false;
                     this.mod_slot_3.mod_name.text = "";
                     _loc4_;
                  }
                  else
                  {
                     this.mod_slot_3.gotoAndStop("active");
                     this.mod_slot_3.mod_icon.changeIcon(param1);
                     _loc5_;
                     this.mod_slot_3.mod_icon.visible = true;
                     this.mod_slot_3.mod_name.text = Global.modNames[param1].toUpperCase();
                     _loc5_;
                  }
                  this.mods[2] = param1;
                  _loc5_;
               }
            }
         }
         this.enableModSlots();
         var _loc2_:Array = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < this.mods.length)
         {
            if(this.mods[_loc3_] != -1)
            {
               _loc4_;
               _loc2_.push(this.mods[_loc3_]);
               _loc4_;
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         _loc4_;
         Global.lobby_display.displayGameMods(_loc2_);
      }
      
      private function enableModSlots() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.unlocked_count == 0)
         {
            _loc1_;
            this.disableModSlots();
            _loc2_;
         }
         else
         {
            this.mod_slot_1.mouseEnabled = true;
            _loc1_;
            this.mod_slot_2.mouseEnabled = true;
            _loc2_;
            this.mod_slot_3.mouseEnabled = true;
         }
      }
      
      private function disableModSlots() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.mod_slot_1.mouseEnabled = false;
         _loc1_;
         _loc1_;
         this.mod_slot_2.mouseEnabled = false;
         _loc2_;
         _loc2_;
         this.mod_slot_3.mouseEnabled = false;
      }
      
      private function clearAllMods() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         this.mods = new Array();
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.mods[0] = -1;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.mods[1] = -1;
         _loc5_;
         this.mods[2] = -1;
         _loc5_;
         _loc5_;
         this.unlocked_count = 0;
         var _loc1_:* = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc1_ >= SafeGlobal.modsUnlocked.length)
            {
               break;
            }
            if(SafeGlobal.modsUnlocked[_loc1_] == true)
            {
               _loc4_;
               _loc5_;
               this.unlocked_count++;
               _loc4_;
            }
            _loc1_++;
         }
         _loc4_;
         if(this.unlocked_count == 0)
         {
            this.mod_slot_1.gotoAndStop("no_mods");
            this.mod_slot_2.gotoAndStop("no_mods");
            this.mod_slot_3.gotoAndStop("no_mods");
            this.disableModSlots();
            _loc4_;
         }
         else
         {
            this.mod_slot_1.gotoAndStop("off");
            _loc5_;
            this.mod_slot_2.gotoAndStop("off");
            _loc5_;
            _loc5_;
            this.mod_slot_3.gotoAndStop("off");
            this.enableModSlots();
            _loc5_;
         }
         this.mod_slot_1.mod_icon.visible = false;
         this.mod_slot_1.mod_name.text = "";
         this.mod_slot_2.mod_icon.visible = false;
         this.mod_slot_2.mod_name.text = "";
         this.mod_slot_3.mod_icon.visible = false;
         _loc5_;
         this.mod_slot_3.mod_name.text = "";
         _loc5_;
         this.hideModPanel();
      }
      
      private function startCustomGame(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = new Array();
         var _loc3_:* = 0;
         while(true)
         {
            _loc3_;
            if(this.mods[_loc3_] != -1)
            {
               _loc5_;
               _loc2_.push(this.mods[_loc3_]);
               _loc5_;
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
      }
      
      private function selectOpenGame(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.private_game = false;
         this.limit_level = false;
         this.GA_Open.gotoAndStop("selected");
         _loc2_;
         this.GA_Open.mouseEnabled = false;
         this.GA_Private.gotoAndStop("off");
         _loc2_;
         _loc2_;
         this.GA_Private.mouseEnabled = true;
         this.GA_Limited.gotoAndStop("off");
         this.GA_Limited.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.GA_Limited.levels_text.textColor = 3355443;
      }
      
      private function selectLimitedGame(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.private_game = false;
         _loc2_;
         _loc2_;
         this.limit_level = true;
         this.GA_Limited.gotoAndStop("selected");
         _loc2_;
         _loc2_;
         this.GA_Limited.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.GA_Private.gotoAndStop("off");
         this.GA_Private.mouseEnabled = true;
         this.GA_Open.gotoAndStop("off");
         this.GA_Open.mouseEnabled = true;
         _loc2_;
         this.GA_Limited.levels_text.textColor = 0;
      }
      
      private function selectPrivateGame(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.private_game = true;
         _loc2_;
         this.limit_level = false;
         _loc2_;
         this.GA_Private.gotoAndStop("selected");
         _loc2_;
         this.GA_Private.mouseEnabled = false;
         this.GA_Open.gotoAndStop("off");
         this.GA_Open.mouseEnabled = true;
         _loc3_;
         _loc3_;
         this.GA_Limited.gotoAndStop("off");
         this.GA_Limited.mouseEnabled = true;
         _loc2_;
         this.GA_Limited.levels_text.textColor = 3355443;
      }
      
      private function selectTwoPlayers(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.players_count = 2;
         this.§_-Ga§ = false;
         _loc2_;
         _loc2_;
         this.set_players_2.gotoAndStop("selected");
         _loc2_;
         _loc2_;
         this.set_players_2.mouseEnabled = false;
         this.set_players_3.gotoAndStop("off");
         _loc2_;
         _loc2_;
         this.set_players_3.mouseEnabled = true;
         this.set_players_4.gotoAndStop("off");
         this.set_players_4.mouseEnabled = true;
         this.§_-VE§.gotoAndStop("off");
         this.§_-VE§.mouseEnabled = true;
      }
      
      private function selectThreePlayers(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.players_count = 3;
         _loc2_;
         this.§_-Ga§ = false;
         this.set_players_3.gotoAndStop("selected");
         this.set_players_3.mouseEnabled = false;
         this.set_players_2.gotoAndStop("off");
         this.set_players_2.mouseEnabled = true;
         this.set_players_4.gotoAndStop("off");
         this.set_players_4.mouseEnabled = true;
         _loc2_;
         this.§_-VE§.gotoAndStop("off");
         _loc2_;
         this.§_-VE§.mouseEnabled = true;
      }
      
      private function selectFourPlayers(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.players_count = 4;
         this.§_-Ga§ = false;
         this.set_players_4.gotoAndStop("selected");
         _loc2_;
         _loc2_;
         this.set_players_4.mouseEnabled = false;
         this.set_players_3.gotoAndStop("off");
         _loc2_;
         this.set_players_3.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.set_players_2.gotoAndStop("off");
         this.set_players_2.mouseEnabled = true;
         this.§_-VE§.gotoAndStop("off");
         _loc3_;
         _loc3_;
         this.§_-VE§.mouseEnabled = true;
      }
      
      private function §_-am§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.players_count = 4;
         this.§_-Ga§ = true;
         this.§_-VE§.gotoAndStop("selected");
         _loc3_;
         _loc3_;
         this.§_-VE§.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.set_players_4.gotoAndStop("off");
         this.set_players_4.mouseEnabled = true;
         this.set_players_3.gotoAndStop("off");
         this.set_players_3.mouseEnabled = true;
         this.set_players_2.gotoAndStop("off");
         _loc2_;
         this.set_players_2.mouseEnabled = true;
      }
      
      private function rollOverSetup(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.setup_button.gotoAndStop("over");
      }
      
      private function rollOutSetup(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.setup_button.gotoAndStop("up");
      }
      
      private function rollOverAccessButton(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.currentTarget == this.GA_Open && (this.private_game == true || this.limit_level == true))
         {
            param1.currentTarget.gotoAndStop("over");
         }
         else if(param1.currentTarget == this.GA_Private && this.private_game == false)
         {
            _loc2_;
            param1.currentTarget.gotoAndStop("over");
            _loc2_;
         }
         else
         {
            _loc3_;
            if(param1.currentTarget == this.GA_Limited && this.limit_level == false)
            {
               _loc3_;
               _loc3_;
               param1.currentTarget.gotoAndStop("over");
            }
         }
         
      }
      
      private function rollOutAccessButton(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1.currentTarget == this.GA_Open && (this.private_game == true || this.limit_level == true))
         {
            param1.currentTarget.gotoAndStop("off");
         }
         else
         {
            _loc2_;
            _loc2_;
            if(param1.currentTarget == this.GA_Private && this.private_game == false)
            {
               param1.currentTarget.gotoAndStop("off");
               _loc2_;
               _loc2_;
            }
            else if(param1.currentTarget == this.GA_Limited && this.limit_level == false)
            {
               param1.currentTarget.gotoAndStop("off");
            }
            
         }
      }
      
      private function rollOverPlayersButton(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.currentTarget == this.set_players_2 && !(this.players_count == 2))
         {
            param1.currentTarget.gotoAndStop("over");
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1.currentTarget == this.set_players_3 && !(this.players_count == 3))
            {
               _loc2_;
               _loc2_;
               param1.currentTarget.gotoAndStop("over");
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc2_;
               if(param1.currentTarget == this.set_players_4 && (!(this.players_count == 4) || this.§_-Ga§ == true))
               {
                  _loc2_;
                  param1.currentTarget.gotoAndStop("over");
                  _loc3_;
               }
               else
               {
                  _loc2_;
                  if(param1.currentTarget == this.§_-VE§ && this.§_-Ga§ == false)
                  {
                     _loc3_;
                     param1.currentTarget.gotoAndStop("over");
                  }
               }
            }
         }
      }
      
      private function rollOutPlayersButton(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1.currentTarget == this.set_players_2 && !(this.players_count == 2))
         {
            _loc3_;
            _loc3_;
            param1.currentTarget.gotoAndStop("off");
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            if(param1.currentTarget == this.set_players_3 && !(this.players_count == 3))
            {
               _loc2_;
               param1.currentTarget.gotoAndStop("off");
               _loc2_;
            }
            else if(param1.currentTarget == this.set_players_4 && (!(this.players_count == 4) || this.§_-Ga§ == true))
            {
               _loc2_;
               param1.currentTarget.gotoAndStop("off");
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc3_;
               if(param1.currentTarget == this.§_-VE§ && this.§_-Ga§ == false)
               {
                  param1.currentTarget.gotoAndStop("off");
               }
            }
            
         }
      }
      
      private function rollOverModSlot(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1.currentTarget == this.mod_slot_1)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(this.unlocked_count == 0)
            {
               _loc2_;
               _loc2_;
               param1.currentTarget.gotoAndStop("no_mods");
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.mods[0] == -1)
               {
                  param1.currentTarget.gotoAndStop("over");
               }
               else
               {
                  param1.currentTarget.gotoAndStop("active_over");
                  _loc2_;
                  _loc2_;
               }
            }
         }
         else if(param1.currentTarget == this.mod_slot_2)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.unlocked_count == 0)
            {
               param1.currentTarget.gotoAndStop("no_mods");
               _loc3_;
            }
            else
            {
               _loc2_;
               _loc3_;
               if(this.mods[1] == -1)
               {
                  param1.currentTarget.gotoAndStop("over");
               }
               else
               {
                  param1.currentTarget.gotoAndStop("active_over");
               }
            }
         }
         else if(param1.currentTarget == this.mod_slot_3)
         {
            _loc2_;
            _loc2_;
            if(this.unlocked_count == 0)
            {
               param1.currentTarget.gotoAndStop("no_mods");
               _loc3_;
            }
            else if(this.mods[2] == -1)
            {
               param1.currentTarget.gotoAndStop("over");
               _loc2_;
               _loc2_;
            }
            else
            {
               param1.currentTarget.gotoAndStop("active_over");
            }
            
         }
         
         
      }
      
      private function rollOutModSlot(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.currentTarget == this.mod_slot_1)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.unlocked_count == 0)
            {
               _loc2_;
               _loc2_;
               param1.currentTarget.gotoAndStop("no_mods");
               _loc3_;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.mods[0] == -1)
               {
                  param1.currentTarget.gotoAndStop("off");
               }
               else
               {
                  param1.currentTarget.gotoAndStop("active");
               }
            }
         }
         else if(param1.currentTarget == this.mod_slot_2)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.unlocked_count == 0)
            {
               param1.currentTarget.gotoAndStop("no_mods");
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc2_;
               _loc3_;
               if(this.mods[1] == -1)
               {
                  param1.currentTarget.gotoAndStop("off");
               }
               else
               {
                  param1.currentTarget.gotoAndStop("active");
                  _loc3_;
               }
            }
         }
         else if(param1.currentTarget == this.mod_slot_3)
         {
            if(this.unlocked_count == 0)
            {
               _loc3_;
               _loc3_;
               param1.currentTarget.gotoAndStop("no_mods");
            }
            else if(this.mods[2] == -1)
            {
               _loc3_;
               _loc3_;
               param1.currentTarget.gotoAndStop("off");
               _loc2_;
            }
            else
            {
               param1.currentTarget.gotoAndStop("active");
            }
            
         }
         
         
      }
      
      override protected function setTabFocused(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         players_panel.focusSetupTab();
      }
      
      override protected function activate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tab_focused.visible = true;
      }
      
      override protected function deactivate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.tab_focused.visible = false;
      }
   }
}
