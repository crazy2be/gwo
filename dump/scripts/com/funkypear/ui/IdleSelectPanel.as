package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.IdleButton;
   
   public class IdleSelectPanel extends Sprite
   {
      
      public function IdleSelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.anims = new Array();
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         this.holder = new Sprite();
         _loc2_;
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:SelectBoxBackground;
      
      var anims:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-at§:§_-om§;
      
      public function §_-Ft§(param1:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         _loc5_;
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
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(_loc3_ >= SafeGlobal.idleAnimsUnlocked.length)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(SafeGlobal.idleAnimsUnlocked[_loc3_])
            {
               _loc5_;
               _loc2_++;
            }
            _loc3_++;
            _loc6_;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         this.§_-Q0§ = new SelectBoxBackground();
         this.§_-Q0§.init("IDLE ANIMATIONS",_loc2_);
         _loc6_;
         _loc6_;
         this.holder.addChild(this.§_-Q0§);
         this.start_x = 0;
         this.start_y = 0 - Math.ceil(_loc2_ / 5) * 60;
         this.§_-at§ = new §_-om§();
         _loc6_;
         _loc6_;
         _loc4_ = -1;
         _loc6_;
         _loc6_;
         _loc3_ = 0;
         _loc5_;
         _loc5_;
         while(_loc3_ < SafeGlobal.idleAnimsUnlocked.length)
         {
            _loc6_;
            _loc6_;
            if(SafeGlobal.idleAnimsUnlocked[_loc3_])
            {
               _loc5_;
               _loc5_;
               _loc4_++;
               _loc6_;
               _loc6_;
               _loc6_;
               this.anims.push(new IdleButton(_loc3_,param1));
               this.holder.addChild(this.anims[this.anims.length - 1]);
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.anims[this.anims.length - 1].x = this.start_x + _loc4_ % 5 * 60;
               this.anims[this.anims.length - 1].y = this.start_y + Math.floor(_loc4_ / 5) * 60;
               _loc5_;
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
                  _loc5_;
                  this.§_-at§.x = this.start_x + _loc4_ % 5 * 60;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  this.§_-at§.y = this.start_y + Math.floor(_loc4_ / 5) * 60;
               }
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         this.holder.addChild(this.§_-at§);
      }
      
      public function §_-2C§(param1:int, param2:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc4_;
         LP_TeamSetUp(parent).§_-9r§(param1,param2);
         _loc5_;
         _loc5_;
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
               this.§_-at§.x = this.§_-fC§(_loc3_);
               _loc4_;
               this.§_-at§.y = this.§_-87§(_loc3_);
               _loc4_;
               break;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
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
      
      public function §_-qN§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Q0§.§_-F§(Global.idleNames[param1]);
      }
      
      public function §_-8-§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Q0§.§_-F§("IDLE ANIMATIONS");
      }
   }
}
