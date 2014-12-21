package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.ColourButton;
   
   public class FaveColourSelectPanel extends Sprite
   {
      
      public function FaveColourSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.colours = new Array();
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         this.holder = new Sprite();
         _loc1_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:SelectBoxBackground;
      
      private var colours:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-at§:§_-om§;
      
      public function §_-Vw§() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
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
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc2_ >= SafeGlobal.coloursUnlocked.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            if(SafeGlobal.coloursUnlocked[_loc2_])
            {
               _loc1_++;
            }
            _loc2_++;
         }
         this.§_-Q0§ = new SelectBoxBackground();
         _loc5_;
         this.§_-Q0§.init("TEAM COLORS",_loc1_);
         this.holder.addChild(this.§_-Q0§);
         this.start_x = 0;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         this.§_-at§ = new §_-om§();
         _loc5_;
         _loc5_;
         _loc3_ = -1;
         _loc5_;
         _loc2_ = 0;
         _loc5_;
         while(_loc2_ < SafeGlobal.coloursUnlocked.length)
         {
            _loc5_;
            if(SafeGlobal.coloursUnlocked[_loc2_])
            {
               _loc3_++;
               _loc4_;
               this.colours.push(new ColourButton(_loc2_));
               this.holder.addChild(this.colours[this.colours.length - 1]);
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.colours[this.colours.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               _loc5_;
               this.colours[this.colours.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               _loc5_;
               if(_loc2_ == Global.favourite_colour.getInt())
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.§_-at§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  this.§_-at§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         this.holder.addChild(this.§_-at§);
      }
      
      public function selectColour(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         LP_TeamSetUp(parent).§_-Fr§(param1);
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.colours.length)
         {
            if(this.colours[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc4_;
               this.§_-at§.x = this.§_-fC§(_loc2_);
               _loc4_;
               this.§_-at§.y = this.§_-87§(_loc2_);
               _loc4_;
               break;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      private function §_-fC§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-87§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-7§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Q0§.§_-F§(Global.colourNames[param1]);
      }
      
      public function §_-Jr§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Q0§.§_-F§("TEAM COLORS");
      }
   }
}
