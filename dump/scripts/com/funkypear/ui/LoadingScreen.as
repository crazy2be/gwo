package com.funkypear.ui
{
   import flash.display.Sprite;
   
   public class LoadingScreen extends Sprite
   {
      
      public function LoadingScreen()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         Global.loading_screen = this;
         _loc2_;
         this.hideMe();
      }
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         visible = true;
         _loc1_;
         SafeGlobal.TIMELINE.bringToFront(this);
      }
      
      public function hideMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         visible = false;
      }
   }
}
