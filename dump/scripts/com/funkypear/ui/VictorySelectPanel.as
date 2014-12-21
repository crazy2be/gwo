package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.VictoryButton;
   
   public class VictorySelectPanel extends Sprite
   {
      
      public function VictorySelectPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.anims = new Array();
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.holder = new Sprite();
         _loc2_;
         _loc2_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:SelectBoxBackground;
      
      private var anims:Array;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-at§:§_-om§;
      
      public function §_-Ft§() : void
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
            if(_loc2_ >= SafeGlobal.victoryAnimsUnlocked.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(SafeGlobal.victoryAnimsUnlocked[_loc2_])
            {
               _loc1_++;
            }
            _loc2_++;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         this.§_-Q0§ = new SelectBoxBackground();
         this.§_-Q0§.init("VICTORY ANIMATIONS",_loc1_);
         this.holder.addChild(this.§_-Q0§);
         _loc5_;
         _loc5_;
         this.start_x = 0;
         this.start_y = 0 - Math.ceil(_loc1_ / 5) * 60;
         this.§_-at§ = new §_-om§();
         _loc4_;
         _loc5_;
         _loc3_ = -1;
         _loc5_;
         _loc2_ = 0;
         while(_loc2_ < SafeGlobal.victoryAnimsUnlocked.length)
         {
            _loc4_;
            if(SafeGlobal.victoryAnimsUnlocked[_loc2_])
            {
               _loc4_;
               _loc4_;
               _loc3_++;
               _loc5_;
               this.anims.push(new VictoryButton(_loc2_));
               this.holder.addChild(this.anims[this.anims.length - 1]);
               _loc4_;
               _loc5_;
               _loc5_;
               this.anims[this.anims.length - 1].x = this.start_x + _loc3_ % 5 * 60;
               _loc4_;
               this.anims[this.anims.length - 1].y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               _loc5_;
               if(_loc2_ == Global.anim_victory.getInt())
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  this.§_-at§.x = this.start_x + _loc3_ % 5 * 60;
                  _loc5_;
                  _loc5_;
                  this.§_-at§.y = this.start_y + Math.floor(_loc3_ / 5) * 60;
               }
            }
            _loc2_++;
         }
         _loc5_;
         _loc5_;
         this.holder.addChild(this.§_-at§);
      }
      
      public function §_-2C§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         LP_TeamSetUp(parent).§_-XH§(param1);
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.anims.length)
         {
            if(this.anims[_loc2_].id == param1)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-at§.x = this.§_-fC§(_loc2_);
               _loc4_;
               _loc4_;
               this.§_-at§.y = this.§_-87§(_loc2_);
               _loc4_;
               _loc4_;
               break;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      private function §_-fC§(param1:int) : Number
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
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
      
      public function §_-46§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Q0§.§_-F§(Global.victoryNames[param1]);
      }
      
      public function §_-25§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-Q0§.§_-F§("VICTORY ANIMATIONS");
      }
   }
}
