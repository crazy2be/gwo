package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   
   public class TalkingHead extends Sprite
   {
      
      public function TalkingHead()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var colour_id:int;
      
      private var helmet_id:int;
      
      private var §_-Sz§:MovieClip;
      
      public function init(param1:int, param2:int) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         this.colour_id = param1;
         _loc10_;
         this.helmet_id = param2;
         var _loc3_:Class = getDefinitionByName("HeadClip" + this.helmet_id) as Class;
         _loc9_;
         this.§_-Sz§ = new _loc3_();
         var _loc4_:Number = this.§_-Sz§.height;
         var _loc5_:Number = 70;
         _loc9_;
         _loc10_;
         _loc10_;
         var _loc6_:Number = _loc5_ / _loc4_;
         _loc10_;
         _loc10_;
         this.§_-Sz§.scaleX = _loc6_ * -1;
         _loc9_;
         this.§_-Sz§.scaleY = _loc6_;
         _loc9_;
         _loc9_;
         this.§_-Sz§.x = 34;
         var _loc7_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc7_.color = SafeGlobal.colour_hex[this.colour_id];
         _loc10_;
         this.§_-Sz§.inside.transform.colorTransform = _loc7_;
         _loc9_;
         addChild(this.§_-Sz§);
         var _loc8_:Rectangle = this.§_-Sz§.getBounds(this);
         _loc10_;
         this.§_-Sz§.y = 7 - _loc8_.y;
      }
   }
}
