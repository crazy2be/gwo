package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-bY§.§_-mM§;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import flash.display.MovieClip;
   import §_-Ff§.ItemsData;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class LP_BuyItem extends §_-uw§
   {
      
      public function LP_BuyItem(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super(param1);
         _loc3_;
         _loc3_;
         x = 1500;
         y = 138;
         this.§_-hE§ = new Sprite();
         this.§_-hE§.x = 42;
         _loc2_;
         this.§_-hE§.y = 170;
         addChild(this.§_-hE§);
      }
      
      public var g_text:TextField;
      
      public var §_-gg§:TextField;
      
      public var gravitons_text:TextField;
      
      public var §_-vU§:TextField;
      
      public var §_-ek§:§_-mM§;
      
      public var §_-rW§:TextField;
      
      public var buy_text:TextField;
      
      public var §_-Do§:TextField;
      
      private var shop_id:String;
      
      private var item_type:String;
      
      private var item_id:int;
      
      private var cost:int;
      
      private var §_-hE§:Sprite;
      
      public var back_to_shop:Boolean = false;
      
      private var §_-Pw§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-0B§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         tweenOut(true);
         _loc2_;
         if(this.back_to_shop)
         {
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_menu.§_-NP§("MB_Shop");
         }
      }
      
      public function §_-CJ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.coins.getInt() < this.cost)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
            {
               _loc1_;
               _loc1_;
               _loc1_;
               Global.lobby_display.displayMoreGravitonsPanel(this.§_-Pw§,this.back_to_shop);
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
               {
                  _loc2_;
                  Global.lobby_display.displayBuyGravitonsPanel();
               }
               else
               {
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
                  {
                     _loc2_;
                     _loc2_;
                     Global.lobby_display.displayKredsPanel();
                     _loc2_;
                     _loc2_;
                  }
                  else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
                  {
                     _loc2_;
                     Global.lobby_display.§_-v8§();
                  }
                  else
                  {
                     _loc1_;
                     _loc1_;
                     Global.lobby_display.displayBuyGravitonsPanel();
                     _loc2_;
                  }
                  
               }
            }
            tweenOut(false);
         }
         else
         {
            Global.lobby_client.buyShopItem(this.shop_id);
            if(this.back_to_shop)
            {
               _loc2_;
               Global.lobby_display.lobby_menu.§_-NP§("MB_Shop");
            }
            tweenOut(true);
         }
      }
      
      public function §_-d2§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.doClose();
      }
      
      public function update(param1:String) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:Array = null;
         var _loc3_:TextFormat = null;
         var _loc4_:TextFormat = null;
         var _loc5_:TextFormat = null;
         var _loc6_:TextFormat = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Sprite = null;
         _loc11_;
         this.§_-Pw§ = param1;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(param1 != "")
         {
            _loc2_ = param1.split(",");
            _loc11_;
            _loc11_;
            this.shop_id = _loc2_[0];
            _loc11_;
            _loc11_;
            this.item_type = _loc2_[0].substr(0,1);
            _loc11_;
            _loc11_;
            this.item_id = int(_loc2_[0].substr(1));
            _loc10_;
            this.cost = int(_loc2_[1]);
            _loc3_ = new TextFormat();
            _loc11_;
            _loc3_.letterSpacing = -2;
            _loc10_;
            this.§_-Do§.defaultTextFormat = _loc3_;
            _loc11_;
            this.§_-Do§.text = ItemsData.§_-7L§(this.item_type,this.item_id).toUpperCase();
            _loc4_ = new TextFormat();
            _loc4_.letterSpacing = -1;
            _loc11_;
            _loc4_.leading = -4;
            _loc11_;
            this.§_-vU§.defaultTextFormat = _loc4_;
            _loc11_;
            this.§_-vU§.text = ItemsData.§_-up§(this.item_type,this.item_id).toUpperCase();
            _loc5_ = new TextFormat();
            _loc5_.letterSpacing = -1;
            _loc11_;
            _loc11_;
            this.gravitons_text.defaultTextFormat = _loc5_;
            _loc11_;
            this.§_-gg§.defaultTextFormat = _loc5_;
            _loc10_;
            _loc11_;
            _loc11_;
            if(this.cost <= 9)
            {
               _loc10_;
               this.gravitons_text.text = String(this.cost);
               _loc11_;
               this.§_-gg§.text = "";
               this.g_text.text = "G";
               _loc10_;
               this.§_-rW§.text = "";
               _loc10_;
            }
            else
            {
               _loc10_;
               _loc10_;
               if(this.cost <= 99)
               {
                  _loc10_;
                  _loc10_;
                  this.gravitons_text.text = String(this.cost);
                  this.§_-gg§.text = "";
                  this.g_text.text = "G";
                  this.§_-rW§.text = "";
               }
               else if(this.cost <= 999)
               {
                  this.gravitons_text.text = String(this.cost);
                  this.§_-gg§.text = "";
                  this.g_text.text = "G";
                  this.§_-rW§.text = "";
                  _loc10_;
               }
               else
               {
                  this.§_-gg§.text = this.formatNumber(String(this.cost));
                  _loc11_;
                  _loc11_;
                  this.gravitons_text.text = "";
                  _loc11_;
                  this.g_text.text = "";
                  this.§_-rW§.text = "G";
               }
               
            }
            _loc6_ = new TextFormat();
            _loc6_.letterSpacing = -1;
            _loc10_;
            _loc10_;
            _loc6_.leading = -6;
            _loc10_;
            _loc10_;
            this.buy_text.defaultTextFormat = _loc6_;
            _loc10_;
            _loc10_;
            this.buy_text.text = String("DO YOU WANT TO PURCHASE " + ItemsData.§_-6l§(this.item_type,this.item_id).toUpperCase() + " " + ItemsData.§_-7L§(this.item_type,this.item_id).toUpperCase() + " " + ItemsData.§_-Xi§(this.item_type,this.item_id).toUpperCase() + "FOR " + this.formatNumber(String(this.cost)) + " GRAVITONS?");
            _loc10_;
            _loc10_;
            if(this.§_-hE§.numChildren > 0)
            {
               while(this.§_-hE§.numChildren > 0)
               {
                  this.§_-hE§.removeChildAt(0);
                  _loc11_;
                  _loc11_;
               }
               _loc11_;
               _loc11_;
            }
            _loc10_;
            _loc11_;
            _loc11_;
            if(this.item_type == "V")
            {
               _loc10_;
               _loc10_;
               _loc7_ = this.§_-iB§();
               _loc7_.y = 14;
               _loc11_;
               _loc11_;
               this.§_-hE§.addChild(_loc7_);
            }
            else if(this.item_type == "I")
            {
               _loc8_ = this.§_-tI§();
               _loc8_.y = 14;
               _loc10_;
               this.§_-hE§.addChild(_loc8_);
            }
            else
            {
               _loc9_ = this.§_-Y9§();
               _loc11_;
               _loc11_;
               this.§_-hE§.addChild(_loc9_);
            }
            
         }
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(!§_-0B§)
         {
            _loc2_;
            _loc2_;
            tweenInExtras();
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hH§.start();
            _loc3_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               _loc2_;
               _loc2_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc2_;
               _loc2_;
               fade_in.start();
            }
            §_-0B§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      private function §_-iB§() : MovieClip
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:ColorTransform = null;
         var _loc1_:MovieClip = SafeGlobal.§with§(this.item_id);
         _loc14_;
         _loc14_;
         if(_loc1_ != null)
         {
            _loc15_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc2_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc15_;
            _loc15_;
            _loc3_ = 1;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc4_ = 1;
            _loc15_;
            _loc15_;
            _loc5_ = 1;
            _loc6_ = getDefinitionByName("HeadClip" + _loc2_) as Class;
            _loc7_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc1_.head.addChild(_loc7_);
            _loc14_;
            _loc14_;
            if(_loc1_.body is §_-7w§)
            {
               _loc6_ = getDefinitionByName("BodyClip" + _loc3_) as Class;
            }
            else
            {
               _loc6_ = getDefinitionByName("BodyClipNew" + _loc3_) as Class;
            }
            _loc8_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.body.addChild(_loc8_);
            _loc6_ = getDefinitionByName("HandClip" + _loc4_) as Class;
            _loc9_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.righthand.addChild(_loc9_);
            _loc10_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc1_.lefthand.addChild(_loc10_);
            _loc6_ = getDefinitionByName("FootClip" + _loc5_) as Class;
            _loc11_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.rightfoot.addChild(_loc11_);
            _loc12_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.leftfoot.addChild(_loc12_);
            _loc13_ = new ColorTransform();
            _loc13_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc14_;
            _loc14_;
            _loc7_.inside.transform.colorTransform = _loc13_;
            _loc8_.inside.transform.colorTransform = _loc13_;
            _loc10_.inside.transform.colorTransform = _loc13_;
            _loc12_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc15_;
            _loc9_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc15_;
            _loc11_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc15_;
            _loc1_.scaleX = 0.8;
            _loc15_;
            _loc1_.scaleY = 0.8;
            return _loc1_;
         }
         return new MovieClip();
      }
      
      private function §_-tI§() : MovieClip
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Class = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:ColorTransform = null;
         var _loc1_:MovieClip = SafeGlobal.§_-c-§(this.item_id);
         _loc14_;
         _loc14_;
         if(_loc1_ != null)
         {
            _loc14_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc2_ = Global.favourite_helmet.getInt();
            _loc14_;
            _loc14_;
            _loc14_;
            _loc3_ = 1;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc4_ = 1;
            _loc15_;
            _loc15_;
            _loc5_ = 1;
            _loc6_ = getDefinitionByName("HeadClip" + _loc2_) as Class;
            _loc7_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.head.addChild(_loc7_);
            _loc15_;
            _loc15_;
            if(_loc1_.body is §_-7w§)
            {
               _loc6_ = getDefinitionByName("BodyClip" + _loc3_) as Class;
            }
            else
            {
               _loc6_ = getDefinitionByName("BodyClipNew" + _loc3_) as Class;
            }
            _loc8_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.body.addChild(_loc8_);
            _loc6_ = getDefinitionByName("HandClip" + _loc4_) as Class;
            _loc9_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc1_.righthand.addChild(_loc9_);
            _loc10_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.lefthand.addChild(_loc10_);
            _loc6_ = getDefinitionByName("FootClip" + _loc5_) as Class;
            _loc11_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.rightfoot.addChild(_loc11_);
            _loc12_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.leftfoot.addChild(_loc12_);
            _loc13_ = new ColorTransform();
            _loc13_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc14_;
            _loc7_.inside.transform.colorTransform = _loc13_;
            _loc8_.inside.transform.colorTransform = _loc13_;
            _loc10_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc15_;
            _loc12_.inside.transform.colorTransform = _loc13_;
            _loc9_.inside.transform.colorTransform = _loc13_;
            _loc11_.inside.transform.colorTransform = _loc13_;
            _loc1_.scaleX = 0.8;
            _loc1_.scaleY = 0.8;
            return _loc1_;
         }
         return new MovieClip();
      }
      
      private function §_-Y9§() : Sprite
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Class = null;
         var _loc2_:Sprite = null;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.item_type == "W")
         {
            _loc3_;
            return SafeGlobal.§_-e§(this.item_id);
         }
         _loc3_;
         if(this.item_type == "C")
         {
            _loc1_ = getDefinitionByName("CampaignIcon" + (this.item_id - 1)) as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            _loc2_.scaleX = 0.3;
            _loc4_;
            _loc2_.scaleY = 0.3;
            _loc4_;
            _loc4_;
            return _loc2_;
         }
         _loc4_;
         if(this.item_type == "H")
         {
            _loc1_ = getDefinitionByName("HeadClip" + this.item_id) as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            _loc2_.scaleX = 1.5;
            _loc3_;
            _loc2_.scaleY = 1.5;
            _loc4_;
            _loc2_.x = -3;
            _loc3_;
            _loc2_.y = 4;
            _loc3_;
            _loc3_;
            return _loc2_;
         }
         _loc3_;
         _loc3_;
         if(this.item_type == "M")
         {
            _loc2_ = new §_-Rx§(this.item_id) as Sprite;
            _loc3_;
            _loc3_;
            _loc2_.scaleX = 0.7;
            _loc3_;
            _loc3_;
            _loc2_.scaleY = 0.7;
            _loc3_;
            _loc3_;
            return _loc2_;
         }
         _loc3_;
         _loc3_;
         if(this.item_type == "S")
         {
            _loc1_ = getDefinitionByName("LevelSlotIcon") as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            return _loc2_;
         }
         if(this.item_type == "X")
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            if(this.item_id == 0 || this.item_id == 1 || this.item_id == 2)
            {
               _loc1_ = getDefinitionByName("BoosterIcon1") as Class;
            }
            else
            {
               _loc1_ = getDefinitionByName("BoosterIcon2") as Class;
            }
            _loc2_ = new _loc1_() as Sprite;
            return _loc2_;
         }
         if(this.item_type == "F")
         {
            return new Sprite();
         }
         _loc4_;
         _loc4_;
         if(this.item_type == "V")
         {
            return new Sprite();
         }
         _loc4_;
         if(this.item_type == "I")
         {
            _loc4_;
            _loc4_;
            return new Sprite();
         }
         if(this.item_type == "R")
         {
            _loc1_ = getDefinitionByName("ReplayCreditIcon") as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            return _loc2_;
         }
         return new Sprite();
      }
   }
}
