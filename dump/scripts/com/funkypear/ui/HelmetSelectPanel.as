package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.HelmetButton;
   
   public class HelmetSelectPanel extends Sprite
   {
      
      public function HelmetSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.helmets = new Array();
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         this.holder = new Sprite();
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:SelectBoxBackground;
      
      private var helmets:Array;
      
      private var §_-at§:§_-om§;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      public function §_-ui§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
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
         _loc6_;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc2_ >= SafeGlobal.helmetsUnlocked.length)
            {
               break;
            }
            if(SafeGlobal.helmetsUnlocked[_loc2_])
            {
               _loc1_++;
               _loc6_;
               _loc6_;
            }
            _loc2_++;
            _loc6_;
            _loc6_;
         }
         _loc5_;
         this.§_-Q0§ = new SelectBoxBackground(true);
         _loc6_;
         _loc6_;
         this.§_-Q0§.init("TEAM HELMETS",_loc1_);
         this.holder.addChild(this.§_-Q0§);
         _loc5_;
         _loc5_;
         this.start_x = -240;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         this.§_-at§ = new §_-om§();
         _loc5_;
         _loc5_;
         _loc3_ = -1;
         var _loc4_:* = 0;
         while(_loc4_ < SafeGlobal.helmetsUnlocked.length)
         {
            _loc5_;
            _loc5_;
            if(SafeGlobal.helmetsUnlocked[_loc4_])
            {
               _loc3_++;
               _loc5_;
               _loc5_;
               this.helmets.push(new HelmetButton(_loc4_));
               _loc6_;
               _loc6_;
               this.holder.addChild(this.helmets[this.helmets.length - 1]);
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               this.helmets[this.helmets.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               this.helmets[this.helmets.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               _loc5_;
               if(_loc4_ == Global.favourite_helmet.getInt())
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  this.§_-at§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc6_;
                  this.§_-at§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc4_++;
            _loc5_;
         }
         this.holder.addChild(this.§_-at§);
      }
      
      public function §_-x8§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         LP_TeamSetUp(parent).§_-hz§(param1);
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.helmets.length)
         {
            if(this.helmets[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-at§.x = this.§_-fC§(_loc2_);
               _loc3_;
               this.§_-at§.y = this.§_-87§(_loc2_);
               _loc3_;
               break;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      private function §_-fC§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         return this.start_x + (param1 + 1) % 5 * 60;
      }
      
      private function §_-87§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         return this.start_y + Math.floor((param1 + 1) / 5) * 60;
      }
      
      public function §_-2Y§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Q0§.§_-F§(Global.helmetNames[param1].toUpperCase());
      }
      
      public function §_-Ue§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Q0§.§_-F§("TEAM HELMETS");
      }
   }
}
