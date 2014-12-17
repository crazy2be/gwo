package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-zO§.§_-pF§;
   import §_-zO§.§_-Yd§;
   
   public class CircleBorder extends Sprite
   {
      
      public function CircleBorder(param1:Number = 100)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Sn§ = [];
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         _loc2_;
         this.§_-3O§ = param1;
         _loc2_;
         _loc2_;
         this.§_-SU§();
         _loc3_;
         _loc3_;
         this.§_-l§();
      }
      
      private var §_-Sn§:Array;
      
      private var §_-3O§:int;
      
      public var §_-4T§:§_-pF§;
      
      public function §_-qC§(param1:Number = 100) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-3O§ = param1;
         _loc3_;
         _loc3_;
         this.§_-SU§();
         _loc2_;
         _loc2_;
         this.§_-l§();
      }
      
      private function §_-SU§() : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         _loc11_;
         _loc12_;
         var _loc1_:Number = 2 * Math.PI * this.§_-3O§;
         var _loc2_:* = 40;
         var _loc3_:int = int(_loc1_ / _loc2_);
         _loc12_;
         _loc12_;
         _loc3_ = int(_loc3_ / 2) * 2;
         _loc11_;
         _loc11_;
         _loc11_;
         var _loc9_:Number = Math.PI * 2 / _loc3_;
         var _loc10_:* = 0;
         while(_loc10_ < _loc3_)
         {
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc8_ = _loc9_ * _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = Math.round(0 + Math.cos(_loc8_) * this.§_-3O§);
            _loc5_ = Math.round(0 + Math.sin(_loc8_) * this.§_-3O§);
            _loc6_ = 90 + Math.round(_loc8_ * 180 / Math.PI);
            _loc12_;
            _loc12_;
            while(true)
            {
               _loc12_;
               _loc12_;
               _loc11_;
               if(_loc6_ < 360)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc6_ = _loc6_ - 360;
               _loc11_;
               _loc11_;
            }
            while(true)
            {
               _loc11_;
               if(_loc6_ >= 0)
               {
                  break;
               }
               _loc11_;
               _loc11_;
               _loc6_ = _loc6_ + 360;
            }
            _loc12_;
            _loc7_ = Math.floor(_loc6_ / 5);
            this.§_-Sn§.push(new §_-Yd§(_loc4_,_loc5_,_loc6_,_loc7_));
            _loc10_++;
         }
      }
      
      private function §_-l§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:§_-Yd§ = null;
         var _loc3_:Sprite = null;
         _loc4_;
         _loc4_;
         if(numChildren > 0)
         {
            while(numChildren > 0)
            {
               removeChildAt(0);
               _loc5_;
               _loc5_;
            }
         }
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         while(_loc2_ < this.§_-Sn§.length)
         {
            _loc1_ = this.§_-Sn§[_loc2_];
            _loc3_ = new §_-fs§();
            _loc4_;
            _loc4_;
            _loc3_.x = _loc1_.x;
            _loc5_;
            _loc5_;
            _loc3_.y = _loc1_.y;
            _loc4_;
            _loc3_.rotation = _loc1_.angle;
            _loc4_;
            addChild(_loc3_);
            _loc4_;
            _loc4_;
            _loc2_++;
         }
      }
   }
}
