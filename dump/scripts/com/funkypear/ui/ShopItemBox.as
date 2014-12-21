package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import §_-Ff§.ItemsData;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class ShopItemBox extends Sprite
   {
      
      public function ShopItemBox(param1:String, param2:String, param3:int, param4:int)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         super();
         this.shopID = param1;
         _loc5_;
         _loc5_;
         this.cost = param4;
         this.item_type = param2;
         this.item_id = param3;
         this.§_-hE§ = new Sprite();
         _loc5_;
         this.§_-hE§.x = 25;
         this.§_-hE§.y = 30;
         addChild(this.§_-hE§);
         _loc6_;
         this.§_-R1§();
         _loc5_;
         this.§_-0V§ = new Sprite();
         _loc5_;
         _loc5_;
         this.§_-0V§.graphics.beginFill(16711680,0);
         this.§_-0V§.graphics.drawRect(0,0,width,height);
         _loc5_;
         _loc5_;
         this.§_-0V§.graphics.endFill();
         this.§_-0V§.mouseEnabled = true;
         this.§_-0V§.mouseChildren = false;
         _loc6_;
         this.§_-0V§.buttonMode = true;
         _loc6_;
         this.§_-0V§.addEventListener(MouseEvent.CLICK,this.§_-1o§,false,0,true);
         _loc5_;
         _loc5_;
         this.§_-0V§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-0V§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         addChild(this.§_-0V§);
         this.doSelect(false);
      }
      
      public var itemname_14:TextField;
      
      public var g_text:TextField;
      
      public var §_-vl§:§_-83§;
      
      public var bg:MovieClip;
      
      public var itemname_13:TextField;
      
      public var itemname_12:TextField;
      
      public var §_-W2§:TextField;
      
      public var itemname_16:TextField;
      
      public var itemname_15:TextField;
      
      public var shopID:String;
      
      public var cost:int;
      
      public var §_-0V§:Sprite;
      
      public var item_type:String;
      
      public var item_id:int;
      
      public var §_-cK§:Boolean = false;
      
      private var §_-hE§:Sprite;
      
      private var §_-yY§:Boolean = false;
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      public function §_-1o§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.panel_shop.§_-Hs§(this.shopID,this.cost);
      }
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         var _loc2_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-qP§.stop();
               _loc3_;
               _loc3_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this.§_-hE§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc3_;
         this.§_-GY§ = new Tween(this.§_-hE§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-qP§.start();
         _loc4_;
         this.§_-GY§.start();
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = 1;
         _loc3_;
         _loc4_;
         _loc3_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-qP§.stop();
               _loc4_;
               _loc4_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc3_;
            _loc3_;
         }
         this.§_-qP§ = new Tween(this.§_-hE§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this.§_-hE§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function doSelect(param1:Boolean) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-yY§ = param1;
      }
      
      public function §_-R1§() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:MovieClip = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Sprite = null;
         var _loc5_:* = NaN;
         _loc6_;
         _loc6_;
         var _loc1_:String = ItemsData.§_-7L§(this.item_type,this.item_id).toUpperCase();
         _loc6_;
         _loc6_;
         this.itemname_12.visible = false;
         this.itemname_13.visible = false;
         this.itemname_14.visible = false;
         this.itemname_15.visible = false;
         this.itemname_16.visible = false;
         this.itemname_12.text = _loc1_;
         _loc7_;
         _loc7_;
         this.itemname_13.text = _loc1_;
         this.itemname_14.text = _loc1_;
         _loc6_;
         _loc6_;
         this.itemname_15.text = _loc1_;
         _loc6_;
         _loc6_;
         this.itemname_16.text = _loc1_;
         if(this.itemname_16.textWidth <= 118)
         {
            this.itemname_16.visible = true;
         }
         else if(this.itemname_15.textWidth <= 118)
         {
            this.itemname_15.visible = true;
         }
         else if(this.itemname_14.textWidth <= 118)
         {
            this.itemname_14.visible = true;
         }
         else if(this.itemname_13.textWidth <= 118)
         {
            this.itemname_13.visible = true;
         }
         else
         {
            this.itemname_12.visible = true;
            _loc6_;
            _loc6_;
         }
         
         
         
         _loc7_;
         _loc7_;
         _loc7_;
         if(this.item_type == "V")
         {
            _loc2_ = this.§_-iB§();
            _loc2_.y = 14;
            _loc7_;
            _loc7_;
            this.§_-hE§.addChild(_loc2_);
         }
         else if(this.item_type == "I")
         {
            _loc3_ = this.§_-tI§();
            _loc6_;
            _loc6_;
            _loc3_.y = 14;
            _loc6_;
            _loc6_;
            this.§_-hE§.addChild(_loc3_);
         }
         else
         {
            _loc4_ = this.§_-Y9§();
            _loc7_;
            this.§_-hE§.addChild(_loc4_);
         }
         
         if(this.§_-ha§())
         {
            this.§_-W2§.textColor = 10066329;
            this.§_-W2§.text = "OWNED";
            _loc7_;
            this.§_-W2§.x = this.§_-W2§.x + 10;
            _loc7_;
            _loc7_;
            this.§_-cK§ = true;
            this.g_text.visible = false;
            _loc6_;
            _loc6_;
            _loc7_;
            this.§_-vl§.visible = false;
         }
         else
         {
            this.§_-cK§ = false;
            this.§_-W2§.textColor = 0;
            _loc7_;
            _loc7_;
            this.g_text.textColor = 0;
            this.§_-W2§.text = this.formatNumber(this.cost.toString());
            _loc5_ = (this.§_-W2§ as TextField).textWidth;
            _loc6_;
            _loc7_;
            _loc7_;
            this.§_-vl§.x = 198 - _loc5_ - 18;
            _loc6_;
            _loc6_;
            this.g_text.visible = true;
            _loc7_;
            this.§_-vl§.visible = true;
         }
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
         _loc15_;
         _loc15_;
         if(_loc1_ != null)
         {
            _loc15_;
            _loc14_;
            _loc14_;
            _loc2_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc15_;
            _loc15_;
            _loc3_ = 1;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc4_ = 1;
            _loc15_;
            _loc5_ = 1;
            _loc6_ = getDefinitionByName("HeadClip" + _loc2_) as Class;
            _loc7_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc1_.head.addChild(_loc7_);
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
            _loc1_.body.addChild(_loc8_);
            _loc6_ = getDefinitionByName("HandClip" + _loc4_) as Class;
            _loc9_ = new _loc6_() as MovieClip;
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
            _loc7_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc8_.inside.transform.colorTransform = _loc13_;
            _loc10_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc12_.inside.transform.colorTransform = _loc13_;
            _loc9_.inside.transform.colorTransform = _loc13_;
            _loc14_;
            _loc11_.inside.transform.colorTransform = _loc13_;
            _loc1_.scaleX = 0.8;
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
         _loc15_;
         _loc15_;
         if(_loc1_ != null)
         {
            _loc14_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc2_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc14_;
            _loc3_ = 1;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc4_ = 1;
            _loc14_;
            _loc14_;
            _loc5_ = 1;
            _loc6_ = getDefinitionByName("HeadClip" + _loc2_) as Class;
            _loc7_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc1_.head.addChild(_loc7_);
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
            _loc15_;
            _loc15_;
            _loc1_.body.addChild(_loc8_);
            _loc6_ = getDefinitionByName("HandClip" + _loc4_) as Class;
            _loc9_ = new _loc6_() as MovieClip;
            _loc15_;
            _loc1_.righthand.addChild(_loc9_);
            _loc10_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc1_.lefthand.addChild(_loc10_);
            _loc6_ = getDefinitionByName("FootClip" + _loc5_) as Class;
            _loc11_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.rightfoot.addChild(_loc11_);
            _loc12_ = new _loc6_() as MovieClip;
            _loc14_;
            _loc14_;
            _loc1_.leftfoot.addChild(_loc12_);
            _loc13_ = new ColorTransform();
            _loc13_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc7_.inside.transform.colorTransform = _loc13_;
            _loc8_.inside.transform.colorTransform = _loc13_;
            _loc10_.inside.transform.colorTransform = _loc13_;
            _loc12_.inside.transform.colorTransform = _loc13_;
            _loc9_.inside.transform.colorTransform = _loc13_;
            _loc11_.inside.transform.colorTransform = _loc13_;
            _loc15_;
            _loc15_;
            _loc1_.scaleX = 0.8;
            _loc1_.scaleY = 0.8;
            _loc14_;
            _loc14_;
            return _loc1_;
         }
         return new MovieClip();
      }
      
      public function §_-ha§() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.item_type == "W" && (SafeGlobal.weaponsUnlocked[this.item_id]))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            return true;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.item_type == "C" && SafeGlobal.campaigns[this.item_id - 1].unlocked[0] == 1)
         {
            _loc1_;
            _loc2_;
            return true;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.item_type == "H" && (SafeGlobal.helmetsUnlocked[this.item_id]))
         {
            _loc1_;
            _loc1_;
            return true;
         }
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.item_type == "M" && (SafeGlobal.modsUnlocked[this.item_id]))
         {
            _loc2_;
            _loc2_;
            return true;
         }
         _loc2_;
         if(this.item_type == "F" && (SafeGlobal.coloursUnlocked[this.item_id]))
         {
            _loc2_;
            _loc2_;
            _loc1_;
            return true;
         }
         if(this.item_type == "V" && (SafeGlobal.victoryAnimsUnlocked[this.item_id]))
         {
            _loc1_;
            return true;
         }
         if(this.item_type == "I" && (SafeGlobal.idleAnimsUnlocked[this.item_id]))
         {
            _loc2_;
            _loc2_;
            return true;
         }
         return false;
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
            _loc6_;
         }
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      private function §_-Y9§() : Sprite
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Class = null;
         var _loc2_:Sprite = null;
         if(this.item_type == "W")
         {
            _loc2_ = SafeGlobal.§_-e§(this.item_id);
            _loc4_;
            _loc4_;
            if(this.item_id == 22)
            {
               _loc2_.scaleX = 0.6;
               _loc2_.scaleY = 0.6;
            }
            else
            {
               _loc2_.scaleX = 0.9;
               _loc3_;
               _loc3_;
               _loc2_.scaleY = 0.9;
            }
            return _loc2_;
         }
         _loc4_;
         _loc4_;
         if(this.item_type == "C")
         {
            _loc1_ = getDefinitionByName("CampaignIcon" + (this.item_id - 1)) as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            _loc2_.scaleX = 0.3;
            _loc4_;
            _loc4_;
            _loc2_.scaleY = 0.3;
            _loc4_;
            _loc4_;
            return _loc2_;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.item_type == "H")
         {
            _loc1_ = getDefinitionByName("HeadClip" + this.item_id) as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc3_;
            _loc2_.scaleX = 1.2;
            _loc3_;
            _loc3_;
            _loc2_.scaleY = 1.2;
            _loc4_;
            _loc4_;
            _loc2_.x = -3;
            _loc3_;
            _loc3_;
            _loc2_.y = 4;
            _loc3_;
            return _loc2_;
         }
         if(this.item_type == "M")
         {
            _loc3_;
            _loc2_ = new §_-Rx§(this.item_id) as Sprite;
            _loc3_;
            _loc3_;
            _loc2_.scaleX = 0.7;
            _loc4_;
            _loc4_;
            _loc2_.scaleY = 0.7;
            _loc3_;
            _loc3_;
            return _loc2_;
         }
         if(this.item_type == "X")
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
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
            _loc2_.scaleX = 0.8;
            _loc4_;
            _loc2_.scaleY = 0.8;
            return _loc2_;
         }
         if(this.item_type == "F")
         {
            _loc3_;
            return new Sprite();
         }
         if(this.item_type == "V")
         {
            _loc3_;
            _loc3_;
            return new Sprite();
         }
         _loc3_;
         if(this.item_type == "I")
         {
            _loc3_;
            _loc3_;
            return new Sprite();
         }
         if(this.item_type == "R")
         {
            _loc1_ = getDefinitionByName("ReplayCreditIcon") as Class;
            _loc2_ = new _loc1_() as Sprite;
            _loc4_;
            return _loc2_;
         }
         return new Sprite();
      }
   }
}
