package com.funkypear.ui
{
   public class §_-SZ§ extends LobbyScreen
   {
      
      public function §_-SZ§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      private var §_-kX§:Number = 0.13;
      
      private var §_-jG§:Number = 2.8;
      
      private var §_-xn§:Number = 1;
      
      private var circle_border:CircleBorder;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         td = new ThumbnailDisplay(Global.tutorial_map);
         td.scaleX = 0.36;
         _loc2_;
         td.scaleY = 0.36;
         _loc3_;
         td.x = 300 - td.width * 0.5;
         td.y = 250 - td.height * 0.5;
         td.name = "gamezoom";
         _loc3_;
         addChild(td);
         _loc2_;
         this.circle_border = new CircleBorder(td.radius);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.circle_border.x = 600;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.circle_border.y = 600;
         _loc2_;
         _loc2_;
         this.circle_border.name = "circle_border";
         this.circle_border.alpha = 0.5;
         td.addChild(this.circle_border);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-L0§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         §_-xB§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-Yc§(null);
      }
   }
}
