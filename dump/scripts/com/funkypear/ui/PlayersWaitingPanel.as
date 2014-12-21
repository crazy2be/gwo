package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import fl.transitions.TweenEvent;
   import flash.events.TimerEvent;
   import flash.text.TextFieldAutoSize;
   import fl.transitions.easing.Strong;
   
   public class PlayersWaitingPanel extends PlayersTabPanel
   {
      
      public function PlayersWaitingPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         _loc1_;
         tab_name = "GAME";
         tab_button = this.tab_not_focused;
         this.white_mask.visible = false;
         this.panel_list = new Array();
         _loc2_;
         this.action_list = new Array();
         this.tween_array = new Array();
         this.panel_holder = new Sprite();
         _loc2_;
         _loc2_;
         addChild(this.panel_holder);
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
         this.§_-0U§ = new Sprite();
         _loc1_;
         this.§_-0U§.x = 9;
         _loc1_;
         _loc1_;
         this.§_-0U§.y = 271;
         this.§_-0U§.graphics.beginFill(0,1);
         this.§_-0U§.graphics.drawRect(0,0,256,173);
         this.§_-0U§.graphics.endFill();
         this.§_-0U§.visible = false;
         _loc2_;
         _loc2_;
         addChild(this.§_-0U§);
         this.chat_mask_4p = new Sprite();
         this.chat_mask_4p.x = 9;
         this.chat_mask_4p.y = 254;
         _loc2_;
         _loc2_;
         this.chat_mask_4p.graphics.beginFill(0,1);
         _loc2_;
         _loc2_;
         this.chat_mask_4p.graphics.drawRect(0,0,256,190);
         this.chat_mask_4p.graphics.endFill();
         _loc2_;
         this.chat_mask_4p.visible = false;
         addChild(this.chat_mask_4p);
         _loc1_;
         _loc1_;
         this.chat_mask_3p = new Sprite();
         _loc2_;
         this.chat_mask_3p.x = 9;
         this.chat_mask_3p.y = 201;
         this.chat_mask_3p.graphics.beginFill(0,1);
         _loc2_;
         _loc2_;
         this.chat_mask_3p.graphics.drawRect(0,0,256,243);
         this.chat_mask_3p.graphics.endFill();
         this.chat_mask_3p.visible = false;
         addChild(this.chat_mask_3p);
         _loc2_;
         _loc2_;
         this.chat_mask_2p = new Sprite();
         this.chat_mask_2p.x = 9;
         this.chat_mask_2p.y = 147;
         _loc2_;
         _loc2_;
         this.chat_mask_2p.graphics.beginFill(0,1);
         this.chat_mask_2p.graphics.drawRect(0,0,256,297);
         this.chat_mask_2p.graphics.endFill();
         this.chat_mask_2p.visible = false;
         _loc2_;
         _loc2_;
         addChild(this.chat_mask_2p);
         this.§_-u8§ = new §_-Za§(this.§_-q9§,this.§_-0U§,false);
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-u8§.x = 255;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-u8§.y = 271;
         _loc2_;
         _loc2_;
         this.§_-u8§.visible = false;
         addChild(this.§_-u8§);
         _loc2_;
         _loc2_;
         this.§_-u8§.§_-oc§();
         this.chat_scroller_4p = new §_-Za§(this.chat_display_4p,this.chat_mask_4p,false);
         _loc1_;
         _loc2_;
         _loc2_;
         this.chat_scroller_4p.x = 255;
         _loc1_;
         _loc1_;
         this.chat_scroller_4p.y = 254;
         _loc2_;
         _loc2_;
         _loc2_;
         this.chat_scroller_4p.visible = false;
         addChild(this.chat_scroller_4p);
         _loc1_;
         this.chat_scroller_4p.§_-oc§();
         _loc1_;
         this.chat_scroller_3p = new §_-Za§(this.chat_display_3p,this.chat_mask_3p,false);
         _loc1_;
         _loc2_;
         _loc1_;
         this.chat_scroller_3p.x = 255;
         _loc1_;
         this.chat_scroller_3p.y = 201;
         _loc1_;
         _loc1_;
         this.chat_scroller_3p.visible = false;
         addChild(this.chat_scroller_3p);
         _loc2_;
         this.chat_scroller_3p.§_-oc§();
         _loc1_;
         _loc1_;
         this.chat_scroller_2p = new §_-Za§(this.chat_display_2p,this.chat_mask_2p,false);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.chat_scroller_2p.x = 255;
         _loc2_;
         this.chat_scroller_2p.y = 147;
         _loc1_;
         _loc1_;
         this.chat_scroller_2p.visible = false;
         addChild(this.chat_scroller_2p);
         _loc2_;
         _loc2_;
         this.chat_scroller_2p.§_-oc§();
         this.§_-q6§.mouseEnabled = true;
         this.§_-q6§.mouseChildren = false;
         this.§_-q6§.buttonMode = true;
         this.§_-q6§.addEventListener(MouseEvent.ROLL_OVER,this.§_-Er§,false,0,true);
         this.§_-q6§.addEventListener(MouseEvent.ROLL_OUT,this.§_-tc§,false,0,true);
         this.§_-q6§.addEventListener(MouseEvent.CLICK,this.§_-KQ§,false,0,true);
         _loc1_;
         _loc1_;
         init();
      }
      
      public var empty1:MovieClip;
      
      public var empty2:MovieClip;
      
      public var empty3:MovieClip;
      
      public var tab_not_focused:MovieClip;
      
      public var §_-q6§:MovieClip;
      
      public var empty4:MovieClip;
      
      public var bg_panel:MovieClip;
      
      public var tab_focused:MovieClip;
      
      public var chat_display_2p:game_chat_display_2p;
      
      public var chat_display_3p:game_chat_display_3p;
      
      public var §_-q9§:§_-AI§;
      
      public var white_mask:MovieClip;
      
      public var chat_display_4p:game_chat_display_4p;
      
      public var deactivate_box:MovieClip;
      
      public var chat_input_text:TextField;
      
      private var countdown_started:Boolean = false;
      
      private var panel_holder:Sprite;
      
      private var panel_list:Array;
      
      private var action_list:Array;
      
      private var current_action:String;
      
      private var animating:Boolean = false;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var tween_a:Tween;
      
      private var tween_array:Array;
      
      private var remove_user:String;
      
      private var §_-0f§:int;
      
      private var §_-y1§:int;
      
      private var tween_up_count:int;
      
      private var finished_tween_up_count:int;
      
      private var §_-H-§:int;
      
      private var JOIN_START_Y:int = 34;
      
      private var §_-fN§:int = 0;
      
      private var PANEL_SPEED:int = 10;
      
      private var Y_SPACING = 53;
      
      private var TEAM2_START_Y:int = 140;
      
      private var TEAM2_START_POS:int = 2;
      
      private var max_players:int;
      
      private var §_-Ga§:Boolean;
      
      private var chat_display_text:TextField;
      
      private var chat_display:Sprite;
      
      private var chat_scroller:§_-Za§;
      
      private var chat_mask:Sprite;
      
      private var chat_mask_2p:Sprite;
      
      private var chat_mask_3p:Sprite;
      
      private var chat_mask_4p:Sprite;
      
      private var §_-0U§:Sprite;
      
      private var chat_scroller_2p:§_-Za§;
      
      private var chat_scroller_3p:§_-Za§;
      
      private var chat_scroller_4p:§_-Za§;
      
      private var §_-u8§:§_-Za§;
      
      private var §_-R6§:Timer;
      
      private var §_-li§:Boolean = false;
      
      public function focusInputText(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         input_text_focused = true;
         _loc2_;
         _loc2_;
         this.chat_input_text.removeEventListener(MouseEvent.CLICK,this.focusInputText);
         _loc2_;
         this.chat_input_text.addEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText,false,0,true);
      }
      
      public function unfocusInputText(param1:FocusEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         input_text_focused = false;
         _loc2_;
         _loc2_;
         this.chat_input_text.removeEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText);
         _loc3_;
         _loc3_;
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
      }
      
      override protected function setTabFocused(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         players_panel.focusWaitingTab();
      }
      
      override protected function activate() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.tab_focused.visible = true;
      }
      
      override protected function deactivate() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.chat_input_text.text = "";
         _loc2_;
         _loc2_;
         input_string = "";
         _loc1_;
         _loc1_;
         this.white_mask.visible = false;
         _loc2_;
         _loc2_;
         this.tab_focused.visible = false;
      }
      
      override protected function clearChatText() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.tween_x != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishAddUser);
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutUser);
            _loc2_;
            this.tween_x.stop();
            _loc3_;
            this.tween_x = null;
         }
         var _loc1_:* = 0;
         while(_loc1_ < this.tween_array.length)
         {
            _loc2_;
            _loc2_;
            if(this.tween_array[_loc1_] != null)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_;
               this.tween_array[_loc1_].removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenUp);
               _loc2_;
               _loc2_;
               this.tween_array[_loc1_].stop();
               _loc2_;
               this.tween_array[_loc1_] = null;
            }
            _loc1_++;
         }
         this.tween_array.length = 0;
         this.tween_array = new Array();
         _loc2_;
         _loc2_;
         if(this.tween_a != null)
         {
            this.tween_a.stop();
            this.tween_a = null;
            _loc3_;
            _loc3_;
         }
         while(this.panel_holder.numChildren > 0)
         {
            this.panel_holder.removeChildAt(0);
            _loc3_;
            _loc3_;
         }
         if(this.panel_list.length > 0)
         {
            _loc2_;
            _loc2_;
            this.panel_list.length = 0;
            _loc2_;
            this.panel_list = new Array();
            _loc2_;
            _loc2_;
         }
         if(this.action_list.length > 0)
         {
            this.action_list.length = 0;
            this.action_list = new Array();
         }
         _loc3_;
         if(this.tween_array.length > 0)
         {
            this.tween_array.length = 0;
            _loc3_;
            _loc3_;
            this.tween_array = new Array();
         }
         this.remove_user = "";
         this.§_-0f§ = -1;
         _loc2_;
         this.§_-y1§ = -1;
         _loc3_;
         this.current_action = "";
         this.animating = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-q9§.chat_display_text.htmlText = "";
         _loc2_;
         _loc2_;
         this.chat_display_4p.chat_display_text.htmlText = "";
         _loc2_;
         _loc3_;
         _loc3_;
         this.chat_display_3p.chat_display_text.htmlText = "";
         _loc2_;
         this.chat_display_2p.chat_display_text.htmlText = "";
         _loc3_;
         _loc3_;
         this.§_-q9§.chat_display_text.height = 163;
         this.chat_display_4p.chat_display_text.height = 190;
         this.chat_display_3p.chat_display_text.height = 243;
         this.chat_display_2p.chat_display_text.height = 297;
         _loc2_;
         _loc2_;
         if(this.chat_scroller != null)
         {
            _loc3_;
            _loc3_;
            this.chat_scroller.§_-oc§();
         }
      }
      
      override public function handleKeyPressed() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
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
         _loc3_;
         _loc3_;
         if(!players_panel.is_hidden)
         {
            if(this.chat_input_text.text != "")
            {
               this.white_mask.visible = true;
               _loc2_;
            }
            else
            {
               this.white_mask.visible = false;
            }
            if(param1 == 13)
            {
               input_string = this.chat_input_text.text;
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
            _loc3_;
            this.chat_display_text.htmlText = param1;
            _loc2_;
            _loc3_;
            _loc3_;
            this.chat_scroller.§_-oc§(this.chat_display_text.textHeight + 5);
            _loc2_;
            _loc2_;
            this.chat_scroller.§_-u3§();
            _loc3_;
            highlightTabNotFocused();
         }
      }
      
      override public function displayChatDeactivated() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.deactivate_box.visible = true;
      }
      
      override public function displayChatActivated() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.deactivate_box.visible = false;
      }
      
      override protected function sendChat() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = null;
         _loc2_;
         if(SafeGlobal.connected_to_waiting)
         {
            _loc2_;
            _loc2_;
            _loc1_ = input_string;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(!(_loc1_ == "") && !(_loc1_ == " "))
            {
               Global.lobby_client.sendWaitingAreaChat(_loc1_);
            }
            this.chat_input_text.text = "";
            input_string = "";
            this.white_mask.visible = false;
         }
      }
      
      public function §_-x1§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.§_-Ga§ == true)
         {
            _loc2_;
            this.§_-li§ = true;
            if(this.§_-R6§ != null)
            {
               this.§_-R6§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Vl§);
               this.§_-R6§ = null;
               _loc1_;
            }
            this.§_-q6§.mouseEnabled = false;
            _loc2_;
            _loc2_;
            this.§_-q6§.buttonMode = false;
            _loc2_;
            this.§_-q6§.gotoAndStop("off");
         }
      }
      
      public function deactivateColourChange() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.countdown_started = true;
         var _loc1_:* = 0;
         while(_loc1_ < this.panel_list.length)
         {
            this.panel_list[_loc1_].deactivateColourChange();
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc2_;
         }
      }
      
      public function setMaxPlayers(param1:int, param2:Boolean) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:MovieClip = null;
         _loc6_;
         this.countdown_started = false;
         _loc5_;
         _loc5_;
         this.max_players = param1;
         _loc5_;
         _loc5_;
         this.§_-Ga§ = param2;
         var _loc3_:MovieClip = getChildByName("bg_panel") as MovieClip;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         if(this.§_-Ga§ == true)
         {
            _loc3_.gotoAndStop("tb");
         }
         else
         {
            _loc3_.gotoAndStop(String(param1 + "p"));
            _loc5_;
         }
         if(this.§_-Ga§ == true)
         {
            _loc5_;
            _loc5_;
            this.§_-q9§.visible = true;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.chat_display_4p.visible = false;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.chat_display_3p.visible = false;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.chat_display_2p.visible = false;
            _loc5_;
            _loc5_;
            this.§_-u8§.visible = true;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.chat_scroller_4p.visible = false;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.chat_scroller_3p.visible = false;
            _loc6_;
            _loc6_;
            _loc5_;
            this.chat_scroller_2p.visible = false;
            this.§_-0U§.visible = true;
            this.chat_mask_4p.visible = false;
            _loc6_;
            this.chat_mask_3p.visible = false;
            _loc5_;
            this.chat_mask_2p.visible = false;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-q9§.mask = this.§_-0U§;
            this.chat_mask = this.§_-0U§;
            _loc6_;
            this.chat_scroller = this.§_-u8§;
            _loc5_;
            _loc5_;
            this.chat_display = this.§_-q9§;
            this.chat_display_text = this.§_-q9§.chat_display_text;
            _loc6_;
            MAX_CHAT_ITEMS = 50;
            this.§_-q6§.gotoAndStop("up");
            _loc5_;
            _loc5_;
            this.§_-q6§.visible = true;
            this.§_-q6§.mouseEnabled = true;
            this.§_-q6§.buttonMode = true;
            this.§_-li§ = false;
         }
         else
         {
            this.§_-q6§.visible = false;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(param1 == 4)
            {
               _loc5_;
               _loc5_;
               this.chat_display_4p.visible = true;
               _loc5_;
               _loc5_;
               this.chat_display_3p.visible = false;
               _loc6_;
               _loc5_;
               _loc5_;
               this.chat_display_2p.visible = false;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.§_-q9§.visible = false;
               _loc6_;
               _loc6_;
               _loc5_;
               this.chat_scroller_4p.visible = true;
               _loc6_;
               _loc6_;
               _loc6_;
               this.chat_scroller_3p.visible = false;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.chat_scroller_2p.visible = false;
               _loc5_;
               _loc6_;
               _loc6_;
               this.§_-u8§.visible = false;
               _loc6_;
               this.chat_mask_4p.visible = true;
               _loc6_;
               _loc6_;
               this.chat_mask_3p.visible = false;
               this.chat_mask_2p.visible = false;
               _loc6_;
               _loc6_;
               this.§_-0U§.visible = false;
               _loc6_;
               _loc6_;
               this.chat_display_4p.mask = this.chat_mask_4p;
               this.chat_mask = this.chat_mask_4p;
               _loc5_;
               _loc5_;
               this.chat_scroller = this.chat_scroller_4p;
               this.chat_display = this.chat_display_4p;
               this.chat_display_text = this.chat_display_4p.chat_display_text;
               _loc5_;
               MAX_CHAT_ITEMS = 50;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc6_;
               if(param1 == 3)
               {
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  this.chat_display_4p.visible = false;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.chat_display_3p.visible = true;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.chat_display_2p.visible = false;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.§_-q9§.visible = false;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  this.chat_scroller_4p.visible = false;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  this.chat_scroller_3p.visible = true;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  this.chat_scroller_2p.visible = false;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  this.§_-u8§.visible = false;
                  _loc5_;
                  _loc5_;
                  this.chat_mask_4p.visible = false;
                  this.chat_mask_3p.visible = true;
                  _loc5_;
                  this.chat_mask_2p.visible = false;
                  this.§_-0U§.visible = false;
                  _loc5_;
                  _loc5_;
                  this.chat_display_3p.mask = this.chat_mask_3p;
                  this.chat_mask = this.chat_mask_3p;
                  this.chat_scroller = this.chat_scroller_3p;
                  _loc6_;
                  this.chat_display = this.chat_display_3p;
                  this.chat_display_text = this.chat_display_3p.chat_display_text;
                  MAX_CHAT_ITEMS = 50;
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  if(param1 == 2)
                  {
                     _loc5_;
                     _loc6_;
                     this.chat_display_4p.visible = false;
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     this.chat_display_3p.visible = false;
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     this.chat_display_2p.visible = true;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     this.§_-q9§.visible = false;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     this.chat_scroller_4p.visible = false;
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     this.chat_scroller_3p.visible = false;
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     this.chat_scroller_2p.visible = true;
                     _loc6_;
                     _loc6_;
                     this.§_-u8§.visible = false;
                     this.chat_mask_4p.visible = false;
                     _loc6_;
                     this.chat_mask_3p.visible = false;
                     _loc5_;
                     this.chat_mask_2p.visible = true;
                     _loc6_;
                     this.§_-0U§.visible = false;
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     this.chat_display_2p.mask = this.chat_mask_2p;
                     _loc5_;
                     _loc5_;
                     this.chat_mask = this.chat_mask_2p;
                     _loc6_;
                     this.chat_scroller = this.chat_scroller_2p;
                     _loc5_;
                     this.chat_display = this.chat_display_2p;
                     this.chat_display_text = this.chat_display_2p.chat_display_text;
                     MAX_CHAT_ITEMS = 50;
                     _loc5_;
                  }
                  else
                  {
                     this.chat_display_4p.visible = true;
                     this.chat_display_3p.visible = false;
                     this.chat_display_2p.visible = false;
                     _loc6_;
                     this.§_-q9§.visible = false;
                     _loc5_;
                     this.chat_scroller_4p.visible = true;
                     this.chat_scroller_3p.visible = false;
                     this.chat_scroller_2p.visible = false;
                     this.§_-u8§.visible = false;
                     _loc5_;
                     this.chat_mask_4p.visible = true;
                     this.chat_mask_3p.visible = false;
                     _loc5_;
                     this.chat_mask_2p.visible = false;
                     _loc6_;
                     this.§_-0U§.visible = false;
                     _loc6_;
                     _loc6_;
                     this.chat_display_4p.mask = this.chat_mask_4p;
                     _loc5_;
                     _loc5_;
                     this.chat_mask = this.chat_mask_4p;
                     _loc5_;
                     this.chat_scroller = this.chat_scroller_4p;
                     this.chat_display = this.chat_display_4p;
                     this.chat_display_text = this.chat_display_4p.chat_display_text;
                     MAX_CHAT_ITEMS = 50;
                  }
               }
            }
         }
         this.chat_display_text.autoSize = TextFieldAutoSize.LEFT;
         this.chat_display_text.wordWrap = true;
         this.chat_scroller.§_-oc§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 == 4)
         {
            _loc4_ = getChildByName("empty1") as MovieClip;
            _loc4_.alpha = 1;
            _loc5_;
            _loc4_.visible = true;
            _loc4_ = getChildByName("empty2") as MovieClip;
            _loc4_.alpha = 1;
            _loc6_;
            _loc6_;
            _loc4_.visible = true;
            _loc4_ = getChildByName("empty3") as MovieClip;
            _loc4_.alpha = 1;
            _loc6_;
            _loc6_;
            _loc4_.visible = true;
            _loc4_ = getChildByName("empty4") as MovieClip;
            _loc4_.alpha = 1;
            _loc5_;
            _loc5_;
            _loc4_.visible = true;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc6_;
            if(param1 == 3)
            {
               _loc6_;
               _loc6_;
               _loc4_ = getChildByName("empty1") as MovieClip;
               _loc4_.alpha = 1;
               _loc5_;
               _loc4_.visible = true;
               _loc4_ = getChildByName("empty2") as MovieClip;
               _loc4_.alpha = 1;
               _loc6_;
               _loc4_.visible = true;
               _loc4_ = getChildByName("empty3") as MovieClip;
               _loc4_.alpha = 1;
               _loc6_;
               _loc4_.visible = true;
               _loc4_ = getChildByName("empty4") as MovieClip;
               _loc4_.alpha = 0;
               _loc6_;
               _loc4_.visible = false;
            }
            else if(param1 == 2)
            {
               _loc4_ = getChildByName("empty1") as MovieClip;
               _loc4_.alpha = 1;
               _loc6_;
               _loc6_;
               _loc4_.visible = true;
               _loc4_ = getChildByName("empty2") as MovieClip;
               _loc4_.alpha = 1;
               _loc5_;
               _loc4_.visible = true;
               _loc4_ = getChildByName("empty3") as MovieClip;
               _loc4_.alpha = 0;
               _loc6_;
               _loc4_.visible = false;
               _loc4_ = getChildByName("empty4") as MovieClip;
               _loc4_.alpha = 0;
               _loc6_;
               _loc6_;
               _loc4_.visible = false;
            }
            
         }
      }
      
      public function updatePlayers() : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc1_:* = 0;
         while(true)
         {
            _loc11_;
            if(_loc1_ >= Global.player_array.length)
            {
               break;
            }
            _loc1_++;
         }
         _loc10_;
         _loc10_;
         if(this.panel_list.length == 0)
         {
            _loc11_;
            _loc2_ = 0;
            while(true)
            {
               _loc10_;
               if(_loc2_ >= Global.player_array.length)
               {
                  break;
               }
               this.addNewUser(Global.player_array[_loc2_].uid,Global.player_array[_loc2_].user_name,Global.player_array[_loc2_].colour,Global.player_array[_loc2_].helmet,Global.player_array[_loc2_].teamxp,Global.player_array[_loc2_].kills,Global.player_array[_loc2_].golds,Global.player_array[_loc2_].awards,Global.player_array[_loc2_].team_id,Global.player_array[_loc2_].team_pos);
               _loc11_;
               _loc11_;
               _loc2_++;
            }
         }
         else
         {
            _loc3_ = 0;
            while(true)
            {
               _loc10_;
               _loc10_;
               if(_loc3_ >= Global.player_array.length)
               {
                  break;
               }
               _loc10_;
               if(this.getPlayerExists(Global.player_array[_loc3_].uid))
               {
                  this.setPlayerHelmet(Global.player_array[_loc3_].uid,Global.player_array[_loc3_].helmet);
                  _loc10_;
                  this.setPlayerColour(Global.player_array[_loc3_].uid,Global.player_array[_loc3_].colour);
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  if(this.§_-Ga§)
                  {
                     _loc11_;
                     _loc11_;
                     this.§_-Ae§(Global.player_array[_loc3_].uid,Global.player_array[_loc3_].team_id,Global.player_array[_loc3_].team_pos);
                  }
               }
               _loc3_++;
            }
            _loc10_;
            _loc4_ = 0;
            while(true)
            {
               _loc10_;
               _loc10_;
               if(_loc4_ >= this.panel_list.length)
               {
                  break;
               }
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_ = this.panel_list[_loc4_].uid;
               _loc11_;
               _loc11_;
               _loc6_ = false;
               _loc10_;
               _loc10_;
               _loc7_ = 0;
               _loc11_;
               while(true)
               {
                  _loc10_;
                  if(_loc7_ >= Global.player_array.length)
                  {
                     break;
                  }
                  _loc10_;
                  _loc11_;
                  if(Global.player_array[_loc7_].uid == _loc5_)
                  {
                     _loc10_;
                     _loc10_;
                     _loc6_ = true;
                     break;
                  }
                  _loc7_++;
                  _loc11_;
                  _loc11_;
               }
               if(!_loc6_)
               {
                  _loc10_;
                  if(this.action_list.length > 0)
                  {
                     _loc10_;
                     _loc10_;
                     _loc8_ = 0;
                     while(true)
                     {
                        _loc10_;
                        _loc10_;
                        if(_loc8_ >= this.action_list.length)
                        {
                           break;
                        }
                        _loc9_ = this.action_list[_loc8_].split(",");
                        _loc10_;
                        if(_loc9_[0] == "REMOVE" && _loc9_[1] == _loc5_)
                        {
                           _loc11_;
                           _loc11_;
                           _loc6_ = true;
                           _loc11_;
                           _loc11_;
                           break;
                        }
                        _loc8_++;
                     }
                  }
               }
               if(!_loc6_)
               {
                  _loc10_;
                  _loc10_;
                  this.removeUser(_loc5_);
               }
               _loc4_++;
            }
            _loc11_;
            _loc3_ = 0;
            while(_loc3_ < Global.player_array.length)
            {
               if(!this.getPlayerExists(Global.player_array[_loc3_].uid))
               {
                  _loc11_;
                  _loc11_;
                  this.addNewUser(Global.player_array[_loc3_].uid,Global.player_array[_loc3_].user_name,Global.player_array[_loc3_].colour,Global.player_array[_loc3_].helmet,Global.player_array[_loc3_].teamxp,Global.player_array[_loc3_].kills,Global.player_array[_loc3_].golds,Global.player_array[_loc3_].awards,Global.player_array[_loc3_].team_id,Global.player_array[_loc3_].team_pos);
                  _loc10_;
               }
               _loc3_++;
               _loc10_;
            }
         }
      }
      
      public function getPlayerExists(param1:String) : Boolean
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         var _loc5_:Array = null;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         while(true)
         {
            _loc6_;
            _loc7_;
            _loc7_;
            if(_loc3_ >= this.panel_list.length)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc7_;
            if(this.panel_list[_loc3_].uid == param1)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         _loc7_;
         _loc7_;
         if(!_loc2_)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.action_list.length > 0)
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc4_ = 0;
               while(_loc4_ < this.action_list.length)
               {
                  _loc5_ = this.action_list[_loc4_].split(",");
                  _loc6_;
                  _loc6_;
                  if(_loc5_[0] == "ADD" && _loc5_[1] == param1)
                  {
                     _loc6_;
                     _loc2_ = true;
                     _loc7_;
                     _loc7_;
                     break;
                  }
                  _loc4_++;
               }
            }
         }
         return _loc2_;
      }
      
      public function addNewUser(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:int, param10:int) : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         this.action_list.push("ADD," + param1 + "," + param2 + "," + param3 + "," + param4 + "," + param5 + "," + param6 + "," + param7 + "," + param8 + "," + param9 + "," + param10);
         _loc12_;
         if(!this.animating)
         {
            _loc12_;
            _loc12_;
            this.processNextAction();
         }
      }
      
      public function removeUser(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         this.action_list.push("REMOVE," + param1);
         _loc3_;
         if(!this.animating)
         {
            _loc2_;
            _loc2_;
            this.processNextAction();
         }
      }
      
      private function processNextAction() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.action_list.length > 0)
         {
            this.current_action = this.action_list[0];
            this.action_list.shift();
            this.animating = true;
            this.startAnimation();
            _loc1_;
            _loc1_;
         }
         else
         {
            this.animating = false;
         }
      }
      
      private function startAnimation() : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:UserJoinPanel = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:MovieClip = null;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc1_:Array = this.current_action.split(",");
         _loc11_;
         if(_loc1_[0] == "ADD")
         {
            _loc10_;
            _loc10_;
            _loc2_ = new UserJoinPanel(this.countdown_started);
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc3_ = this.panel_list.push(_loc2_);
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_--;
            _loc11_;
            _loc11_;
            _loc2_.x = 300;
            _loc10_;
            this.§_-H-§ = _loc3_;
            _loc2_.y = this.JOIN_START_Y + _loc3_ * this.Y_SPACING;
            _loc10_;
            if(this.§_-Ga§)
            {
               _loc2_.init(_loc1_[1],_loc1_[2],parseInt(_loc1_[3]),parseInt(_loc1_[4]),parseInt(_loc1_[5]),parseInt(_loc1_[6]),parseInt(_loc1_[7]),parseInt(_loc1_[8]),parseInt(_loc1_[9]),parseInt(_loc1_[10]));
               _loc11_;
            }
            else
            {
               _loc2_.init(_loc1_[1],_loc1_[2],parseInt(_loc1_[3]),parseInt(_loc1_[4]),parseInt(_loc1_[5]),parseInt(_loc1_[6]),parseInt(_loc1_[7]),parseInt(_loc1_[8]));
               _loc11_;
            }
            _loc2_.name = _loc1_[1];
            this.panel_holder.addChild(_loc2_);
            _loc11_;
            _loc11_;
            this.tween_x = new Tween(_loc2_,"x",Strong.easeOut,_loc2_.x,4,this.PANEL_SPEED,false);
            _loc10_;
            _loc11_;
            this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishAddUser,false,0,true);
            this.tween_x.start();
            _loc4_ = this.panel_list.length;
            _loc5_ = String("empty" + _loc4_);
            _loc6_ = getChildByName(_loc5_) as MovieClip;
            _loc6_.visible = true;
            _loc10_;
            _loc10_;
            _loc6_.alpha = 1;
            _loc10_;
            _loc10_;
            this.tween_a = new Tween(_loc6_,"alpha",Strong.easeOut,1,0,this.PANEL_SPEED,false);
            _loc11_;
            this.tween_a.start();
         }
         else if(_loc1_[0] == "REMOVE")
         {
            _loc10_;
            _loc10_;
            this.remove_user = _loc1_[1];
            _loc11_;
            _loc11_;
            _loc7_ = false;
            _loc11_;
            _loc11_;
            _loc8_ = 0;
            while(_loc8_ < this.panel_list.length)
            {
               if(this.panel_list[_loc8_].name == this.remove_user)
               {
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  _loc7_ = true;
               }
               _loc8_++;
               _loc10_;
               _loc10_;
            }
            _loc10_;
            _loc11_;
            _loc11_;
            _loc9_ = false;
            _loc11_;
            if(_loc7_)
            {
               _loc2_ = this.panel_holder.getChildByName(this.remove_user) as UserJoinPanel;
               _loc11_;
               this.§_-0f§ = _loc2_.team_id;
               this.§_-y1§ = _loc2_.team_pos;
               if(_loc2_ != null)
               {
                  _loc10_;
                  _loc10_;
                  this.tween_x = new Tween(_loc2_,"x",Strong.easeOut,_loc2_.x,300,this.PANEL_SPEED,false);
                  _loc10_;
                  _loc11_;
                  this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOutUser,false,0,true);
                  this.tween_x.start();
                  _loc4_ = this.panel_list.length;
                  _loc5_ = String("empty" + _loc4_);
                  _loc6_ = getChildByName(_loc5_) as MovieClip;
                  _loc6_.alpha = 0;
                  _loc10_;
                  _loc10_;
                  _loc6_.visible = true;
                  _loc10_;
                  _loc10_;
                  this.tween_a = new Tween(_loc6_,"alpha",Strong.easeOut,0,1,this.PANEL_SPEED,false);
                  _loc10_;
                  _loc10_;
                  this.tween_a.start();
                  _loc11_;
                  _loc9_ = true;
               }
            }
            if(!_loc9_)
            {
               _loc11_;
               _loc11_;
               this.processNextAction();
            }
         }
         
      }
      
      public function finishAddUser(param1:TweenEvent) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = this.panel_list.length;
         var _loc3_:String = String("empty" + _loc2_);
         var _loc4_:MovieClip = getChildByName(_loc3_) as MovieClip;
         if(_loc4_ != null)
         {
            _loc5_;
            _loc4_.visible = false;
            _loc6_;
            _loc6_;
         }
         if(this.action_list.length > 0)
         {
            _loc5_;
            this.processNextAction();
            _loc5_;
            _loc5_;
         }
         else
         {
            this.animating = false;
         }
      }
      
      public function finishTweenOutUser(param1:TweenEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function finishTweenUp(param1:TweenEvent) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         this.finished_tween_up_count++;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(this.finished_tween_up_count == this.tween_up_count)
         {
            _loc5_;
            _loc2_ = 0;
            while(_loc2_ < this.tween_array.length)
            {
               _loc6_;
               _loc5_;
               if(this.tween_array[_loc2_] != null)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  this.tween_array[_loc2_].removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenUp);
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  this.tween_array[_loc2_] = null;
               }
               _loc2_++;
            }
            _loc6_;
            _loc6_;
            this.tween_array.length = 0;
            _loc5_;
            _loc5_;
            this.tween_array = new Array();
            _loc6_;
            _loc6_;
            if(this.action_list.length > 0)
            {
               _loc6_;
               _loc6_;
               this.processNextAction();
            }
            else
            {
               this.animating = false;
            }
         }
      }
      
      public function setPlayerColour(param1:String, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:UserJoinPanel = this.panel_holder.getChildByName(param1) as UserJoinPanel;
         _loc5_;
         if(_loc3_ != null)
         {
            _loc4_;
            _loc3_.changeColour(param2);
         }
      }
      
      public function setPlayerHelmet(param1:String, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:UserJoinPanel = this.panel_holder.getChildByName(param1) as UserJoinPanel;
         _loc4_;
         if(_loc3_ != null)
         {
            _loc5_;
            _loc5_;
            _loc3_.§_-dJ§(param2);
         }
      }
      
      public function §_-Ae§(param1:String, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:UserJoinPanel = this.panel_holder.getChildByName(param1) as UserJoinPanel;
         if(_loc4_ != null)
         {
            _loc5_;
            _loc4_.§_-Nu§(param2,param3);
         }
      }
      
      public function §_-Er§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!this.§_-li§)
         {
            _loc2_;
            _loc2_;
            this.§_-q6§.gotoAndStop("over");
         }
      }
      
      public function §_-tc§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!this.§_-li§)
         {
            _loc3_;
            this.§_-q6§.gotoAndStop("up");
         }
      }
      
      public function §_-KQ§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-Ga§ == true && !this.§_-li§)
         {
            _loc2_;
            _loc2_;
            this.§_-q6§.mouseEnabled = false;
            _loc2_;
            this.§_-q6§.buttonMode = false;
            this.§_-li§ = true;
            _loc3_;
            _loc3_;
            this.§_-q6§.gotoAndStop("off");
            Global.lobby_client.§_-t7§();
            _loc2_;
            _loc2_;
            this.§_-R6§ = new Timer(3000,1);
            this.§_-R6§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Vl§,false,0,true);
            _loc3_;
            this.§_-R6§.start();
         }
      }
      
      public function §_-Vl§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-R6§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-Vl§);
         _loc2_;
         this.§_-R6§ = null;
         this.§_-li§ = false;
         this.§_-q6§.gotoAndStop("up");
         _loc3_;
         _loc3_;
         this.§_-q6§.mouseEnabled = true;
         this.§_-q6§.buttonMode = true;
      }
   }
}
