package com.funkypear.ui
{
   public class §_-Ig§ extends LobbyScreen
   {
      
      public function §_-Ig§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-wY§:Number = 0.13;
      
      private var § set§:Number = 2.8;
      
      private var §_-U5§:Number = 1;
      
      private var circle_border:CircleBorder;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = 800;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         td = new ThumbnailDisplay(Global.tutorial_map);
         _loc3_;
         _loc3_;
         td.scaleX = 0.36;
         td.scaleY = 0.36;
         _loc3_;
         _loc3_;
         td.x = 300 - td.width * 0.5;
         td.y = 250 - td.height * 0.5;
         td.name = "gamezoom";
         _loc2_;
         addChild(td);
         _loc2_;
         this.circle_border = new CircleBorder(td.radius);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.circle_border.x = 600;
         _loc3_;
         this.circle_border.y = 600;
         _loc3_;
         _loc2_;
         _loc2_;
         this.circle_border.name = "circle_border";
         this.circle_border.alpha = 0.5;
         td.addChild(this.circle_border);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-QO§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         §_-uZ§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-TO§(null);
      }
   }
}
