package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class ModSelectBoxBackground extends Sprite
   {
      
      public function ModSelectBoxBackground()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      public var §_-uo§:MovieClip;
      
      public var §_-SG§:MovieClip;
      
      public var §_-ZV§:MovieClip;
      
      public function init(param1:String, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = NaN;
         this.§_-uo§.title_text.text = param1;
         _loc5_;
         _loc5_;
         if(param2 <= 5)
         {
            _loc4_;
            _loc4_;
            this.§_-uo§.y = -45;
            this.§_-ZV§.visible = false;
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc4_;
            _loc5_;
            _loc3_ = (Math.ceil(param2 / 5) - 1) * 57 + (Math.ceil(param2 / 5) - 2) * 3;
            _loc4_;
            this.§_-ZV§.height = _loc3_;
            _loc5_;
            _loc5_;
            this.§_-uo§.y = -45 - _loc3_;
            _loc5_;
            this.§_-ZV§.y = this.§_-uo§.y + this.§_-uo§.height;
            _loc5_;
            this.§_-ZV§.visible = true;
         }
      }
      
      public function §_-b6§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-uo§.title_text.text = param1;
      }
   }
}
