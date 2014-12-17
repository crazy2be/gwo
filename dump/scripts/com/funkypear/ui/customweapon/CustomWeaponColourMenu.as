package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import §_-ZN§.§_-X9§;
   
   public class CustomWeaponColourMenu extends Sprite
   {
      
      public function CustomWeaponColourMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         x = param1;
         _loc4_;
         y = param2;
         _loc4_;
         this.parent_holder = param3;
      }
      
      private var parent_holder;
      
      private var buttons:Array;
      
      private var id:int = 0;
      
      private var §_-jC§:§_-6x§;
      
      public function init(param1:Array) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc5_:§_-X9§ = null;
         _loc7_;
         this.buttons = new Array();
         _loc7_;
         _loc7_;
         this.§_-jC§ = new §_-6x§();
         _loc6_;
         _loc7_;
         _loc2_ = -1;
         var _loc3_:Number = 30;
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_++;
            _loc7_;
            _loc7_;
            _loc5_ = new §_-X9§(param1[_loc4_],_loc4_);
            _loc6_;
            _loc6_;
            this.buttons.push(_loc5_);
            _loc7_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc6_;
            _loc6_;
            _loc7_;
            _loc6_;
            _loc6_;
            this.buttons[this.buttons.length - 1].x = _loc3_ + _loc2_ % 9 * 30;
            _loc7_;
            this.buttons[this.buttons.length - 1].y = Math.floor(_loc2_ / 9) * 30;
            if(_loc4_ == this.parent_holder.getColour(this.id))
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.§_-jC§.x = _loc3_ + _loc2_ % 9 * 30;
               _loc6_;
               _loc6_;
               this.§_-jC§.y = Math.floor(_loc2_ / 9) * 30;
            }
            _loc4_++;
         }
         _loc6_;
         _loc6_;
         addChild(this.§_-jC§);
      }
      
      public function §_-8H§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.parent_holder.selectColour(param1,this.id);
      }
   }
}
