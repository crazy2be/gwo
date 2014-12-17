package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-bD§ extends Sprite
   {
      
      public function §_-bD§(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super();
         _loc3_;
         x = param1;
         _loc3_;
         y = param2;
         buttonMode = true;
         _loc3_;
         mouseEnabled = true;
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
      }
      
      private function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         (parent as CustomWeaponPanel).removePanel();
      }
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         (parent as CustomWeaponPanel).§_-vG§();
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         (parent as CustomWeaponPanel).§_-0-3§();
      }
   }
}
