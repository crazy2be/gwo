package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-ZN§.BoosterButton;
   
   public class BoosterSelectPanel extends Sprite
   {
      
      public function BoosterSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-mP§ = new Array();
         _loc1_;
         super();
         _loc1_;
         this.holder = new Sprite();
         _loc1_;
         addChild(this.holder);
      }
      
      private var §_-sD§:SelectBoxBackground;
      
      private var §_-mP§:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-jC§:§_-GI§;
      
      public function §_-8-§() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc4_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc5_;
               _loc5_;
            }
         }
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc2_ >= SafeGlobal.§_-QC§.length)
            {
               break;
            }
            _loc4_;
            _loc5_;
            _loc5_;
            if(_loc2_ == 0 || SafeGlobal.§_-QC§[_loc2_].getInt() > 0)
            {
               _loc1_++;
               _loc5_;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         this.§_-sD§ = new SelectBoxBackground(true);
         _loc5_;
         _loc5_;
         this.§_-sD§.init("TEAM BOOSTER",_loc1_);
         _loc5_;
         this.holder.addChild(this.§_-sD§);
         _loc5_;
         _loc5_;
         this.start_x = -240;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         _loc4_;
         _loc4_;
         this.§_-jC§ = new §_-GI§();
         _loc4_;
         _loc4_;
         _loc3_ = -1;
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < SafeGlobal.§_-QC§.length)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            if(_loc2_ == 0 || SafeGlobal.§_-QC§[_loc2_].getInt() > 0)
            {
               _loc3_++;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-mP§.push(new BoosterButton(_loc2_));
               this.holder.addChild(this.§_-mP§[this.§_-mP§.length - 1]);
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-mP§[this.§_-mP§.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               this.§_-mP§[this.§_-mP§.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               _loc5_;
               _loc4_;
               if(_loc2_ == SafeGlobal.§_-Ds§.getInt())
               {
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  this.§_-jC§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  this.§_-jC§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc2_++;
         }
         this.holder.addChild(this.§_-jC§);
      }
      
      public function §_-7J§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         LP_TeamSetUp(parent).§_-zW§(param1);
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.§_-mP§.length)
         {
            if(this.§_-mP§[_loc2_].id == param1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-jC§.x = this.§_-3x§(_loc2_);
               _loc4_;
               this.§_-jC§.y = this.§_-7o§(_loc2_);
               _loc4_;
               _loc4_;
               break;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      private function §_-3x§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-7o§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-OA§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-sD§.§_-b6§(SafeGlobal.§_-O9§[param1]);
      }
      
      public function §_-0n§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-sD§.§_-b6§("TEAM BOOSTER");
      }
   }
}
