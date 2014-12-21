package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import fl.transitions.easing.Strong;
   import flash.text.TextFieldAutoSize;
   
   public class PlayersGamePanel extends PlayersTabPanel
   {
      
      public function PlayersGamePanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         tab_name = "GAME";
         _loc2_;
         tab_button = this.tab_not_focused;
         this.white_mask.visible = false;
         _loc1_;
         this.panel_holder = new Sprite();
         this.panel_list = new Array();
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.panel_list[0] = null;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.panel_list[1] = null;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.panel_list[2] = null;
         _loc1_;
         _loc1_;
         this.panel_list[3] = null;
         addChild(this.panel_holder);
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
         this.chat_mask_4p = new Sprite();
         _loc1_;
         this.chat_mask_4p.x = 9;
         _loc2_;
         _loc2_;
         this.chat_mask_4p.y = 254;
         this.chat_mask_4p.graphics.beginFill(0,1);
         this.chat_mask_4p.graphics.drawRect(0,0,256,190);
         this.chat_mask_4p.graphics.endFill();
         this.chat_mask_4p.visible = false;
         addChild(this.chat_mask_4p);
         this.chat_mask_3p = new Sprite();
         _loc1_;
         _loc1_;
         this.chat_mask_3p.x = 9;
         _loc1_;
         this.chat_mask_3p.y = 201;
         _loc1_;
         _loc1_;
         this.chat_mask_3p.graphics.beginFill(0,1);
         this.chat_mask_3p.graphics.drawRect(0,0,256,243);
         this.chat_mask_3p.graphics.endFill();
         _loc1_;
         this.chat_mask_3p.visible = false;
         addChild(this.chat_mask_3p);
         _loc2_;
         this.chat_mask_2p = new Sprite();
         this.chat_mask_2p.x = 9;
         this.chat_mask_2p.y = 147;
         _loc2_;
         _loc2_;
         this.chat_mask_2p.graphics.beginFill(0,1);
         this.chat_mask_2p.graphics.drawRect(0,0,256,297);
         this.chat_mask_2p.graphics.endFill();
         _loc1_;
         _loc1_;
         this.chat_mask_2p.visible = false;
         addChild(this.chat_mask_2p);
         this.chat_scroller_4p = new §_-Za§(this.chat_display_4p,this.chat_mask_4p,false);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.chat_scroller_4p.x = 255;
         _loc2_;
         this.chat_scroller_4p.y = 254;
         _loc2_;
         this.chat_scroller_4p.visible = false;
         _loc2_;
         _loc2_;
         addChild(this.chat_scroller_4p);
         this.chat_scroller_4p.§_-oc§();
         _loc1_;
         _loc1_;
         this.chat_scroller_3p = new §_-Za§(this.chat_display_3p,this.chat_mask_3p,false);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.chat_scroller_3p.x = 255;
         _loc1_;
         _loc1_;
         this.chat_scroller_3p.y = 201;
         _loc1_;
         _loc1_;
         _loc1_;
         this.chat_scroller_3p.visible = false;
         _loc1_;
         addChild(this.chat_scroller_3p);
         _loc2_;
         this.chat_scroller_3p.§_-oc§();
         _loc1_;
         this.chat_scroller_2p = new §_-Za§(this.chat_display_2p,this.chat_mask_2p,false);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.chat_scroller_2p.x = 255;
         _loc2_;
         _loc2_;
         _loc1_;
         this.chat_scroller_2p.y = 147;
         _loc1_;
         _loc1_;
         this.chat_scroller_2p.visible = false;
         _loc1_;
         _loc1_;
         addChild(this.chat_scroller_2p);
         _loc1_;
         this.chat_scroller_2p.§_-oc§();
         _loc2_;
         _loc2_;
         init();
      }
      
      public var empty1:MovieClip;
      
      public var empty2:MovieClip;
      
      public var empty3:MovieClip;
      
      public var tab_not_focused:MovieClip;
      
      public var empty4:MovieClip;
      
      public var bg_panel:MovieClip;
      
      public var tab_focused:MovieClip;
      
      public var chat_display_2p:game_chat_display_2p;
      
      public var chat_display_3p:game_chat_display_3p;
      
      public var white_mask:MovieClip;
      
      public var chat_display_4p:game_chat_display_4p;
      
      public var chat_input_text:TextField;
      
      private var tween_x:Tween;
      
      private var tween_a:Tween;
      
      private var panel_holder:Sprite;
      
      private var panel_list:Array;
      
      private var JOIN_START_Y:int = 34;
      
      private var PANEL_SPEED:int = 10;
      
      private var Y_SPACING = 54;
      
      private var chat_display_text:TextField;
      
      private var chat_display:Sprite;
      
      private var chat_scroller:§_-Za§;
      
      private var chat_mask:Sprite;
      
      private var chat_mask_2p:Sprite;
      
      private var chat_mask_3p:Sprite;
      
      private var chat_mask_4p:Sprite;
      
      private var chat_scroller_2p:§_-Za§;
      
      private var chat_scroller_3p:§_-Za§;
      
      private var chat_scroller_4p:§_-Za§;
      
      public function focusInputText(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         input_text_focused = true;
         _loc2_;
         _loc2_;
         this.chat_input_text.removeEventListener(MouseEvent.CLICK,this.focusInputText);
         _loc3_;
         this.chat_input_text.addEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText,false,0,true);
      }
      
      public function unfocusInputText(param1:FocusEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         input_text_focused = false;
         _loc2_;
         _loc2_;
         this.chat_input_text.removeEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText);
         _loc3_;
         _loc3_;
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
      }
      
      public function §_-rl§() : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:* = 0;
         var _loc8_:UserPositionPanel = null;
         var _loc1_:Array = new Array();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc10_;
            if(_loc3_ >= SafeGlobal.game_over_data.team_data.length)
            {
               break;
            }
            _loc1_[_loc3_] = SafeGlobal.game_over_data.team_data[_loc3_];
            if(_loc1_[_loc3_].medal == 2)
            {
               _loc2_++;
               _loc10_;
               _loc10_;
            }
            _loc3_++;
         }
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(SafeGlobal.§_-yj§ == true && _loc2_ == 4)
         {
            _loc9_;
            _loc1_.sortOn("teamBattleID",Array.NUMERIC);
         }
         else
         {
            _loc1_.sortOn("medal",Array.NUMERIC);
         }
         var _loc7_:* = 0;
         _loc10_;
         _loc10_;
         while(_loc7_ < _loc1_.length)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc6_ = _loc7_ + 1;
            _loc9_;
            _loc9_;
            if(_loc1_[_loc7_].medal == 0)
            {
               _loc9_;
               _loc4_ = String("empty" + _loc6_);
               _loc5_ = getChildByName(_loc4_) as MovieClip;
               _loc5_.alpha = 1;
               _loc9_;
            }
            else if(this.panel_list[_loc7_] == null)
            {
               _loc10_;
               _loc8_ = new UserPositionPanel();
               _loc10_;
               this.panel_list[_loc7_] = _loc8_;
               _loc9_;
               _loc9_;
               _loc8_.x = 300;
               _loc8_.y = this.JOIN_START_Y + _loc7_ * this.Y_SPACING;
               _loc8_.init(_loc1_[_loc7_].uid,_loc1_[_loc7_].teamName,_loc1_[_loc7_].colourID,_loc1_[_loc7_].helmetID,_loc1_[_loc7_].medal,_loc1_[_loc7_].online,_loc1_[_loc7_].teamBattleID);
               _loc10_;
               this.panel_holder.addChild(_loc8_);
               this.tween_x = new Tween(_loc8_,"x",Strong.easeOut,_loc8_.x,4,this.PANEL_SPEED,false);
               this.tween_x.start();
               _loc9_;
               _loc9_;
               _loc4_ = String("empty" + _loc6_);
               _loc5_ = getChildByName(_loc4_) as MovieClip;
               _loc10_;
               this.tween_a = new Tween(_loc5_,"alpha",Strong.easeOut,1,0,this.PANEL_SPEED,false);
               _loc9_;
               this.tween_a.start();
            }
            
            _loc7_++;
         }
         this.setMaxPlayers(_loc1_.length);
      }
      
      public function updateGamePositions() : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:* = 0;
         var _loc8_:UserPositionPanel = null;
         var _loc1_:Array = new Array();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc3_ >= SafeGlobal.game_over_data.team_data.length)
            {
               break;
            }
            _loc1_[_loc3_] = SafeGlobal.game_over_data.team_data[_loc3_];
            _loc10_;
            _loc10_;
            if(_loc1_[_loc3_].medal == 2)
            {
               _loc10_;
               _loc2_++;
               _loc9_;
               _loc9_;
            }
            _loc3_++;
         }
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(SafeGlobal.§_-yj§ == true && _loc2_ == 4)
         {
            _loc1_.sortOn("teamBattleID",Array.NUMERIC);
         }
         else
         {
            _loc1_.sortOn("medal",Array.NUMERIC);
         }
         var _loc7_:* = 0;
         while(_loc7_ < _loc1_.length)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc6_ = _loc7_ + 1;
            _loc9_;
            _loc9_;
            if(_loc1_[_loc7_].medal == 0)
            {
               _loc4_ = String("empty" + _loc6_);
               _loc5_ = getChildByName(_loc4_) as MovieClip;
               _loc5_.alpha = 1;
               _loc10_;
               _loc10_;
            }
            else if(this.panel_list[_loc7_] == null)
            {
               _loc8_ = new UserPositionPanel();
               this.panel_list[_loc7_] = _loc8_;
               _loc9_;
               _loc8_.x = 300;
               _loc8_.y = this.JOIN_START_Y + _loc7_ * this.Y_SPACING;
               _loc8_.init(_loc1_[_loc7_].uid,_loc1_[_loc7_].teamName,_loc1_[_loc7_].colourID,_loc1_[_loc7_].helmetID,_loc1_[_loc7_].medal,_loc1_[_loc7_].online,_loc1_[_loc7_].teamBattleID);
               _loc9_;
               _loc9_;
               this.panel_holder.addChild(_loc8_);
               this.tween_x = new Tween(_loc8_,"x",Strong.easeOut,_loc8_.x,4,this.PANEL_SPEED,false);
               this.tween_x.start();
               _loc4_ = String("empty" + _loc6_);
               _loc5_ = getChildByName(_loc4_) as MovieClip;
               _loc10_;
               _loc10_;
               this.tween_a = new Tween(_loc5_,"alpha",Strong.easeOut,1,0,this.PANEL_SPEED,false);
               _loc10_;
               this.tween_a.start();
            }
            
            _loc7_++;
         }
         this.setMaxPlayers(_loc1_.length);
      }
      
      public function setMaxPlayers(param1:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:MovieClip = null;
         _loc5_;
         var _loc2_:int = param1;
         var _loc3_:MovieClip = getChildByName("bg_panel") as MovieClip;
         _loc3_.gotoAndStop(String(_loc2_ + "p"));
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(_loc2_ == 4)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.chat_display_4p.visible = true;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.chat_display_3p.visible = false;
            _loc5_;
            _loc6_;
            this.chat_display_2p.visible = false;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            this.chat_scroller_4p.visible = true;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.chat_scroller_3p.visible = false;
            _loc5_;
            _loc6_;
            _loc6_;
            this.chat_scroller_2p.visible = false;
            _loc5_;
            this.chat_mask_4p.visible = true;
            _loc5_;
            this.chat_mask_3p.visible = false;
            this.chat_mask_2p.visible = false;
            _loc5_;
            _loc5_;
            this.chat_display_4p.mask = this.chat_mask_4p;
            _loc5_;
            this.chat_mask = this.chat_mask_4p;
            this.chat_scroller = this.chat_scroller_4p;
            _loc6_;
            this.chat_display = this.chat_display_4p;
            this.chat_display_text = this.chat_display_4p.chat_display_text;
            _loc6_;
            _loc6_;
            MAX_CHAT_ITEMS = 50;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(_loc2_ == 3)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.chat_display_4p.visible = false;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               this.chat_display_3p.visible = true;
               _loc5_;
               _loc5_;
               _loc5_;
               this.chat_display_2p.visible = false;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.chat_scroller_4p.visible = false;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               this.chat_scroller_3p.visible = true;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.chat_scroller_2p.visible = false;
               _loc5_;
               _loc5_;
               this.chat_mask_4p.visible = false;
               this.chat_mask_3p.visible = true;
               this.chat_mask_2p.visible = false;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.chat_display_3p.mask = this.chat_mask_3p;
               this.chat_mask = this.chat_mask_3p;
               this.chat_scroller = this.chat_scroller_3p;
               this.chat_display = this.chat_display_3p;
               _loc5_;
               this.chat_display_text = this.chat_display_3p.chat_display_text;
               _loc5_;
               MAX_CHAT_ITEMS = 50;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc2_ == 2)
               {
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  this.chat_display_4p.visible = false;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.chat_display_3p.visible = false;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  this.chat_display_2p.visible = true;
                  _loc6_;
                  _loc6_;
                  this.chat_scroller_4p.visible = false;
                  _loc5_;
                  _loc5_;
                  this.chat_scroller_3p.visible = false;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.chat_scroller_2p.visible = true;
                  _loc6_;
                  _loc6_;
                  this.chat_mask_4p.visible = false;
                  this.chat_mask_3p.visible = false;
                  this.chat_mask_2p.visible = true;
                  _loc6_;
                  _loc6_;
                  this.chat_display_2p.mask = this.chat_mask_2p;
                  _loc5_;
                  _loc5_;
                  this.chat_mask = this.chat_mask_2p;
                  _loc5_;
                  this.chat_scroller = this.chat_scroller_2p;
                  this.chat_display = this.chat_display_2p;
                  this.chat_display_text = this.chat_display_2p.chat_display_text;
                  _loc5_;
                  MAX_CHAT_ITEMS = 50;
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  this.chat_display_4p.visible = true;
                  this.chat_display_3p.visible = false;
                  this.chat_display_2p.visible = false;
                  this.chat_scroller_4p.visible = true;
                  this.chat_scroller_3p.visible = false;
                  this.chat_scroller_2p.visible = false;
                  this.chat_mask_4p.visible = true;
                  this.chat_mask_3p.visible = false;
                  this.chat_mask_2p.visible = false;
                  _loc6_;
                  _loc6_;
                  this.chat_display_4p.mask = this.chat_mask_4p;
                  _loc6_;
                  _loc6_;
                  this.chat_mask = this.chat_mask_4p;
                  _loc5_;
                  _loc5_;
                  this.chat_scroller = this.chat_scroller_4p;
                  _loc6_;
                  this.chat_display = this.chat_display_4p;
                  _loc5_;
                  this.chat_display_text = this.chat_display_4p.chat_display_text;
                  _loc6_;
                  MAX_CHAT_ITEMS = 50;
               }
            }
         }
         this.chat_display_text.autoSize = TextFieldAutoSize.LEFT;
         this.chat_display_text.wordWrap = true;
         _loc6_;
         this.chat_scroller.§_-oc§();
         this.chat_scroller.§_-u3§();
         _loc5_;
         _loc6_;
         _loc6_;
         if(_loc2_ == 3)
         {
            _loc5_;
            _loc5_;
            _loc4_ = getChildByName("empty4") as MovieClip;
            _loc4_.alpha = 0;
         }
         if(_loc2_ == 2)
         {
            _loc4_ = getChildByName("empty3") as MovieClip;
            _loc4_.alpha = 0;
            _loc4_ = getChildByName("empty4") as MovieClip;
            _loc4_.alpha = 0;
         }
      }
      
      public function displayPlayingAgain(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this.panel_list.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.panel_list[_loc2_] != null)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.panel_list[_loc2_].uid == param1)
               {
                  _loc3_;
                  _loc3_;
                  this.panel_list[_loc2_].displayPlayingAgain();
                  _loc3_;
                  break;
               }
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function displayLeftRoom(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this.panel_list.length)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.panel_list[_loc2_] != null)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               if(this.panel_list[_loc2_].uid == param1)
               {
                  _loc4_;
                  _loc4_;
                  this.panel_list[_loc2_].displayLeftRoom();
                  _loc3_;
                  _loc3_;
                  break;
               }
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      override protected function setTabFocused(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         players_panel.focusGameTab();
      }
      
      override protected function activate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.tab_focused.visible = true;
      }
      
      override protected function deactivate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.chat_input_text.text = "";
         _loc1_;
         input_string = "";
         _loc1_;
         this.white_mask.visible = false;
         _loc1_;
         _loc1_;
         this.tab_focused.visible = false;
      }
      
      override protected function clearChatText() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(this.panel_holder.numChildren > 0)
         {
            this.panel_holder.removeChildAt(0);
         }
         _loc2_;
         _loc2_;
         if(this.panel_list.length > 0)
         {
            _loc1_;
            _loc1_;
            this.panel_list.length = 0;
            this.panel_list = new Array();
         }
         _loc1_;
         this.chat_display_4p.chat_display_text.htmlText = "";
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.chat_display_3p.chat_display_text.htmlText = "";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.chat_display_2p.chat_display_text.htmlText = "";
         this.chat_display_4p.chat_display_text.height = 190;
         _loc2_;
         this.chat_display_3p.chat_display_text.height = 243;
         _loc1_;
         _loc1_;
         this.chat_display_2p.chat_display_text.height = 297;
         _loc2_;
         _loc2_;
         if(this.chat_scroller != null)
         {
            this.chat_scroller.§_-oc§();
         }
      }
      
      override public function handleKeyPressed() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.chat_input_text.text != "")
         {
            _loc1_;
            this.white_mask.visible = true;
            _loc1_;
            _loc1_;
         }
         else
         {
            this.white_mask.visible = false;
         }
      }
      
      override public function handleKeyReleased(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!players_panel.is_hidden)
         {
            _loc2_;
            if(this.chat_input_text.text != "")
            {
               _loc3_;
               _loc3_;
               this.white_mask.visible = true;
            }
            else
            {
               this.white_mask.visible = false;
            }
            if(param1 == 13)
            {
               input_string = this.chat_input_text.text;
               _loc3_;
               this.sendChat();
               this.chat_input_text.setSelection(0,0);
            }
         }
      }
      
      override protected function displayChatText(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.chat_display_text != null)
         {
            _loc2_;
            this.chat_display_text.htmlText = param1;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.chat_scroller.§_-oc§(this.chat_display_text.textHeight + 5);
            _loc3_;
            this.chat_scroller.§_-u3§();
            _loc3_;
            _loc3_;
            highlightTabNotFocused();
         }
      }
      
      override protected function sendChat() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = null;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(SafeGlobal.connected_to_game)
         {
            _loc3_;
            _loc3_;
            _loc1_ = input_string;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(_loc1_ == "") && !(_loc1_ == " "))
            {
               _loc3_;
               SafeGlobal.game_client.sendGameChat(_loc1_);
            }
            this.chat_input_text.text = "";
            _loc3_;
            _loc3_;
            input_string = "";
            _loc2_;
            this.white_mask.visible = false;
         }
      }
   }
}
