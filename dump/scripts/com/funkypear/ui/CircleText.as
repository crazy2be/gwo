package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   
   public class CircleText extends Sprite
   {
      
      public function CircleText(param1:String, param2:Number, param3:Number)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this.updateText(param1,param2,param3);
      }
      
      private var §_-8L§:Number = 0;
      
      public function updateText(param1:String, param2:Number, param3:Number) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:Sprite = null;
         var _loc9_:Rectangle = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         while(numChildren > 0)
         {
            removeChildAt(0);
            _loc15_;
            _loc15_;
         }
         var _loc4_:Array = param1.split("");
         _loc16_;
         var _loc5_:Number = param2;
         _loc16_;
         _loc15_;
         _loc6_ = 0;
         _loc15_;
         _loc15_;
         while(_loc6_ < _loc4_.length)
         {
            _loc16_;
            _loc7_ = _loc4_[_loc6_];
            if(_loc7_ == " ")
            {
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc5_ = _loc5_ + 5;
               _loc15_;
            }
            else
            {
               _loc8_ = this.§_-9i§(_loc7_);
               _loc8_.x = 0;
               _loc15_;
               _loc8_.y = 0;
               _loc15_;
               _loc15_;
               addChild(_loc8_);
               _loc9_ = _loc8_.getBounds(this);
               _loc10_ = Math.abs(_loc9_.x);
               _loc11_ = Math.abs(_loc9_.width - _loc10_);
               if(_loc6_ == 0)
               {
                  _loc8_.rotation = _loc5_ + 90;
                  _loc8_.x = param3 * Math.cos(_loc5_ * Math.PI / 180);
                  _loc8_.y = param3 * Math.sin(_loc5_ * Math.PI / 180);
                  _loc16_;
                  _loc16_;
                  _loc12_ = _loc11_ + this.§_-8L§;
                  _loc16_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc13_ = _loc12_ / param3;
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc14_ = (_loc12_ / param3) * 180 / Math.PI;
                  _loc15_;
                  _loc15_;
                  _loc5_ = _loc5_ + _loc14_;
               }
               else
               {
                  _loc12_ = _loc10_;
                  _loc16_;
                  _loc13_ = _loc12_ / param3;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc14_ = _loc13_ * 180 / Math.PI;
                  _loc16_;
                  _loc5_ = _loc5_ + _loc14_;
                  _loc15_;
                  _loc15_;
                  _loc8_.rotation = _loc5_ + 90;
                  _loc15_;
                  _loc15_;
                  _loc8_.x = param3 * Math.cos(_loc5_ * Math.PI / 180);
                  _loc8_.y = param3 * Math.sin(_loc5_ * Math.PI / 180);
                  _loc16_;
                  _loc15_;
                  _loc12_ = _loc11_ + this.§_-8L§;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  _loc13_ = (_loc11_ + this.§_-8L§) / param3;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc14_ = _loc13_ * 180 / Math.PI;
                  _loc16_;
                  _loc16_;
                  _loc5_ = _loc5_ + _loc14_;
               }
            }
            _loc6_++;
            _loc16_;
         }
      }
      
      public function §_-9i§(param1:String) : Sprite
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         var param1:String = param1.toUpperCase();
         _loc4_;
         var _loc2_:String = "letter" + param1;
         var _loc3_:Class = getDefinitionByName(_loc2_) as Class;
         return new _loc3_() as Sprite;
      }
   }
}
