package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-ZN§.§_-KL§;
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import fl.transitions.easing.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   
   public class LobbyStats extends Sprite
   {
      
      public function LobbyStats()
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         super();
         var _loc1_:TextFormat = new TextFormat();
         _loc4_;
         _loc4_;
         _loc1_.letterSpacing = -2;
         _loc4_;
         _loc4_;
         (this.§_-cY§ as TextField).defaultTextFormat = _loc1_;
         _loc3_;
         (this.§_-f8§ as TextField).defaultTextFormat = _loc1_;
         var _loc2_:TextFormat = new TextFormat();
         _loc4_;
         _loc2_.letterSpacing = -1;
         _loc4_;
         _loc4_;
         (this.§_-xh§ as TextField).defaultTextFormat = _loc2_;
         _loc4_;
         (this.§_-tY§ as TextField).defaultTextFormat = _loc2_;
      }
      
      public var §_-f8§:TextField;
      
      public var §_-0W§:§_-KL§;
      
      public var §_-Hq§:MovieClip;
      
      public var §_-Lr§:TextField;
      
      public var §_-mK§:MovieClip;
      
      public var §_-cY§:TextField;
      
      public var xp1:TextField;
      
      public var xp2:TextField;
      
      public var §_-0-J§:MovieClip;
      
      public var §_-0H§:TextField;
      
      public var §_-TR§:§_-Bb§;
      
      public var §_-gZ§:MovieClip;
      
      public var §_-tY§:TextField;
      
      public var get:MovieClip;
      
      public var §_-xh§:TextField;
      
      public var coins:TextField;
      
      private var §_-hW§:Tween;
      
      private var §_-Bm§:Tween;
      
      public var §_-2F§:int = 0;
      
      public var §_-Gm§:int = 0;
      
      private var §_-fK§:Tween;
      
      private var §_-Ys§:Tween;
      
      private var §_-zH§:Tween;
      
      private var §_-IV§:Tween;
      
      private var §_-DV§:int = 0;
      
      private var §_-s5§:int = 2;
      
      private var §_-vl§:Boolean = false;
      
      private var §_-Sz§:MovieClip;
      
      private var §_-39§:Boolean = false;
      
      private var §_-ZB§:int;
      
      public function §_-X6§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-ZB§ = Global.getLevel(this.§_-2F§);
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-2F§ == 0)
         {
            this.§_-2F§ = this.§_-Gm§ = param1;
            _loc3_;
         }
         else
         {
            this.§_-Gm§ = param1;
         }
         this.refresh();
         if(this.§_-2F§ != this.§_-Gm§)
         {
            this.§_-KB§();
         }
      }
      
      public function §_-KB§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-2e§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function update(param1:Event) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         this.§_-2F§ = this.§_-2F§ + 2;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-2F§ >= this.§_-Gm§)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc2_ = Global.getLevel(this.§_-Gm§);
            _loc3_;
            if(_loc2_ > this.§_-ZB§)
            {
               _loc3_;
               this.§_-0-J§.gotoAndPlay("levelup");
            }
            this.§_-2e§();
            this.§_-2F§ = this.§_-Gm§;
         }
         this.refresh();
      }
      
      public function refresh() : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = undefined;
         var _loc1_:int = Global.getLevel(this.§_-2F§);
         _loc10_;
         if(_loc1_ >= 100)
         {
            _loc10_;
            _loc10_;
            this.§_-cY§.text = "";
            _loc10_;
            this.§_-f8§.text = String(_loc1_);
            _loc10_;
         }
         else
         {
            this.§_-cY§.text = String(_loc1_);
            _loc11_;
            _loc11_;
            this.§_-f8§.text = "";
         }
         _loc2_ = Global.§_-Dq§(_loc1_ - 1);
         var _loc3_:* = Global.§_-Dq§(_loc1_);
         var _loc4_:* = _loc3_ - _loc2_;
         var _loc5_:* = this.§_-2F§ - _loc2_;
         var _loc6_:* = _loc3_ - this.§_-2F§;
         _loc11_;
         _loc11_;
         this.§_-xh§.text = this.formatNumber(String(this.§_-2F§));
         _loc10_;
         this.§_-tY§.text = this.formatNumber(String(_loc6_));
         _loc11_;
         _loc11_;
         this.xp1.x = this.§_-xh§.x + this.§_-xh§.textWidth + 2;
         _loc10_;
         this.§_-Lr§.x = this.§_-tY§.x + this.§_-tY§.width - this.§_-tY§.textWidth - this.§_-Lr§.width - 2;
         _loc10_;
         _loc10_;
         var _loc7_:Number = _loc5_ / _loc4_;
         _loc10_;
         this.§_-mK§.scaleX = _loc7_;
         _loc11_;
         this.§_-Hq§.x = this.§_-mK§.x + this.§_-mK§.width;
         _loc11_;
         _loc11_;
         var _loc8_:Number = this.§_-Gm§ - _loc2_;
         _loc10_;
         _loc11_;
         _loc11_;
         var _loc9_:Number = _loc8_ / _loc4_;
         _loc11_;
         _loc11_;
         this.§_-gZ§.scaleX = _loc9_;
      }
      
      public function §_-3P§() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         if(this.§_-Sz§ != null)
         {
            _loc7_;
            this.get.removeChild(this.§_-Sz§);
         }
         var _loc1_:Class = getDefinitionByName("HeadClip" + Global.favourite_helmet.getInt()) as Class;
         _loc7_;
         _loc7_;
         this.§_-Sz§ = new _loc1_();
         var _loc2_:Number = this.§_-Sz§.height;
         var _loc3_:Number = 66;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc7_;
         this.§_-Sz§.scaleX = _loc4_;
         _loc8_;
         this.§_-Sz§.scaleY = _loc4_;
         var _loc5_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc5_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc7_;
         this.§_-Sz§.inside.transform.colorTransform = _loc5_;
         _loc7_;
         this.get.addChild(this.§_-Sz§);
         var _loc6_:Rectangle = this.§_-Sz§.getBounds(this);
         _loc8_;
         this.§_-Sz§.y = 5 - _loc6_.y;
         _loc8_;
         this.§_-Sz§.x = 5 - _loc6_.x;
         _loc8_;
         _loc8_;
         if(Global.favourite_helmet.getInt() == 8)
         {
            _loc7_;
            this.§_-Sz§.x = this.§_-Sz§.x - 7;
            _loc7_;
         }
         this.§_-Sz§.visible = true;
      }
      
      public function setName() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:TextFormat = new TextFormat();
         _loc3_;
         _loc1_.letterSpacing = -2;
         _loc3_;
         _loc1_.size = 26;
         _loc3_;
         this.§_-0H§.y = 0;
         _loc3_;
         _loc3_;
         (this.§_-0H§ as TextField).defaultTextFormat = _loc1_;
         _loc3_;
         this.§_-0H§.text = TimelineGlobal.player_name;
         var _loc2_:Number = this.§_-0H§.textWidth;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(_loc2_ > 170)
         {
            _loc1_.letterSpacing = -1;
            _loc1_.size = 20;
            this.§_-0H§.y = 5;
            (this.§_-0H§ as TextField).defaultTextFormat = _loc1_;
            this.§_-0H§.text = TimelineGlobal.player_name;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_ = this.§_-0H§.textWidth;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(_loc2_ > 170)
            {
               _loc3_;
               _loc1_.letterSpacing = -1;
               _loc1_.size = 16;
               this.§_-0H§.y = 6;
               (this.§_-0H§ as TextField).defaultTextFormat = _loc1_;
               this.§_-0H§.text = TimelineGlobal.player_name;
               _loc3_;
               _loc3_;
               _loc2_ = this.§_-0H§.textWidth;
               if(_loc2_ > 170)
               {
                  _loc1_.letterSpacing = 0;
                  _loc1_.size = 14;
                  this.§_-0H§.y = 8;
               }
            }
         }
         else
         {
            _loc1_.letterSpacing = -2;
            _loc1_.size = 26;
            this.§_-0H§.y = 0;
         }
         (this.§_-0H§ as TextField).defaultTextFormat = _loc1_;
         _loc4_;
         this.§_-0H§.text = TimelineGlobal.player_name;
         if(Global.§_-UW§ == true)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-0W§.visible = true;
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-0W§.visible = false;
         }
      }
      
      public function §_-In§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.coins.text = this.formatNumber(String(this.§_-DV§));
      }
      
      public function §_-zB§(param1:Boolean = false) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1)
         {
            this.§_-DV§ = Global.coins.getInt();
            this.§_-In§();
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(!(this.§_-DV§ == Global.coins.getInt()) && !this.§_-vl§)
            {
               addEventListener(Event.ENTER_FRAME,this.§_-ST§,false,0,true);
               _loc2_;
               this.§_-vl§ = true;
            }
         }
      }
      
      public function §_-ST§(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = this.§_-TR§.§_-LM§.rotation;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc2_ = _loc2_ + 5;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(_loc2_ > 360)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ - 360;
            _loc4_;
         }
         this.§_-TR§.§_-LM§.rotation = _loc2_;
         var _loc3_:* = Global.coins.getInt() - this.§_-DV§;
         _loc5_;
         if(_loc3_ > 0)
         {
            _loc5_;
            this.§_-s5§ = int(_loc3_ / 10);
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.§_-s5§ < 1)
            {
               this.§_-s5§ = 1;
            }
            this.§_-DV§ = this.§_-DV§ + this.§_-s5§;
            this.§_-In§();
         }
         else if(_loc3_ < 0)
         {
            this.§_-s5§ = int(_loc3_ * -1 / 10);
            if(this.§_-s5§ < 1)
            {
               _loc4_;
               this.§_-s5§ = 1;
            }
            this.§_-DV§ = this.§_-DV§ - this.§_-s5§;
            _loc5_;
            this.§_-In§();
         }
         else
         {
            this.§_-vl§ = false;
            if(hasEventListener(Event.ENTER_FRAME))
            {
               removeEventListener(Event.ENTER_FRAME,this.§_-ST§);
            }
            this.§_-DV§ = Global.coins.getInt();
            _loc4_;
            this.§_-In§();
         }
         
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc5_;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(!this.§_-39§)
         {
            _loc2_;
            this.§_-hW§ = new Tween(this,"y",Strong.easeOut,600 + height,517,1,true);
            _loc2_;
            _loc2_;
            this.§_-hW§.start();
            _loc2_;
            this.§_-39§ = true;
         }
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-39§)
         {
            _loc1_;
            _loc1_;
            this.§_-Bm§ = new Tween(this,"y",Strong.easeOut,517,600 + height,1,true);
            _loc1_;
            _loc1_;
            this.§_-Bm§.start();
            _loc2_;
            this.§_-39§ = false;
         }
      }
   }
}
