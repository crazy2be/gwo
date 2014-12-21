package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-4j§ extends Sprite
   {
      
      public function §_-4j§(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         _loc3_;
         x = param1;
         y = param2;
         buttonMode = true;
         _loc3_;
         mouseEnabled = true;
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
      }
      
      private function §_-jm§(param1:MouseEvent) : void
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
         _loc2_;
         (parent as CustomWeaponPanel).§_-5Z§();
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         (parent as CustomWeaponPanel).§_-9v§();
      }
   }
}
