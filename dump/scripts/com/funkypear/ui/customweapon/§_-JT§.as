package com.funkypear.ui.customweapon
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §_-JT§ extends MovieClip
   {
      
      public function §_-JT§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
         mouseEnabled = true;
         _loc2_;
         mouseChildren = false;
         _loc2_;
         _loc2_;
         buttonMode = true;
         _loc2_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc1_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc2_;
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         _loc2_;
         _loc2_;
         stop();
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      private function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         stop();
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         gotoAndStop("over");
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         gotoAndStop("up");
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         (parent as CustomWeaponMenu).doClose();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
