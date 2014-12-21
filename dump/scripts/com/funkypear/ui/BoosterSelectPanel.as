package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.BoosterButton;
   
   public class BoosterSelectPanel extends Sprite
   {
      
      public function BoosterSelectPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Se§ = new Array();
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         this.holder = new Sprite();
         _loc2_;
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:SelectBoxBackground;
      
      private var §_-Se§:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-at§:§_-om§;
      
      public function §_-y3§() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc5_;
            }
         }
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         while(true)
         {
            _loc5_;
            _loc4_;
            if(_loc2_ >= SafeGlobal.§_-f0§.length)
            {
               break;
            }
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc2_ == 0 || SafeGlobal.§_-f0§[_loc2_].getInt() > 0)
            {
               _loc4_;
               _loc1_++;
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
         this.§_-Q0§ = new SelectBoxBackground(true);
         _loc5_;
         this.§_-Q0§.init("TEAM BOOSTER",_loc1_);
         _loc4_;
         this.holder.addChild(this.§_-Q0§);
         _loc5_;
         _loc5_;
         this.start_x = -240;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         _loc4_;
         this.§_-at§ = new §_-om§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = -1;
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         _loc4_;
         _loc4_;
         while(_loc2_ < SafeGlobal.§_-f0§.length)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            if(_loc2_ == 0 || SafeGlobal.§_-f0§[_loc2_].getInt() > 0)
            {
               _loc4_;
               _loc3_++;
               _loc5_;
               this.§_-Se§.push(new BoosterButton(_loc2_));
               this.holder.addChild(this.§_-Se§[this.§_-Se§.length - 1]);
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-Se§[this.§_-Se§.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               this.§_-Se§[this.§_-Se§.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               if(_loc2_ == SafeGlobal.§_-eN§.getInt())
               {
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  this.§_-at§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc4_;
                  _loc4_;
                  this.§_-at§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc2_++;
         }
         this.holder.addChild(this.§_-at§);
      }
      
      public function §_-0-C§(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         LP_TeamSetUp(parent).§_-g6§(param1);
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.§_-Se§.length)
         {
            if(this.§_-Se§[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               _loc4_;
               this.§_-at§.x = this.§_-fC§(_loc2_);
               _loc4_;
               this.§_-at§.y = this.§_-87§(_loc2_);
               _loc4_;
               break;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      private function §_-fC§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-87§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-Zb§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Q0§.§_-F§(SafeGlobal.§_-s9§[param1]);
      }
      
      public function §_-E4§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Q0§.§_-F§("TEAM BOOSTER");
      }
   }
}
