package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class ErrorPanel extends Sprite
   {
      
      public function ErrorPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         this.anim_holder_1.addChild(this.§_-lh§());
         this.anim_holder_2.addChild(this.§_-lh§());
         this.anim_holder_3.addChild(this.§_-lh§());
         this.anim_holder_4.addChild(this.§_-lh§());
         this.anim_holder_5.addChild(this.§_-lh§());
         this.anim_holder_6.addChild(this.§_-lh§());
      }
      
      public var anim_holder_4:MovieClip;
      
      public var anim_holder_5:MovieClip;
      
      public var anim_holder_2:MovieClip;
      
      public var anim_holder_3:MovieClip;
      
      public var anim_holder_1:MovieClip;
      
      public var anim_holder_6:MovieClip;
      
      private function §_-lh§() : MovieClip
      {
         var _loc14_:* = false;
         var _loc15_:* = true;
         _loc15_;
         _loc15_;
         var _loc1_:int = Global.favourite_helmet.getInt();
         var _loc2_:* = 1;
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         var _loc5_:MovieClip = new §_-ke§();
         var _loc6_:Class = getDefinitionByName("HeadClip" + _loc1_) as Class;
         var _loc7_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.head.addChild(_loc7_);
         _loc14_;
         if(_loc5_.body is §_-7w§)
         {
            _loc6_ = getDefinitionByName("BodyClip" + _loc2_) as Class;
         }
         else
         {
            _loc6_ = getDefinitionByName("BodyClipNew" + _loc2_) as Class;
         }
         var _loc8_:MovieClip = new _loc6_() as MovieClip;
         _loc14_;
         _loc14_;
         _loc5_.body.addChild(_loc8_);
         _loc6_ = getDefinitionByName("HandClip" + _loc3_) as Class;
         var _loc9_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.righthand.addChild(_loc9_);
         var _loc10_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.lefthand.addChild(_loc10_);
         _loc6_ = getDefinitionByName("FootClip" + _loc4_) as Class;
         var _loc11_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.rightfoot.addChild(_loc11_);
         var _loc12_:MovieClip = new _loc6_() as MovieClip;
         _loc14_;
         _loc14_;
         _loc5_.leftfoot.addChild(_loc12_);
         var _loc13_:ColorTransform = new ColorTransform();
         _loc13_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc15_;
         _loc15_;
         _loc7_.inside.transform.colorTransform = _loc13_;
         _loc8_.inside.transform.colorTransform = _loc13_;
         _loc10_.inside.transform.colorTransform = _loc13_;
         _loc12_.inside.transform.colorTransform = _loc13_;
         _loc15_;
         _loc15_;
         _loc9_.inside.transform.colorTransform = _loc13_;
         _loc14_;
         _loc11_.inside.transform.colorTransform = _loc13_;
         _loc14_;
         _loc14_;
         _loc5_.scaleX = 1.5;
         _loc5_.scaleY = 1.5;
         return _loc5_;
      }
   }
}
