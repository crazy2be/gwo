package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-ZN§.ColourButton;
   
   public class FaveColourSelectPanel extends Sprite
   {
      
      public function FaveColourSelectPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.colours = new Array();
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         this.holder = new Sprite();
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-sD§:SelectBoxBackground;
      
      private var colours:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-jC§:§_-GI§;
      
      public function §_-lw§() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc5_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc4_;
            }
         }
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         while(true)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(_loc2_ >= SafeGlobal.coloursUnlocked.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(SafeGlobal.coloursUnlocked[_loc2_])
            {
               _loc5_;
               _loc1_++;
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         this.§_-sD§ = new SelectBoxBackground();
         _loc5_;
         _loc5_;
         this.§_-sD§.init("TEAM COLORS",_loc1_);
         _loc5_;
         _loc5_;
         this.holder.addChild(this.§_-sD§);
         _loc4_;
         this.start_x = 0;
         _loc4_;
         _loc4_;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         _loc5_;
         _loc5_;
         this.§_-jC§ = new §_-GI§();
         _loc5_;
         _loc5_;
         _loc3_ = -1;
         _loc5_;
         _loc2_ = 0;
         _loc5_;
         _loc5_;
         while(_loc2_ < SafeGlobal.coloursUnlocked.length)
         {
            _loc5_;
            if(SafeGlobal.coloursUnlocked[_loc2_])
            {
               _loc3_++;
               _loc4_;
               _loc5_;
               this.colours.push(new ColourButton(_loc2_));
               this.holder.addChild(this.colours[this.colours.length - 1]);
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.colours[this.colours.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               _loc5_;
               _loc5_;
               this.colours[this.colours.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               if(_loc2_ == Global.favourite_colour.getInt())
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.§_-jC§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc4_;
                  this.§_-jC§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
                  _loc4_;
                  _loc4_;
               }
            }
            _loc2_++;
         }
         _loc4_;
         this.holder.addChild(this.§_-jC§);
      }
      
      public function selectColour(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         LP_TeamSetUp(parent).§_-s6§(param1);
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.colours.length)
         {
            if(this.colours[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               this.§_-jC§.x = this.§_-3x§(_loc2_);
               _loc3_;
               this.§_-jC§.y = this.§_-7o§(_loc2_);
               _loc3_;
               _loc3_;
               break;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      private function §_-3x§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-7o§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-O1§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-sD§.§_-b6§(Global.colourNames[param1]);
      }
      
      public function §_-RC§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-sD§.§_-b6§("TEAM COLORS");
      }
   }
}
