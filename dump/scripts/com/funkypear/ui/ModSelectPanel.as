package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.§_-2T§;
   
   public class ModSelectPanel extends Sprite
   {
      
      public function ModSelectPanel(param1:*)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.§_-91§ = param1;
         _loc2_;
         _loc2_;
         this.holder = new Sprite();
         _loc3_;
         addChild(this.holder);
      }
      
      private var §_-Q0§:ModSelectBoxBackground;
      
      private var mods:Array;
      
      private var §_-91§;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var holder:Sprite;
      
      private var §_-at§:§_-om§;
      
      public function §_-qs§(param1:Array = null) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc7_;
               _loc7_;
            }
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc8_;
            if(_loc3_ >= SafeGlobal.modsUnlocked.length)
            {
               break;
            }
            if(SafeGlobal.modsUnlocked[_loc3_])
            {
               _loc8_;
               _loc8_;
               if(this.§_-Xk§(_loc3_,param1))
               {
                  _loc7_;
                  _loc7_;
                  _loc2_++;
               }
            }
            _loc3_++;
         }
         _loc8_;
         _loc8_;
         _loc2_++;
         _loc7_;
         _loc7_;
         this.§_-Q0§ = new ModSelectBoxBackground();
         this.§_-Q0§.init("GAME MODS",_loc2_);
         this.holder.addChild(this.§_-Q0§);
         this.start_x = -300;
         _loc8_;
         _loc8_;
         this.start_y = 0 - (Math.ceil(_loc2_ / 5) - 1) * 60;
         _loc7_;
         _loc7_;
         this.mods = new Array();
         var _loc4_:* = -1;
         var _loc5_:* = false;
         var _loc6_:* = -1;
         _loc8_;
         _loc8_;
         while(_loc6_ < 9)
         {
            _loc8_;
            _loc7_;
            _loc7_;
            if(_loc6_ == -1)
            {
               _loc8_;
               _loc8_;
               _loc4_++;
               _loc8_;
               this.mods.push(new §_-2T§(_loc6_));
               this.holder.addChild(this.mods[this.mods.length - 1]);
               _loc7_;
               this.mods[this.mods.length - 1].x = this.start_x + _loc4_ % 5 * 60;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               this.mods[this.mods.length - 1].y = this.start_y + Math.floor(_loc4_ / 5) * 60;
               _loc8_;
               _loc8_;
               this.mods[this.mods.length - 1].scaleX = 0.9;
               _loc8_;
               _loc8_;
               _loc8_;
               this.mods[this.mods.length - 1].scaleY = 0.9;
            }
            else if(SafeGlobal.modsUnlocked[_loc6_])
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = this.§_-Xk§(_loc6_,param1);
               if(_loc5_)
               {
                  _loc7_;
                  _loc4_++;
                  this.mods.push(new §_-2T§(_loc6_));
                  _loc8_;
                  _loc8_;
                  this.holder.addChild(this.mods[this.mods.length - 1]);
                  this.mods[this.mods.length - 1].x = this.start_x + _loc4_ % 5 * 60;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  this.mods[this.mods.length - 1].y = this.start_y + Math.floor(_loc4_ / 5) * 60;
                  _loc7_;
                  _loc7_;
                  this.mods[this.mods.length - 1].scaleX = 0.9;
                  this.mods[this.mods.length - 1].scaleY = 0.9;
               }
            }
            
            _loc6_++;
         }
      }
      
      public function §_-Xk§(param1:int, param2:Array = null) : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         if(param2 == null)
         {
            _loc4_;
            return true;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.length)
         {
            if(param2[_loc3_] == param1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               return false;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         return true;
      }
      
      public function §_-uR§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-91§.finishSelectMod(param1);
      }
      
      public function §_-yu§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1 == -1)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            this.§_-Q0§.§_-F§("NONE");
            _loc3_;
         }
         else
         {
            this.§_-Q0§.§_-F§(Global.modNames[param1].toUpperCase());
         }
      }
      
      public function §_-LP§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Q0§.§_-F§("GAME MODS");
      }
   }
}
