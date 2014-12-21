package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class SelectBoxBackground extends Sprite
   {
      
      public function SelectBoxBackground(param1:Boolean = false)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _loc2_;
         _loc2_;
         if(param1)
         {
            this.§_-8l§.scaleX = -1;
            this.§_-8l§.x = 65;
            _loc3_;
            this.§_-Xy§.x = -249;
            this.§_-gf§.x = -249;
         }
      }
      
      public var §_-gf§:MovieClip;
      
      public var §_-8l§:MovieClip;
      
      public var §_-Xy§:MovieClip;
      
      public function init(param1:String, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = NaN;
         this.§_-gf§.title_text.text = param1;
         _loc5_;
         if(param2 <= 5)
         {
            this.§_-gf§.y = -102;
            this.§_-Xy§.visible = false;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_ = (Math.ceil(param2 / 5) - 1) * 57 + (Math.ceil(param2 / 5) - 2) * 3;
            this.§_-Xy§.height = _loc3_;
            _loc4_;
            this.§_-gf§.y = -102 - _loc3_;
            this.§_-Xy§.y = this.§_-gf§.y + this.§_-gf§.height;
            _loc4_;
            this.§_-Xy§.visible = true;
         }
      }
      
      public function §_-F§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-gf§.title_text.text = param1;
      }
   }
}
