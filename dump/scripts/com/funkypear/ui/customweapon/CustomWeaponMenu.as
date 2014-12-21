package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import §_-vO§.§_-07§;
   
   public class CustomWeaponMenu extends Sprite
   {
      
      public function CustomWeaponMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         super();
         x = param1;
         y = param2;
         _loc4_;
         _loc4_;
         this.xpos = param1;
         _loc4_;
         _loc4_;
         this.ypos = param2;
         _loc5_;
         this.parent_holder = param3;
      }
      
      protected var parent_holder;
      
      protected var obj1:Object;
      
      protected var obj2:Object;
      
      protected var xpos:Number;
      
      protected var ypos:Number;
      
      protected var cost_x_1:Number;
      
      protected var cost_x_2:Number;
      
      public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.parent_holder.hideItemMenu();
      }
      
      public function §_-3a§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.parent_holder.doRemoveItem();
      }
      
      public function updateText() : void
      {
      }
      
      public function finishDragSlider1(param1:§_-07§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         param1.stopImmediatePropagation();
         _loc3_;
         _loc3_;
         this.obj1.item_value = param1.§_-9x§;
         _loc2_;
         _loc2_;
         this.parent_holder.updateValue1(param1.§_-9x§);
         _loc2_;
         this.updateText();
      }
      
      public function finishDragSlider2(param1:§_-07§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.stopImmediatePropagation();
         _loc2_;
         this.obj2.item_value = param1.§_-9x§;
         _loc2_;
         this.parent_holder.updateValue2(param1.§_-9x§);
         _loc3_;
         _loc3_;
         this.updateText();
      }
      
      public function updateValueText1(param1:§_-07§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.obj1.item_value = param1.§_-9x§;
         _loc2_;
         _loc2_;
         this.parent_holder.updateValue1(param1.§_-9x§);
         _loc3_;
         this.updateText();
      }
      
      public function updateValueText2(param1:§_-07§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.obj2.item_value = param1.§_-9x§;
         _loc2_;
         this.parent_holder.updateValue2(param1.§_-9x§);
         _loc3_;
         _loc3_;
         this.updateText();
      }
      
      public function getSliderMax1() : int
      {
         return this.parent_holder.getMaxValue1();
      }
      
      public function getSliderMax2() : int
      {
         return this.parent_holder.getMaxValue2();
      }
   }
}
