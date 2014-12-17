package com.funkypear.ui
{
   import §_-ZN§.§_-0C§;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-ZN§.§_-Ut§;
   import §_-ZN§.§_-4U§;
   import §_-ZN§.UpdateGravitonsButton;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class LP_BuyGravitons extends §_-A3§
   {
      
      public function LP_BuyGravitons(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         _loc3_;
         x = 1500;
         y = 100;
         this.small_price_text.mouseEnabled = false;
         this.medium_price_text.mouseEnabled = false;
         this.large_price_text.mouseEnabled = false;
      }
      
      public var buy_small:§_-0C§;
      
      public var medium_gravitons_text:TextField;
      
      public var small_gravitons_text:TextField;
      
      public var buy_bg_boxes:MovieClip;
      
      public var buy_large:§_-Ut§;
      
      public var large_g_text:TextField;
      
      public var waiting_text:TextField;
      
      public var buy_medium:§_-4U§;
      
      public var waiting_bg:MovieClip;
      
      public var waiting_for_payment_box:MovieClip;
      
      public var medium_g_text:TextField;
      
      public var large_price_text:TextField;
      
      public var small_g_text:TextField;
      
      public var smallprint_text:TextField;
      
      public var small_price_text:TextField;
      
      public var percent_5_clip:MovieClip;
      
      public var large_gravitons_text:TextField;
      
      public var percent_10_clip:MovieClip;
      
      public var medium_price_text:TextField;
      
      public var payment_help_text:TextField;
      
      public var update_button:UpdateGravitonsButton;
      
      public var back_to_shop:Boolean = false;
      
      private var price_string:String = "";
      
      public function update(param1:Boolean = true) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc2_;
            _loc2_;
            this.loadPrices();
            _loc3_;
            _loc3_;
         }
         else if(this.price_string != "")
         {
            _loc3_;
            this.displayPrices();
            _loc3_;
            _loc3_;
         }
         else
         {
            this.loadPrices();
         }
         
      }
      
      public function waitForPayment(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.smallprint_text.visible = false;
         this.small_gravitons_text.visible = true;
         this.medium_gravitons_text.visible = true;
         this.large_gravitons_text.visible = true;
         this.small_price_text.visible = false;
         _loc2_;
         this.medium_price_text.visible = false;
         this.large_price_text.visible = false;
         _loc3_;
         _loc3_;
         this.buy_small.visible = false;
         _loc2_;
         this.buy_medium.visible = false;
         _loc2_;
         this.buy_large.visible = false;
         _loc2_;
         _loc2_;
         this.small_g_text.visible = true;
         _loc3_;
         this.medium_g_text.visible = true;
         _loc2_;
         this.large_g_text.visible = true;
         this.buy_bg_boxes.visible = true;
         this.percent_5_clip.visible = false;
         this.percent_10_clip.visible = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == 1)
         {
            this.buy_bg_boxes.small_gravitons_clip.x = -210.5;
            _loc2_;
            _loc2_;
            this.buy_bg_boxes.small_gravitons_clip.y = -34.5;
            this.buy_bg_boxes.small_gravitons_clip.visible = true;
            this.buy_bg_boxes.medium_gravitons_clip.visible = false;
            this.buy_bg_boxes.large_gravitons_clip.visible = false;
            this.small_gravitons_text.text = String(this.formatNumber(String(Global.§_-G1§.getInt())));
         }
         else
         {
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == 2)
            {
               _loc2_;
               this.buy_bg_boxes.small_gravitons_clip.visible = false;
               this.buy_bg_boxes.medium_gravitons_clip.x = -223.5;
               this.buy_bg_boxes.medium_gravitons_clip.y = -46.5;
               this.buy_bg_boxes.medium_gravitons_clip.visible = true;
               _loc2_;
               _loc2_;
               this.buy_bg_boxes.large_gravitons_clip.visible = false;
               this.percent_5_clip.x = 115.35;
               this.percent_5_clip.visible = true;
               this.small_gravitons_text.text = String(this.formatNumber(String(Global.§_-59§.getInt())));
            }
            else if(param1 == 3)
            {
               this.buy_bg_boxes.small_gravitons_clip.visible = false;
               _loc3_;
               this.buy_bg_boxes.medium_gravitons_clip.visible = false;
               _loc2_;
               _loc2_;
               this.buy_bg_boxes.large_gravitons_clip.x = -237.5;
               this.buy_bg_boxes.large_gravitons_clip.y = -66.5;
               this.buy_bg_boxes.large_gravitons_clip.visible = true;
               _loc2_;
               this.percent_10_clip.x = 115.35;
               _loc3_;
               this.percent_10_clip.visible = true;
               this.small_gravitons_text.text = String(this.formatNumber(String(Global.§_-Z0§.getInt())));
            }
            
         }
         this.payment_help_text.visible = true;
         this.waiting_for_payment_box.visible = true;
         _loc2_;
         this.waiting_text.visible = true;
         this.update_button.visible = true;
         _loc3_;
         this.waiting_bg.visible = true;
      }
      
      public function loadPrices() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.lobby_client.loadGravitonPrices();
      }
      
      public function displayPrices(param1:String = "") : void
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         _loc12_;
         _loc12_;
         _loc12_;
         if(param1 != "")
         {
            this.price_string = param1;
            _loc13_;
         }
         this.smallprint_text.visible = true;
         this.small_gravitons_text.visible = true;
         this.medium_gravitons_text.visible = true;
         this.large_gravitons_text.visible = true;
         _loc13_;
         _loc13_;
         this.small_price_text.visible = true;
         _loc13_;
         _loc13_;
         this.medium_price_text.visible = true;
         this.large_price_text.visible = true;
         _loc13_;
         _loc13_;
         this.buy_small.visible = true;
         this.buy_medium.visible = true;
         _loc12_;
         _loc12_;
         this.buy_large.visible = true;
         this.small_g_text.visible = true;
         this.medium_g_text.visible = true;
         this.large_g_text.visible = true;
         this.buy_bg_boxes.visible = true;
         this.percent_5_clip.visible = true;
         _loc12_;
         this.percent_10_clip.visible = true;
         this.percent_5_clip.x = 297.35;
         _loc13_;
         this.percent_10_clip.x = 480.35;
         _loc13_;
         this.buy_bg_boxes.small_gravitons_clip.x = -210.5;
         this.buy_bg_boxes.small_gravitons_clip.y = -34.5;
         _loc12_;
         _loc12_;
         this.buy_bg_boxes.small_gravitons_clip.visible = true;
         _loc12_;
         this.buy_bg_boxes.medium_gravitons_clip.x = -44.5;
         this.buy_bg_boxes.medium_gravitons_clip.y = -46.5;
         this.buy_bg_boxes.medium_gravitons_clip.visible = true;
         _loc12_;
         _loc12_;
         this.buy_bg_boxes.large_gravitons_clip.x = 125.5;
         this.buy_bg_boxes.large_gravitons_clip.y = -66.5;
         this.buy_bg_boxes.large_gravitons_clip.visible = true;
         _loc13_;
         _loc13_;
         this.payment_help_text.visible = false;
         _loc12_;
         _loc12_;
         this.waiting_for_payment_box.visible = false;
         this.waiting_text.visible = false;
         _loc13_;
         this.update_button.visible = false;
         _loc12_;
         _loc12_;
         this.waiting_bg.visible = false;
         var _loc2_:Array = this.price_string.split(",");
         var _loc3_:Array = _loc2_[0].split("USD=");
         var _loc4_:Array = _loc2_[1].split("USD=");
         var _loc5_:Array = _loc2_[2].split("USD=");
         var _loc6_:String = _loc3_[0];
         var _loc7_:String = _loc4_[0];
         var _loc8_:String = _loc5_[0];
         var _loc9_:String = _loc3_[1];
         var _loc10_:String = _loc4_[1];
         var _loc11_:String = _loc5_[1];
         _loc13_;
         _loc13_;
         Global.§_-G1§.setInt(parseInt(_loc9_));
         _loc12_;
         Global.§_-59§.setInt(parseInt(_loc10_));
         _loc13_;
         _loc13_;
         Global.§_-Z0§.setInt(parseInt(_loc11_));
         this.small_gravitons_text.text = String(this.formatNumber(_loc9_));
         _loc12_;
         this.medium_gravitons_text.text = String(this.formatNumber(_loc10_));
         _loc12_;
         _loc12_;
         this.large_gravitons_text.text = String(this.formatNumber(_loc11_));
         _loc12_;
         this.small_price_text.text = String("BUY - $" + this.formatPrice(_loc6_));
         _loc12_;
         _loc12_;
         this.medium_price_text.text = String("BUY - $" + this.formatPrice(_loc7_));
         this.large_price_text.text = String("BUY - $" + this.formatPrice(_loc8_));
      }
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.lobby_client.requestUpdateGravitons(true);
         _loc2_;
         _loc2_;
         tweenOut(true);
         _loc2_;
         if(this.back_to_shop)
         {
            _loc1_;
            Global.lobby_display.lobby_menu.§_-rh§("MB_Shop");
         }
      }
      
      public function clickOk() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.doClose();
      }
      
      public function clickCancel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.doClose();
      }
      
      public function clickUpdate() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.doClose();
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!§_-HF§)
         {
            tweenInExtras();
            _loc2_;
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            _loc2_;
            §_-hW§.start();
            _loc2_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc5_;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      private function formatPrice(param1:String) : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_;
            _loc4_;
            if(_loc3_ == param1.length - 2)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc2_ = _loc2_ + ".";
               _loc5_;
            }
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_ + param1.charAt(_loc3_);
            _loc4_;
            _loc4_;
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
   }
}
