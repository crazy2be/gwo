package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-bY§.§_-kz§;
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
         _loc3_;
         super();
         var _loc1_:TextFormat = new TextFormat();
         _loc3_;
         _loc3_;
         _loc1_.letterSpacing = -2;
         _loc4_;
         _loc4_;
         (this.§_-ep§ as TextField).defaultTextFormat = _loc1_;
         _loc4_;
         (this.§_-1T§ as TextField).defaultTextFormat = _loc1_;
         var _loc2_:TextFormat = new TextFormat();
         _loc4_;
         _loc2_.letterSpacing = -1;
         _loc4_;
         (this.§_-K-§ as TextField).defaultTextFormat = _loc2_;
         _loc3_;
         _loc3_;
         (this.§_-Cj§ as TextField).defaultTextFormat = _loc2_;
      }
      
      public var §_-1T§:TextField;
      
      public var §_-cv§:§_-kz§;
      
      public var §_-hD§:MovieClip;
      
      public var §_-k1§:TextField;
      
      public var §_-3g§:MovieClip;
      
      public var §_-ep§:TextField;
      
      public var xp1:TextField;
      
      public var xp2:TextField;
      
      public var §_-kx§:MovieClip;
      
      public var §_-DM§:TextField;
      
      public var §_-1n§:§_-83§;
      
      public var §_-8A§:MovieClip;
      
      public var §_-Cj§:TextField;
      
      public var §_-3U§:MovieClip;
      
      public var §_-K-§:TextField;
      
      public var coins:TextField;
      
      private var §_-hH§:Tween;
      
      private var §_-Cs§:Tween;
      
      public var §_-NU§:int = 0;
      
      public var §_-FH§:int = 0;
      
      private var §_-Ix§:Tween;
      
      private var §_-Eu§:Tween;
      
      private var §_-MJ§:Tween;
      
      private var §_-RD§:Tween;
      
      private var §_-F-§:int = 0;
      
      private var §_-6n§:int = 2;
      
      private var §_-53§:Boolean = false;
      
      private var §_-Jw§:MovieClip;
      
      private var §_-Qk§:Boolean = false;
      
      private var §_-Qt§:int;
      
      public function §_-WU§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-Qt§ = Global.getLevel(this.§_-NU§);
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-NU§ == 0)
         {
            this.§_-NU§ = this.§_-FH§ = param1;
         }
         else
         {
            this.§_-FH§ = param1;
         }
         this.refresh();
         _loc4_;
         if(this.§_-NU§ != this.§_-FH§)
         {
            this.§_-sH§();
         }
      }
      
      public function §_-sH§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-u2§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function update(param1:Event) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         this.§_-NU§ = this.§_-NU§ + 2;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.§_-NU§ >= this.§_-FH§)
         {
            _loc3_;
            _loc3_;
            _loc2_ = Global.getLevel(this.§_-FH§);
            if(_loc2_ > this.§_-Qt§)
            {
               _loc3_;
               _loc3_;
               this.§_-kx§.gotoAndPlay("levelup");
            }
            this.§_-u2§();
            _loc4_;
            _loc4_;
            this.§_-NU§ = this.§_-FH§;
         }
         this.refresh();
      }
      
      public function refresh() : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = undefined;
         var _loc1_:int = Global.getLevel(this.§_-NU§);
         _loc10_;
         _loc10_;
         if(_loc1_ >= 100)
         {
            _loc10_;
            this.§_-ep§.text = "";
            _loc11_;
            this.§_-1T§.text = String(_loc1_);
            _loc11_;
            _loc11_;
         }
         else
         {
            this.§_-ep§.text = String(_loc1_);
            _loc10_;
            _loc10_;
            this.§_-1T§.text = "";
         }
         _loc2_ = Global.§_-IK§(_loc1_ - 1);
         var _loc3_:* = Global.§_-IK§(_loc1_);
         var _loc4_:* = _loc3_ - _loc2_;
         var _loc5_:* = this.§_-NU§ - _loc2_;
         var _loc6_:* = _loc3_ - this.§_-NU§;
         _loc11_;
         this.§_-K-§.text = this.formatNumber(String(this.§_-NU§));
         _loc10_;
         _loc10_;
         this.§_-Cj§.text = this.formatNumber(String(_loc6_));
         _loc10_;
         _loc10_;
         this.xp1.x = this.§_-K-§.x + this.§_-K-§.textWidth + 2;
         _loc10_;
         this.§_-k1§.x = this.§_-Cj§.x + this.§_-Cj§.width - this.§_-Cj§.textWidth - this.§_-k1§.width - 2;
         _loc10_;
         var _loc7_:Number = _loc5_ / _loc4_;
         _loc10_;
         this.§_-3g§.scaleX = _loc7_;
         _loc10_;
         _loc10_;
         this.§_-hD§.x = this.§_-3g§.x + this.§_-3g§.width;
         _loc10_;
         var _loc8_:Number = this.§_-FH§ - _loc2_;
         _loc10_;
         _loc10_;
         _loc10_;
         var _loc9_:Number = _loc8_ / _loc4_;
         _loc10_;
         this.§_-8A§.scaleX = _loc9_;
      }
      
      public function §_-Qc§() : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         _loc8_;
         if(this.§_-Jw§ != null)
         {
            _loc7_;
            _loc7_;
            this.§_-3U§.removeChild(this.§_-Jw§);
         }
         var _loc1_:Class = getDefinitionByName("HeadClip" + Global.favourite_helmet.getInt()) as Class;
         _loc8_;
         this.§_-Jw§ = new _loc1_();
         var _loc2_:Number = this.§_-Jw§.height;
         var _loc3_:Number = 66;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc7_;
         this.§_-Jw§.scaleX = _loc4_;
         _loc8_;
         _loc8_;
         this.§_-Jw§.scaleY = _loc4_;
         var _loc5_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc5_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc8_;
         this.§_-Jw§.inside.transform.colorTransform = _loc5_;
         _loc7_;
         this.§_-3U§.addChild(this.§_-Jw§);
         var _loc6_:Rectangle = this.§_-Jw§.getBounds(this);
         _loc8_;
         this.§_-Jw§.y = 5 - _loc6_.y;
         _loc7_;
         _loc7_;
         this.§_-Jw§.x = 5 - _loc6_.x;
         _loc7_;
         _loc7_;
         if(Global.favourite_helmet.getInt() == 8)
         {
            _loc8_;
            this.§_-Jw§.x = this.§_-Jw§.x - 7;
            _loc7_;
         }
         this.§_-Jw§.visible = true;
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
         _loc3_;
         this.§_-DM§.y = 0;
         _loc3_;
         (this.§_-DM§ as TextField).defaultTextFormat = _loc1_;
         _loc3_;
         this.§_-DM§.text = TimelineGlobal.player_name;
         var _loc2_:Number = this.§_-DM§.textWidth;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(_loc2_ > 170)
         {
            _loc3_;
            _loc3_;
            _loc1_.letterSpacing = -1;
            _loc4_;
            _loc4_;
            _loc1_.size = 20;
            _loc3_;
            this.§_-DM§.y = 5;
            (this.§_-DM§ as TextField).defaultTextFormat = _loc1_;
            this.§_-DM§.text = TimelineGlobal.player_name;
            _loc3_;
            _loc2_ = this.§_-DM§.textWidth;
            _loc3_;
            _loc3_;
            _loc4_;
            if(_loc2_ > 170)
            {
               _loc1_.letterSpacing = -1;
               _loc1_.size = 16;
               _loc4_;
               this.§_-DM§.y = 6;
               _loc3_;
               _loc3_;
               (this.§_-DM§ as TextField).defaultTextFormat = _loc1_;
               _loc4_;
               this.§_-DM§.text = TimelineGlobal.player_name;
               _loc3_;
               _loc2_ = this.§_-DM§.textWidth;
               if(_loc2_ > 170)
               {
                  _loc4_;
                  _loc1_.letterSpacing = 0;
                  _loc1_.size = 14;
                  this.§_-DM§.y = 8;
               }
            }
         }
         else
         {
            _loc1_.letterSpacing = -2;
            _loc4_;
            _loc4_;
            _loc1_.size = 26;
            this.§_-DM§.y = 0;
            _loc4_;
            _loc4_;
         }
         (this.§_-DM§ as TextField).defaultTextFormat = _loc1_;
         this.§_-DM§.text = TimelineGlobal.player_name;
         if(Global.§_-Ba§ == true)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-cv§.visible = true;
         }
         else
         {
            this.§_-cv§.visible = false;
         }
      }
      
      public function §_-VL§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.coins.text = this.formatNumber(String(this.§_-F-§));
      }
      
      public function §_-Cm§(param1:Boolean = false) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1)
         {
            this.§_-F-§ = Global.coins.getInt();
            _loc2_;
            _loc2_;
            this.§_-VL§();
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            if(!(this.§_-F-§ == Global.coins.getInt()) && !this.§_-53§)
            {
               addEventListener(Event.ENTER_FRAME,this.§_-bO§,false,0,true);
               _loc3_;
               _loc3_;
               this.§_-53§ = true;
            }
         }
      }
      
      public function §_-bO§(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = this.§_-1n§.§_-AR§.rotation;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = _loc2_ + 5;
         _loc4_;
         _loc5_;
         _loc5_;
         if(_loc2_ > 360)
         {
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc2_ = _loc2_ - 360;
            _loc4_;
            _loc4_;
         }
         this.§_-1n§.§_-AR§.rotation = _loc2_;
         var _loc3_:* = Global.coins.getInt() - this.§_-F-§;
         _loc4_;
         _loc4_;
         if(_loc3_ > 0)
         {
            _loc5_;
            this.§_-6n§ = int(_loc3_ / 10);
            _loc4_;
            _loc5_;
            if(this.§_-6n§ < 1)
            {
               _loc4_;
               this.§_-6n§ = 1;
            }
            this.§_-F-§ = this.§_-F-§ + this.§_-6n§;
            this.§_-VL§();
         }
         else if(_loc3_ < 0)
         {
            _loc5_;
            this.§_-6n§ = int(_loc3_ * -1 / 10);
            if(this.§_-6n§ < 1)
            {
               this.§_-6n§ = 1;
            }
            this.§_-F-§ = this.§_-F-§ - this.§_-6n§;
            this.§_-VL§();
         }
         else
         {
            this.§_-53§ = false;
            _loc4_;
            if(hasEventListener(Event.ENTER_FRAME))
            {
               removeEventListener(Event.ENTER_FRAME,this.§_-bO§);
            }
            this.§_-F-§ = Global.coins.getInt();
            this.§_-VL§();
         }
         
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc5_;
            _loc4_ = _loc2_.substr(-3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
            _loc6_;
         }
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(!this.§_-Qk§)
         {
            _loc1_;
            this.§_-hH§ = new Tween(this,"y",Strong.easeOut,600 + height,517,1,true);
            _loc1_;
            this.§_-hH§.start();
            _loc2_;
            _loc2_;
            this.§_-Qk§ = true;
         }
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-Qk§)
         {
            _loc1_;
            this.§_-Cs§ = new Tween(this,"y",Strong.easeOut,517,600 + height,1,true);
            _loc2_;
            this.§_-Cs§.start();
            _loc2_;
            this.§_-Qk§ = false;
         }
      }
   }
}
