package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-ZN§.HelmetButton;
   
   public class HelmetSelectPanel extends Sprite
   {
      
      public function HelmetSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.helmets = new Array();
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         this.holder = new Sprite();
         _loc1_;
         addChild(this.holder);
      }
      
      private var §_-sD§:SelectBoxBackground;
      
      private var helmets:Array;
      
      private var §_-jC§:§_-GI§;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      public function §_-aP§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         _loc6_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
         }
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc5_;
            if(_loc2_ >= SafeGlobal.helmetsUnlocked.length)
            {
               break;
            }
            if(SafeGlobal.helmetsUnlocked[_loc2_])
            {
               _loc6_;
               _loc1_++;
               _loc6_;
               _loc6_;
            }
            _loc2_++;
         }
         _loc6_;
         _loc6_;
         this.§_-sD§ = new SelectBoxBackground(true);
         this.§_-sD§.init("TEAM HELMETS",_loc1_);
         this.holder.addChild(this.§_-sD§);
         this.start_x = -240;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         this.§_-jC§ = new §_-GI§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = -1;
         var _loc4_:* = 0;
         _loc5_;
         while(_loc4_ < SafeGlobal.helmetsUnlocked.length)
         {
            _loc5_;
            if(SafeGlobal.helmetsUnlocked[_loc4_])
            {
               _loc6_;
               _loc6_;
               _loc3_++;
               _loc5_;
               this.helmets.push(new HelmetButton(_loc4_));
               this.holder.addChild(this.helmets[this.helmets.length - 1]);
               _loc5_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.helmets[this.helmets.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               this.helmets[this.helmets.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc6_;
               _loc6_;
               _loc5_;
               if(_loc4_ == Global.favourite_helmet.getInt())
               {
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  this.§_-jC§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc6_;
                  _loc5_;
                  this.§_-jC§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc4_++;
         }
         this.holder.addChild(this.§_-jC§);
      }
      
      public function §_-7F§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         LP_TeamSetUp(parent).§ do§(param1);
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.helmets.length)
         {
            if(this.helmets[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-jC§.x = this.§_-3x§(_loc2_);
               _loc3_;
               _loc3_;
               this.§_-jC§.y = this.§_-7o§(_loc2_);
               _loc4_;
               break;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      private function §_-3x§(param1:int) : Number
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-7o§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-2y§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-sD§.§_-b6§(Global.helmetNames[param1].toUpperCase());
      }
      
      public function §_-P5§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-sD§.§_-b6§("TEAM HELMETS");
      }
   }
}
