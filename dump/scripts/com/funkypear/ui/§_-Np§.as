package com.funkypear.ui
{
   public class §_-Np§ extends LobbyScreen
   {
      
      public function §_-Np§()
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
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         td = new ThumbnailDisplay(Global.tutorial_map);
         _loc3_;
         td.scaleX = 0.36;
         td.scaleY = 0.36;
         td.x = 300 - td.width * 0.5;
         td.y = 250 - td.height * 0.5;
         _loc2_;
         td.name = "gamezoom";
         _loc3_;
         addChild(td);
         this.circle_border = new CircleBorder(td.radius);
         _loc2_;
         _loc2_;
         _loc3_;
         this.circle_border.x = 600;
         _loc2_;
         _loc2_;
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
         _loc2_;
         §_-L0§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         Global.lobby_display.lobby_menu.tweenOut();
         _loc2_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc2_;
         _loc2_;
         Global.lobby_display.logo.tweenOut();
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         §_-gi§();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-Yc§(null);
      }
   }
}
