package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-ZN§.IdleButton;
   
   public class IdleSelectPanel extends Sprite
   {
      
      public function IdleSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.anims = new Array();
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         this.holder = new Sprite();
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-sD§:SelectBoxBackground;
      
      var anims:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-jC§:§_-GI§;
      
      public function §_-C1§(param1:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         _loc6_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc5_;
            }
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc6_;
            _loc5_;
            if(_loc3_ >= SafeGlobal.idleAnimsUnlocked.length)
            {
               break;
            }
            _loc6_;
            _loc5_;
            if(SafeGlobal.idleAnimsUnlocked[_loc3_])
            {
               _loc2_++;
               _loc6_;
               _loc6_;
            }
            _loc3_++;
         }
         this.§_-sD§ = new SelectBoxBackground();
         this.§_-sD§.init("IDLE ANIMATIONS",_loc2_);
         this.holder.addChild(this.§_-sD§);
         this.start_x = 0;
         this.start_y = 0 - Math.ceil(_loc2_ / 5) * 60;
         _loc5_;
         this.§_-jC§ = new §_-GI§();
         _loc5_;
         _loc6_;
         _loc4_ = -1;
         _loc5_;
         _loc3_ = 0;
         _loc6_;
         while(_loc3_ < SafeGlobal.idleAnimsUnlocked.length)
         {
            _loc6_;
            _loc6_;
            if(SafeGlobal.idleAnimsUnlocked[_loc3_])
            {
               _loc4_++;
               _loc6_;
               this.anims.push(new IdleButton(_loc3_,param1));
               this.holder.addChild(this.anims[this.anims.length - 1]);
               _loc5_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               this.anims[this.anims.length - 1].x = this.start_x + _loc4_ % 5 * 60;
               this.anims[this.anims.length - 1].y = this.start_y + Math.floor(_loc4_ / 5) * 60;
               _loc5_;
               _loc6_;
               _loc5_;
               _loc5_;
               if(_loc3_ == Global.anim_idle[param1].getInt())
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  this.§_-jC§.x = this.start_x + _loc4_ % 5 * 60;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  this.§_-jC§.y = this.start_y + Math.floor(_loc4_ / 5) * 60;
               }
            }
            _loc3_++;
         }
         _loc6_;
         this.holder.addChild(this.§_-jC§);
      }
      
      public function §_-ez§(param1:int, param2:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         LP_TeamSetUp(parent).§_-fC§(param1,param2);
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.anims.length)
         {
            if(this.anims[_loc3_].id == param1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-jC§.x = this.§_-3x§(_loc3_);
               _loc4_;
               _loc4_;
               this.§_-jC§.y = this.§_-7o§(_loc3_);
               _loc5_;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc4_;
         }
      }
      
      private function §_-3x§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
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
      
      public function §_-Ew§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-sD§.§_-b6§(Global.idleNames[param1]);
      }
      
      public function §_-YQ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-sD§.§_-b6§("IDLE ANIMATIONS");
      }
   }
}
