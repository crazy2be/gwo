package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-JH§.§_-oH§;
   import §_-JH§.§each §;
   
   public class CircleBorder extends Sprite
   {
      
      public function CircleBorder(param1:Number = 100)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-05§ = [];
         _loc2_;
         super();
         _loc3_;
         _loc3_;
         this.§_-nP§ = param1;
         _loc3_;
         _loc3_;
         this.§_-Ut§();
         _loc2_;
         this.§_-ZF§();
      }
      
      private var §_-05§:Array;
      
      private var §_-nP§:int;
      
      public var §_-wr§:§_-oH§;
      
      public function §_-iN§(param1:Number = 100) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-nP§ = param1;
         _loc3_;
         this.§_-Ut§();
         _loc3_;
         this.§_-ZF§();
      }
      
      private function §_-Ut§() : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         _loc11_;
         _loc11_;
         _loc11_;
         var _loc1_:Number = 2 * Math.PI * this.§_-nP§;
         var _loc2_:* = 40;
         var _loc3_:int = int(_loc1_ / _loc2_);
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc3_ = int(_loc3_ / 2) * 2;
         _loc12_;
         _loc11_;
         _loc11_;
         var _loc9_:Number = Math.PI * 2 / _loc3_;
         var _loc10_:* = 0;
         while(_loc10_ < _loc3_)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc8_ = _loc9_ * _loc10_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc4_ = Math.round(0 + Math.cos(_loc8_) * this.§_-nP§);
            _loc5_ = Math.round(0 + Math.sin(_loc8_) * this.§_-nP§);
            _loc12_;
            _loc11_;
            _loc11_;
            _loc6_ = 90 + Math.round(_loc8_ * 180 / Math.PI);
            _loc11_;
            _loc11_;
            while(true)
            {
               _loc11_;
               if(_loc6_ < 360)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc12_;
               _loc6_ = _loc6_ - 360;
            }
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc6_ >= 0)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc11_;
               _loc6_ = _loc6_ + 360;
            }
            _loc12_;
            _loc7_ = Math.floor(_loc6_ / 5);
            this.§_-05§.push(new §each §(_loc4_,_loc5_,_loc6_,_loc7_));
            _loc10_++;
         }
      }
      
      private function §_-ZF§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:§each § = null;
         var _loc3_:Sprite = null;
         _loc5_;
         _loc5_;
         if(numChildren > 0)
         {
            while(numChildren > 0)
            {
               removeChildAt(0);
               _loc4_;
               _loc4_;
            }
         }
         var _loc2_:* = 0;
         _loc4_;
         while(_loc2_ < this.§_-05§.length)
         {
            _loc1_ = this.§_-05§[_loc2_];
            _loc3_ = new §_-db§();
            _loc5_;
            _loc3_.x = _loc1_.x;
            _loc5_;
            _loc5_;
            _loc3_.y = _loc1_.y;
            _loc4_;
            _loc3_.rotation = _loc1_.angle;
            _loc5_;
            _loc5_;
            addChild(_loc3_);
            _loc4_;
            _loc2_++;
         }
      }
   }
}
