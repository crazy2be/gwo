package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PlayersTabPanel extends Sprite
   {
      
      public function PlayersTabPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.chat_items = new Array();
         _loc1_;
         _loc1_;
         super();
      }
      
      public var players_panel:PlayersPanel;
      
      public var active:Boolean = false;
      
      public var tab_button:Sprite;
      
      protected var chat_string:String = "";
      
      protected var chat_items:Array;
      
      protected var MAX_CHAT_ITEMS:int = 50;
      
      protected var input_string:String = "";
      
      protected var check_tf:TextField;
      
      public var input_text_focused:Boolean = false;
      
      protected var tab_flash_count:int = 0;
      
      protected var max_tab_flash_count:int = 16;
      
      protected var tab_name:String = "";
      
      public function clearChat() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.chat_string = "";
         _loc1_;
         _loc1_;
         if(this.chat_items.length > 0)
         {
            _loc1_;
            _loc1_;
            this.chat_items.length = 0;
            _loc1_;
            this.chat_items = new Array();
            _loc1_;
         }
         this.clearChatText();
      }
      
      protected function clearChatText() : void
      {
      }
      
      public function handleKeyPressed() : void
      {
      }
      
      public function handleKeyReleased(param1:int) : void
      {
      }
      
      public function highlightTabNotFocused() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tab_flash_count = 0;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.flashTabButton,false,0,true);
      }
      
      public function flashTabButton(param1:Event) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:TextField = null;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         this.tab_flash_count++;
         _loc2_ = this.tab_button.getChildByName("tab_text") as TextField;
         _loc5_;
         _loc6_;
         if(this.tab_flash_count % 4 == 0)
         {
            if(_loc2_ != null)
            {
               _loc6_;
               _loc2_.text = this.tab_name;
               _loc6_;
            }
         }
         else if(_loc2_ != null)
         {
            _loc5_;
            _loc2_.text = "";
            _loc6_;
            _loc6_;
         }
         
         if(this.tab_flash_count >= this.max_tab_flash_count)
         {
            _loc5_;
            _loc5_;
            removeEventListener(Event.ENTER_FRAME,this.flashTabButton);
            _loc5_;
            if(_loc2_ != null)
            {
               _loc6_;
               _loc2_.text = this.tab_name;
            }
         }
      }
      
      public function setPlayersPanel(param1:PlayersPanel) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.players_panel = param1;
      }
      
      public function init() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tab_button != null)
         {
            _loc2_;
            _loc2_;
            this.tab_button.mouseEnabled = true;
            this.tab_button.mouseChildren = false;
            _loc2_;
            _loc2_;
            this.tab_button.buttonMode = true;
            _loc2_;
            this.tab_button.addEventListener(MouseEvent.CLICK,this.setTabFocused,false,0,true);
            _loc2_;
            this.tab_button.addEventListener(MouseEvent.ROLL_OVER,this.rollOverTab,false,0,true);
            _loc1_;
            _loc1_;
            this.tab_button.addEventListener(MouseEvent.ROLL_OUT,this.rollOutTab,false,0,true);
         }
      }
      
      protected function setTabFocused(param1:MouseEvent) : void
      {
      }
      
      private function rollOverTab(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.tab_button != null)
         {
            _loc3_;
            _loc3_;
            if(this.tab_button.getChildByName("tab_text") != null)
            {
               _loc2_;
               (this.tab_button.getChildByName("tab_text") as TextField).textColor = 15658734;
            }
         }
      }
      
      private function rollOutTab(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.tab_button != null)
         {
            _loc2_;
            if(this.tab_button.getChildByName("tab_text") != null)
            {
               _loc3_;
               _loc3_;
               (this.tab_button.getChildByName("tab_text") as TextField).textColor = 16777215;
            }
         }
      }
      
      protected function activate() : void
      {
      }
      
      protected function deactivate() : void
      {
      }
      
      public function setActive(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 == true)
         {
            _loc2_;
            _loc2_;
            this.activate();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.deactivate();
            _loc3_;
            _loc3_;
         }
         this.active = param1;
      }
      
      protected function replaceSpecialChars(param1:String) : String
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc2_:* = "";
         var _loc3_:* = "";
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc7_;
         if(param1.indexOf("<") != -1)
         {
            _loc4_ = param1.split("<");
            _loc6_;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               _loc6_;
               if(_loc5_ != 0)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  _loc2_ = _loc2_ + "&lt;";
                  _loc7_;
               }
               _loc6_;
               _loc6_;
               _loc2_ = _loc2_ + _loc4_[_loc5_];
               _loc5_++;
            }
         }
         else
         {
            _loc7_;
            _loc2_ = param1;
         }
         _loc7_;
         _loc7_;
         if(_loc2_.indexOf(">") != -1)
         {
            _loc6_;
            _loc4_ = _loc2_.split(">");
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               _loc6_;
               _loc6_;
               if(_loc5_ != 0)
               {
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  _loc3_ = _loc3_ + "&gt;";
                  _loc7_;
                  _loc7_;
               }
               _loc7_;
               _loc7_;
               _loc3_ = _loc3_ + _loc4_[_loc5_];
               _loc5_++;
            }
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc3_ = _loc2_;
         }
         return _loc3_;
      }
      
      public function displayChat(param1:String, param2:String, param3:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc8_;
         var param1:String = this.replaceSpecialChars(param1);
         var _loc4_:* = "";
         _loc8_;
         _loc4_ = _loc4_ + "<font color=\'";
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         if(param3 == -1)
         {
            _loc8_;
            _loc8_;
            _loc4_ = _loc4_ + "#000000";
            _loc7_;
            _loc7_;
         }
         else if(param3 == 9)
         {
            _loc7_;
            _loc7_;
            _loc4_ = _loc4_ + "#DDDDDD";
         }
         else
         {
            _loc4_ = _loc4_ + SafeGlobal.colour_hex_string[param3];
         }
         
         _loc7_;
         _loc7_;
         _loc7_;
         _loc4_ = _loc4_ + "\'>[";
         _loc8_;
         _loc8_;
         _loc7_;
         _loc4_ = _loc4_ + "\'>[" + param2;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc4_ = _loc4_ + "\'>[" + param2 + "] </font>";
         _loc4_ = _loc4_ + param1;
         _loc4_ = _loc4_ + "<br>";
         _loc8_;
         _loc8_;
         _loc8_;
         this.chat_items.push(_loc4_);
         _loc8_;
         if(this.chat_items.length > this.MAX_CHAT_ITEMS)
         {
            this.chat_items.shift();
         }
         var _loc5_:* = "";
         var _loc6_:* = 0;
         while(_loc6_ < this.chat_items.length)
         {
            if(this.chat_items[_loc6_] != null)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = _loc5_ + this.chat_items[_loc6_];
               _loc7_;
               _loc7_;
            }
            _loc6_++;
            _loc7_;
            _loc7_;
         }
         _loc7_;
         _loc7_;
         this.displayChatText(_loc5_);
      }
      
      public function displayChatDeactivated() : void
      {
      }
      
      public function displayChatActivated() : void
      {
      }
      
      protected function displayChatText(param1:String) : void
      {
      }
      
      protected function sendChat() : void
      {
      }
   }
}
