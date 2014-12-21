package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class ModSelectBoxBackground extends Sprite
   {
      
      public function ModSelectBoxBackground()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public var §_-gf§:MovieClip;
      
      public var §_-8l§:MovieClip;
      
      public var §_-Xy§:MovieClip;
      
      public function init(param1:String, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = NaN;
         this.§_-gf§.title_text.text = param1;
         if(param2 <= 5)
         {
            this.§_-gf§.y = -45;
            this.§_-Xy§.visible = false;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = (Math.ceil(param2 / 5) - 1) * 57 + (Math.ceil(param2 / 5) - 2) * 3;
            _loc4_;
            this.§_-Xy§.height = _loc3_;
            this.§_-gf§.y = -45 - _loc3_;
            _loc5_;
            this.§_-Xy§.y = this.§_-gf§.y + this.§_-gf§.height;
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
