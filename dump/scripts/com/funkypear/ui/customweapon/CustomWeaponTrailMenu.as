package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-bY§.CustomWeaponTrailButton;
   
   public class CustomWeaponTrailMenu extends Sprite
   {
      
      public function CustomWeaponTrailMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc5_;
         _loc5_;
         x = param1;
         _loc5_;
         _loc5_;
         y = param2;
         _loc5_;
         _loc5_;
         this.parent_holder = param3;
      }
      
      public var §_-7l§:MovieClip;
      
      public var §_-Id§:MovieClip;
      
      public var §_-sN§:MovieClip;
      
      public var §_-eb§:MovieClip;
      
      public var §_-oC§:MovieClip;
      
      public var §_-Xm§:MovieClip;
      
      private var parent_holder;
      
      private var buttons:Array;
      
      private var id:int = 0;
      
      private var §_-at§:§_-om§;
      
      public function init(param1:Array) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:* = 0;
         var _loc7_:CustomWeaponTrailButton = null;
         var _loc2_:int = Math.ceil(param1.length / 5);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if(_loc2_ == 1)
         {
            _loc8_;
            _loc8_;
            this.§_-7l§.visible = false;
            _loc8_;
            _loc8_;
            this.§_-oC§.visible = false;
            this.§_-Xm§.y = 57;
            _loc9_;
            this.§_-eb§.y = 57;
         }
         else
         {
            this.§_-7l§.height = (_loc2_ - 1) * 60;
            this.§_-oC§.height = (_loc2_ - 1) * 60;
            this.§_-Xm§.y = 57 + this.§_-7l§.height;
            this.§_-eb§.y = 57 + this.§_-oC§.height;
            _loc8_;
         }
         this.buttons = new Array();
         this.§_-at§ = new §_-om§();
         _loc8_;
         _loc8_;
         _loc3_ = -1;
         var _loc4_:Number = 60;
         var _loc5_:Array = this.parent_holder.getColours();
         var _loc6_:* = 0;
         while(_loc6_ < param1.length)
         {
            _loc3_++;
            _loc8_;
            _loc7_ = new CustomWeaponTrailButton(param1[_loc6_],_loc5_);
            _loc9_;
            _loc9_;
            this.buttons.push(_loc7_);
            _loc9_;
            _loc9_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            this.buttons[this.buttons.length - 1].x = _loc4_ + _loc3_ % 5 * 60;
            this.buttons[this.buttons.length - 1].y = Math.floor(_loc3_ / 5) * 60;
            if(_loc6_ == this.parent_holder.getTrailId())
            {
               _loc9_;
               _loc9_;
               _loc8_;
               _loc9_;
               _loc8_;
               _loc8_;
               this.§_-at§.x = _loc4_ + _loc3_ % 5 * 60;
               _loc9_;
               this.§_-at§.y = Math.floor(_loc3_ / 5) * 60;
            }
            _loc6_++;
         }
         _loc8_;
         _loc8_;
         addChild(this.§_-at§);
      }
      
      public function §_-8E§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.id = param1;
      }
      
      public function §_-JB§() : int
      {
         return this.id;
      }
      
      public function §_-cD§(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.parent_holder.selectMenuItem(param1);
      }
   }
}
