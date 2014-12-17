package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class ShopInfoAnimation extends §_-PR§
   {
      
      public function ShopInfoAnimation()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      public var desc_text:TextField;
      
      public var strip_text_1:TextField;
      
      public var name_text:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -0.7;
         _loc6_;
         this.name_text.text = ItemsData.§_-u2§(param1,param2).toUpperCase();
         _loc7_;
         this.desc_text.text = ItemsData.§_-7e§(param1,param2).toUpperCase();
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1 == "V")
         {
            _loc7_;
            _loc7_;
            this.strip_text_1.text = "VICTORY";
            _loc6_;
            _loc6_;
         }
         else if(param1 == "I")
         {
            this.strip_text_1.text = "IDLE";
         }
         
         this.name_text.setTextFormat(_loc3_);
         this.desc_text.setTextFormat(_loc3_);
         _loc7_;
         _loc7_;
         this.strip_text_1.setTextFormat(_loc3_);
         _loc7_;
         if(§_-Jm§.numChildren > 0)
         {
            while(§_-Jm§.numChildren > 0)
            {
               §_-Jm§.removeChildAt(0);
               _loc6_;
            }
            _loc7_;
            _loc7_;
         }
         _loc6_;
         _loc7_;
         _loc7_;
         if(param1 == "V")
         {
            _loc6_;
            _loc6_;
            _loc4_ = this.§_-i8§(param2);
            _loc4_.y = 14;
            _loc6_;
            _loc6_;
            §_-Jm§.addChild(_loc4_);
         }
         else if(param1 == "I")
         {
            _loc5_ = this.§_-vj§(param2);
            _loc5_.y = 14;
            _loc6_;
            _loc6_;
            §_-Jm§.addChild(_loc5_);
         }
         
      }
      
      private function §_-i8§(param1:int) : MovieClip
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:ColorTransform = null;
         var _loc2_:MovieClip = SafeGlobal.§_-DM§(param1);
         _loc16_;
         if(_loc2_ != null)
         {
            _loc15_;
            _loc15_;
            _loc15_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc15_;
            _loc15_;
            _loc4_ = 1;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc15_;
            if(_loc2_.body is §_-8J§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc15_;
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc15_;
            _loc15_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc2_.scaleX = 0.8;
            _loc16_;
            _loc2_.scaleY = 0.8;
            _loc16_;
            _loc16_;
            return _loc2_;
         }
         return new MovieClip();
      }
      
      private function §_-vj§(param1:int) : MovieClip
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:ColorTransform = null;
         var _loc2_:MovieClip = SafeGlobal.§_-do§(param1);
         _loc16_;
         if(_loc2_ != null)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            _loc15_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc16_;
            _loc15_;
            _loc15_;
            _loc4_ = 1;
            _loc15_;
            _loc15_;
            _loc16_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc16_;
            if(_loc2_.body is §_-8J§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc15_;
            _loc15_;
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc15_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc2_.scaleX = 0.8;
            _loc15_;
            _loc15_;
            _loc2_.scaleY = 0.8;
            return _loc2_;
         }
         return new MovieClip();
      }
   }
}
