package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class SelectBoxBackground extends Sprite
   {
      
      public function SelectBoxBackground(param1:Boolean = false)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         _loc3_;
         if(param1)
         {
            this.§_-SG§.scaleX = -1;
            _loc3_;
            _loc3_;
            this.§_-SG§.x = 65;
            this.§_-ZV§.x = -249;
            this.§_-uo§.x = -249;
         }
      }
      
      public var §_-uo§:MovieClip;
      
      public var §_-SG§:MovieClip;
      
      public var §_-ZV§:MovieClip;
      
      public function init(param1:String, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = NaN;
         this.§_-uo§.title_text.text = param1;
         if(param2 <= 5)
         {
            this.§_-uo§.y = -102;
            _loc5_;
            _loc5_;
            this.§_-ZV§.visible = false;
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc3_ = (Math.ceil(param2 / 5) - 1) * 57 + (Math.ceil(param2 / 5) - 2) * 3;
            this.§_-ZV§.height = _loc3_;
            this.§_-uo§.y = -102 - _loc3_;
            this.§_-ZV§.y = this.§_-uo§.y + this.§_-uo§.height;
            this.§_-ZV§.visible = true;
         }
      }
      
      public function §_-b6§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-uo§.title_text.text = param1;
      }
   }
}
