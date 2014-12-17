package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import flash.text.TextFieldAutoSize;
   
   public class PlayersLobbyPanel extends PlayersTabPanel
   {
      
      public function PlayersLobbyPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         tab_name = "LOBBY";
         _loc2_;
         _loc2_;
         tab_button = this.tab_not_focused;
         this.white_mask.visible = false;
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
         this.§_-Ff§ = new Sprite();
         _loc1_;
         this.§_-Ff§.x = 8;
         this.§_-Ff§.y = 36;
         _loc1_;
         _loc1_;
         addChild(this.§_-Ff§);
         this.§_-5O§ = new Sprite();
         _loc2_;
         this.§_-5O§.x = 8;
         this.§_-5O§.y = 36;
         this.§_-5O§.graphics.beginFill(0,1);
         _loc1_;
         this.§_-5O§.graphics.drawRect(0,0,255,202);
         this.§_-5O§.graphics.endFill();
         addChild(this.§_-5O§);
         this.§_-Ff§.mask = this.§_-5O§;
         this.player_count = new §_-c§();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.player_count.x = 8;
         this.player_count.y = 214;
         addChild(this.player_count);
         _loc1_;
         _loc1_;
         this.§_-4C§ = new §_-vr§(this.§_-Ff§,this.§_-5O§,false);
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-4C§.x = 255;
         this.§_-4C§.y = 36;
         _loc1_;
         _loc1_;
         addChild(this.§_-4C§);
         this.chat_mask = new Sprite();
         _loc2_;
         this.chat_mask.x = 9;
         this.chat_mask.y = 254;
         this.chat_mask.graphics.beginFill(0,1);
         this.chat_mask.graphics.drawRect(0,0,256,190);
         this.chat_mask.graphics.endFill();
         _loc2_;
         addChild(this.chat_mask);
         _loc2_;
         _loc2_;
         this.chat_display.mask = this.chat_mask;
         _loc1_;
         this.chat_display.chat_display_text.autoSize = TextFieldAutoSize.LEFT;
         _loc1_;
         this.chat_display.chat_display_text.wordWrap = true;
         _loc1_;
         _loc1_;
         this.chat_scroller = new §_-vr§(this.chat_display,this.chat_mask,false);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.chat_scroller.x = 255;
         _loc1_;
         _loc1_;
         this.chat_scroller.y = 254;
         addChild(this.chat_scroller);
         _loc1_;
         _loc1_;
         this.chat_scroller.§_-ps§();
         _loc1_;
         init();
      }
      
      public var tab_not_focused:MovieClip;
      
      public var tab_focused:MovieClip;
      
      public var white_mask:MovieClip;
      
      public var deactivate_box:MovieClip;
      
      public var chat_input_text:TextField;
      
      public var chat_display:§_-8K§;
      
      private var §_-4C§:§_-vr§;
      
      private var §_-Ff§:Sprite;
      
      private var §_-5O§:Sprite;
      
      private var chat_scroller:§_-vr§;
      
      private var chat_mask:Sprite;
      
      private var player_count:§_-c§;
      
      public function focusInputText(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         input_text_focused = true;
         _loc3_;
         _loc3_;
         this.chat_input_text.removeEventListener(MouseEvent.CLICK,this.focusInputText);
         _loc3_;
         _loc3_;
         this.chat_input_text.addEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText,false,0,true);
      }
      
      public function unfocusInputText(param1:FocusEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         input_text_focused = false;
         _loc3_;
         _loc3_;
         this.chat_input_text.removeEventListener(FocusEvent.FOCUS_OUT,this.unfocusInputText);
         _loc3_;
         _loc3_;
         this.chat_input_text.addEventListener(MouseEvent.CLICK,this.focusInputText,false,0,true);
      }
      
      public function updatePlayerList() : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:LobbyJoinPanel = null;
         _loc12_;
         if(this.§_-Ff§.numChildren > 0)
         {
            while(this.§_-Ff§.numChildren > 0)
            {
               this.§_-Ff§.removeChildAt(0);
            }
         }
         _loc11_;
         if(Global.lobby_players_array != null)
         {
            _loc11_;
            _loc11_;
            _loc1_ = 0;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < Global.lobby_players_array.length)
            {
               _loc11_;
               _loc11_;
               _loc4_ = Global.lobby_players_array[_loc3_].uid;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc5_ = Global.lobby_players_array[_loc3_].player_name;
               _loc12_;
               _loc12_;
               _loc6_ = Global.lobby_players_array[_loc3_].player_colour;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc7_ = Global.lobby_players_array[_loc3_].player_helmet;
               _loc11_;
               _loc8_ = Global.lobby_players_array[_loc3_].player_level;
               _loc9_ = Global.lobby_players_array[_loc3_].player_status;
               _loc10_ = new LobbyJoinPanel();
               _loc10_.init(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc3_,_loc9_);
               _loc10_.x = 0;
               _loc10_.y = _loc1_;
               this.§_-Ff§.addChild(_loc10_);
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc1_ = _loc1_ + 24;
               _loc11_;
               _loc2_ = _loc2_ + 24;
               _loc12_;
               _loc12_;
               _loc3_++;
            }
            _loc11_;
            this.§_-4C§.§_-ps§(_loc2_ + 24);
         }
      }
      
      public function updateLobbyPlayerCount() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.player_count.§_-dc§();
      }
      
      override protected function setTabFocused(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         players_panel.focusLobbyTab();
         _loc3_;
         MAX_CHAT_ITEMS = 50;
      }
      
      override protected function activate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.stage.focus = this.chat_input_text;
         _loc1_;
         this.tab_focused.visible = true;
         _loc1_;
         _loc1_;
         this.updatePlayerList();
      }
      
      override protected function deactivate() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.chat_input_text.text = "";
         _loc1_;
         _loc1_;
         input_string = "";
         _loc2_;
         _loc2_;
         this.white_mask.visible = false;
         _loc2_;
         this.tab_focused.visible = false;
      }
      
      override protected function clearChatText() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.chat_display.chat_display_text.htmlText = "";
         _loc2_;
         _loc2_;
         this.chat_display.chat_display_text.height = 190;
         _loc1_;
         _loc1_;
         this.chat_scroller.§_-ps§();
      }
      
      override public function handleKeyPressed() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.chat_input_text.text != "")
         {
            _loc2_;
            this.white_mask.visible = true;
            _loc1_;
            _loc1_;
         }
         else
         {
            this.white_mask.visible = false;
            _loc1_;
            _loc1_;
         }
         SafeGlobal.TIMELINE.resetAfkCount();
      }
      
      override public function handleKeyReleased(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!players_panel.is_hidden)
         {
            if(this.chat_input_text.text != "")
            {
               _loc3_;
               this.white_mask.visible = true;
            }
            else
            {
               this.white_mask.visible = false;
               _loc3_;
               _loc3_;
            }
            if(param1 == 13)
            {
               _loc2_;
               _loc2_;
               input_string = this.chat_input_text.text;
               this.sendChat();
               _loc2_;
               _loc2_;
               this.chat_input_text.setSelection(0,0);
            }
         }
      }
      
      override protected function displayChatText(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.chat_display.chat_display_text != null)
         {
            _loc3_;
            _loc3_;
            this.chat_display.chat_display_text.htmlText = param1;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.chat_scroller.§_-ps§(this.chat_display.chat_display_text.textHeight + 5);
            _loc3_;
            this.chat_scroller.§_-2j§();
            _loc3_;
            _loc3_;
            highlightTabNotFocused();
         }
      }
      
      override public function displayChatDeactivated() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.deactivate_box.visible = true;
      }
      
      override public function displayChatActivated() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.deactivate_box.visible = false;
      }
      
      override protected function sendChat() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = null;
         _loc2_;
         if(SafeGlobal.connected_to_lobby)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = input_string;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            if(!(_loc1_ == "") && !(_loc1_ == " "))
            {
               Global.lobby_client.sendLobbyChat(_loc1_);
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
