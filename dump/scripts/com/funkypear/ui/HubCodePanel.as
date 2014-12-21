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
         super();
         Global.hub_code_panel = this;
         this.white_mask.visible = false;
         _loc1_;
         this.§_-1b§.text = "";
         this.§_-P3§.visible = false;
         this.§_-lS§.visible = false;
         this.§_-1b§.addEventListener(MouseEvent.CLICK,this.§_-Kn§,false,0,true);
      }
      
      public var msg_text:TextField;
      
      public var white_mask:MovieClip;
      
      public var §_-lS§:TextField;
      
      public var §_-1b§:TextField;
      
      public var §_-P3§:TextField;
      
      private var §_-70§:Timer;
      
      private function §_-Kn§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-P3§.visible = false;
         this.§_-lS§.visible = false;
         this.msg_text.visible = true;
         this.white_mask.visible = true;
         _loc3_;
         this.§_-1b§.removeEventListener(MouseEvent.CLICK,this.§_-Kn§);
         _loc2_;
         this.§_-1b§.addEventListener(FocusEvent.FOCUS_OUT,this.§_-Nv§,false,0,true);
         this.§_-1b§.addEventListener(KeyboardEvent.KEY_UP,this.§_-tZ§,false,0,true);
      }
      
      private function §_-Nv§(param1:FocusEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-1b§.text == "")
         {
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
            _loc3_;
            _loc3_;
         }
         this.§_-1b§.removeEventListener(FocusEvent.FOCUS_OUT,this.§_-Nv§);
         _loc2_;
         this.§_-1b§.addEventListener(MouseEvent.CLICK,this.§_-Kn§,false,0,true);
         this.§_-1b§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-tZ§);
      }
      
      private function §_-tZ§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-1b§.text == "")
         {
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
         }
         if(param1.keyCode == 13)
         {
            if(this.§_-1b§.text != "")
            {
               _loc3_;
               _loc3_;
               this.§_-Ep§(this.§_-1b§.text);
               this.§_-1b§.text = "";
               this.white_mask.visible = false;
               _loc3_;
               _loc3_;
               this.§_-1b§.setSelection(0,0);
            }
         }
      }
      
      private function §_-y4§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-P3§.visible = true;
         this.msg_text.visible = false;
         this.§_-lS§.visible = false;
         this.§_-1b§.text = "";
         _loc1_;
         this.white_mask.visible = true;
         _loc1_;
         this.§_-70§ = new Timer(3000,1);
         _loc1_;
         this.§_-70§.addEventListener(TimerEvent.TIMER,this.§_-vW§,false,0,true);
         this.§_-70§.start();
      }
      
      private function §_-vW§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-70§.removeEventListener(TimerEvent.TIMER,this.§_-vW§);
         if(this.§_-1b§.text == "")
         {
            this.white_mask.visible = false;
         }
         else
         {
            this.white_mask.visible = true;
         }
         this.§_-P3§.visible = false;
         this.§_-lS§.visible = false;
         this.msg_text.visible = true;
      }
      
      private function §_-Sz§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-lS§.visible = true;
         _loc2_;
         _loc2_;
         this.white_mask.visible = false;
         this.§_-P3§.visible = false;
         _loc1_;
         this.msg_text.visible = false;
         _loc1_;
         this.§_-1b§.text = "";
         this.§_-1b§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-1b§.removeEventListener(MouseEvent.CLICK,this.§_-Kn§);
         _loc2_;
         _loc2_;
         this.§_-1b§.removeEventListener(FocusEvent.FOCUS_OUT,this.§_-Nv§);
         _loc1_;
         this.§_-1b§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-tZ§);
      }
      
      public function §_-q2§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.msg_text.visible = true;
         _loc2_;
         this.§_-lS§.visible = false;
         this.§_-P3§.visible = false;
         _loc1_;
         this.§_-1b§.text = "";
         _loc1_;
         _loc1_;
         this.§_-1b§.visible = true;
         _loc2_;
         _loc2_;
         this.§_-1b§.addEventListener(MouseEvent.CLICK,this.§_-Kn§,false,0,true);
      }
      
      private function §_-Ep§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(param1.length == 12)
         {
            _loc3_;
            this.§_-iT§(param1);
            _loc3_;
         }
         else if(param1.length == 15)
         {
            _loc3_;
            this.§_-Dg§(param1);
            _loc3_;
         }
         else
         {
            this.§_-y4§();
         }
         
      }
      
      private function §_-iT§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         var param1:String = param1.toUpperCase();
         _loc2_;
         if(this.§_-E0§(param1))
         {
            _loc2_;
            Global.lobby_display.tryJoinGameFromCode(param1);
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-y4§();
         }
      }
      
      private function §_-Dg§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         var param1:String = param1.toUpperCase();
         _loc3_;
         if(this.§_-E0§(param1,true))
         {
            if(this.§_-f7§(param1))
            {
               _loc2_;
               this.§_-Sz§();
               Global.lobby_client.redeemCode(param1);
               _loc3_;
               _loc3_;
            }
            else
            {
               this.§_-y4§();
            }
         }
         else
         {
            this.§_-y4§();
         }
      }
      
      private function §_-f7§(param1:String) : Boolean
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         var _loc2_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_ = param1.charAt(_loc3_);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ == 3;
            _loc3_ == 3;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ == 7;
            _loc6_;
            _loc3_ == 7;
            _loc5_;
            _loc3_ == 11;
            if(_loc4_ == "-")
            {
               _loc5_;
               _loc5_;
               _loc2_ = false;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §_-E0§(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = 0;
         var _loc3_:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"];
         _loc8_;
         if(param2)
         {
            _loc8_;
            _loc3_.push("-");
            _loc8_;
            _loc8_;
         }
         _loc9_;
         _loc9_;
         _loc8_;
         var param1:String = param1.toUpperCase();
         var _loc4_:Array = param1.split("");
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            if(_loc6_ >= _loc4_.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc7_ = 0;
            _loc9_;
            while(true)
            {
               _loc9_;
               _loc9_;
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
            }
            _loc9_;
            _loc6_++;
            _loc8_;
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
