package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class HubCodePanel extends Sprite
   {
      
      public function HubCodePanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         Global.hub_code_panel = this;
         this.white_mask.visible = false;
         _loc1_;
         this.§_-i6§.text = "";
         _loc1_;
         _loc1_;
         this.§_-Uo§.visible = false;
         _loc2_;
         this.§_-mk§.visible = false;
         this.§_-i6§.addEventListener(MouseEvent.CLICK,this.§_-RV§,false,0,true);
      }
      
      public var msg_text:TextField;
      
      public var white_mask:MovieClip;
      
      public var §_-mk§:TextField;
      
      public var §_-i6§:TextField;
      
      public var §_-Uo§:TextField;
      
      private var §_-9a§:Timer;
      
      private function §_-RV§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-Uo§.visible = false;
         this.§_-mk§.visible = false;
         this.msg_text.visible = true;
         this.white_mask.visible = true;
         _loc3_;
         _loc3_;
         this.§_-i6§.removeEventListener(MouseEvent.CLICK,this.§_-RV§);
         _loc2_;
         this.§_-i6§.addEventListener(FocusEvent.FOCUS_OUT,this.§_-Pp§,false,0,true);
         this.§_-i6§.addEventListener(KeyboardEvent.KEY_UP,this.§_-PV§,false,0,true);
      }
      
      private function §_-Pp§(param1:FocusEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-i6§.text == "")
         {
            _loc3_;
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
            _loc3_;
            _loc3_;
         }
         this.§_-i6§.removeEventListener(FocusEvent.FOCUS_OUT,this.§_-Pp§);
         this.§_-i6§.addEventListener(MouseEvent.CLICK,this.§_-RV§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-i6§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-PV§);
      }
      
      private function §_-PV§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-i6§.text == "")
         {
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
            _loc3_;
            _loc3_;
         }
         if(param1.keyCode == 13)
         {
            if(this.§_-i6§.text != "")
            {
               this.§_-gx§(this.§_-i6§.text);
               this.§_-i6§.text = "";
               this.white_mask.visible = false;
               this.§_-i6§.setSelection(0,0);
            }
         }
      }
      
      private function §_-Nd§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Uo§.visible = true;
         this.msg_text.visible = false;
         this.§_-mk§.visible = false;
         this.§_-i6§.text = "";
         this.white_mask.visible = true;
         this.§_-9a§ = new Timer(3000,1);
         this.§_-9a§.addEventListener(TimerEvent.TIMER,this.§_-h2§,false,0,true);
         this.§_-9a§.start();
      }
      
      private function §_-h2§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-9a§.removeEventListener(TimerEvent.TIMER,this.§_-h2§);
         _loc3_;
         if(this.§_-i6§.text == "")
         {
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
            _loc3_;
            _loc3_;
         }
         this.§_-Uo§.visible = false;
         this.§_-mk§.visible = false;
         this.msg_text.visible = true;
      }
      
      private function §_-6O§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-mk§.visible = true;
         this.white_mask.visible = false;
         _loc2_;
         _loc2_;
         this.§_-Uo§.visible = false;
         this.msg_text.visible = false;
         _loc2_;
         this.§_-i6§.text = "";
         this.§_-i6§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-i6§.removeEventListener(MouseEvent.CLICK,this.§_-RV§);
         this.§_-i6§.removeEventListener(FocusEvent.FOCUS_OUT,this.§_-Pp§);
         this.§_-i6§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-PV§);
      }
      
      public function §_-Mm§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.msg_text.visible = true;
         this.§_-mk§.visible = false;
         this.§_-Uo§.visible = false;
         this.§_-i6§.text = "";
         _loc1_;
         this.§_-i6§.visible = true;
         this.§_-i6§.addEventListener(MouseEvent.CLICK,this.§_-RV§,false,0,true);
      }
      
      private function §_-gx§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         if(param1.length == 12)
         {
            _loc3_;
            _loc3_;
            this.§_-v6§(param1);
            _loc2_;
            _loc2_;
         }
         else if(param1.length == 15)
         {
            _loc3_;
            this.§_-GN§(param1);
            _loc3_;
         }
         else
         {
            this.§_-Nd§();
         }
         
      }
      
      private function §_-v6§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         var param1:String = param1.toUpperCase();
         _loc3_;
         if(this.§_-xt§(param1))
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.tryJoinGameFromCode(param1);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Nd§();
         }
      }
      
      private function §_-GN§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         var param1:String = param1.toUpperCase();
         _loc3_;
         _loc3_;
         if(this.§_-xt§(param1,true))
         {
            _loc2_;
            _loc2_;
            if(this.§_-UZ§(param1))
            {
               this.§_-6O§();
               Global.lobby_client.redeemCode(param1);
               _loc2_;
               _loc2_;
            }
            else
            {
               this.§_-Nd§();
            }
         }
         else
         {
            this.§_-Nd§();
         }
      }
      
      private function §_-UZ§(param1:String) : Boolean
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         var _loc2_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_;
            _loc6_;
            _loc4_ = param1.charAt(_loc3_);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc3_ == 3;
            _loc5_;
            _loc3_ == 3;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ == 7;
            _loc3_ == 7;
            _loc6_;
            _loc6_;
            _loc3_ == 11;
            if(_loc4_ == "-")
            {
               _loc2_ = false;
               break;
            }
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
      
      private function §_-xt§(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = 0;
         var _loc3_:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"];
         _loc8_;
         _loc8_;
         if(param2)
         {
            _loc9_;
            _loc3_.push("-");
            _loc9_;
         }
         _loc8_;
         _loc9_;
         _loc9_;
         var param1:String = param1.toUpperCase();
         var _loc4_:Array = param1.split("");
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         while(true)
         {
            _loc8_;
            if(_loc6_ >= _loc4_.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc7_ = 0;
            while(true)
            {
               _loc8_;
               if(_loc7_ >= _loc3_.length)
               {
                  break;
               }
               if(_loc4_[_loc6_] == _loc3_[_loc7_])
               {
                  _loc5_++;
                  _loc9_;
                  _loc9_;
               }
               _loc7_++;
               _loc8_;
            }
            _loc6_++;
         }
         if(_loc5_ == _loc4_.length)
         {
            _loc8_;
            _loc8_;
            return true;
         }
         return false;
      }
   }
}
