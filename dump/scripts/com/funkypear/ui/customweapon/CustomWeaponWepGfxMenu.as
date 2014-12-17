package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-ZN§.CustomWeaponWepGfxButton;
   
   public class CustomWeaponWepGfxMenu extends Sprite
   {
      
      public function CustomWeaponWepGfxMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
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
      
      public var §_-xo§:MovieClip;
      
      public var §_-RE§:MovieClip;
      
      public var §_-Ah§:MovieClip;
      
      public var §_-ua§:MovieClip;
      
      public var §_-W-§:MovieClip;
      
      public var §_-Xp§:MovieClip;
      
      private var parent_holder;
      
      private var buttons:Array;
      
      private var id:int = 0;
      
      private var §_-jC§:§_-GI§;
      
      public function init(param1:Array) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:* = 0;
         var _loc7_:CustomWeaponWepGfxButton = null;
         var _loc2_:int = Math.ceil(param1.length / 5);
         _loc9_;
         if(_loc2_ == 1)
         {
            this.§_-xo§.visible = false;
            _loc9_;
            this.§_-W-§.visible = false;
            this.§_-Xp§.y = 57;
            this.§_-ua§.y = 57;
            _loc8_;
            _loc8_;
         }
         else
         {
            this.§_-xo§.height = (_loc2_ - 1) * 60;
            _loc8_;
            this.§_-W-§.height = (_loc2_ - 1) * 60;
            this.§_-Xp§.y = 57 + this.§_-xo§.height;
            this.§_-ua§.y = 57 + this.§_-W-§.height;
         }
         this.buttons = new Array();
         this.§_-jC§ = new §_-GI§();
         _loc9_;
         _loc9_;
         _loc3_ = -1;
         var _loc4_:Number = 60;
         var _loc5_:int = this.parent_holder.getColour();
         var _loc6_:* = 0;
         while(_loc6_ < param1.length)
         {
            _loc3_++;
            _loc9_;
            _loc9_;
            _loc7_ = new CustomWeaponWepGfxButton(param1[_loc6_],_loc5_);
            _loc9_;
            _loc9_;
            this.buttons.push(_loc7_);
            addChild(this.buttons[this.buttons.length - 1]);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc9_;
            this.buttons[this.buttons.length - 1].x = _loc4_ + _loc3_ % 5 * 60;
            _loc9_;
            _loc9_;
            this.buttons[this.buttons.length - 1].y = Math.floor(_loc3_ / 5) * 60;
            _loc8_;
            if(param1[_loc6_] == this.parent_holder.getWepGfx())
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc8_;
               this.§_-jC§.x = _loc4_ + _loc3_ % 5 * 60;
               _loc8_;
               _loc8_;
               this.§_-jC§.y = Math.floor(_loc3_ / 5) * 60;
               _loc8_;
            }
            _loc6_++;
         }
         _loc9_;
         addChild(this.§_-jC§);
      }
      
      public function §_-8H§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.id = param1;
      }
      
      public function §_-QH§() : int
      {
         return this.id;
      }
      
      public function §try §(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.parent_holder.selectMenuItem(param1);
      }
   }
}
