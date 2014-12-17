package com.funkypear.ui
{
   public class §_-iB§ extends LobbyScreen
   {
      
      public function §_-iB§()
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         x = 0;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         td = new ThumbnailDisplay(SafeGlobal.selected_level.thumbnail);
         _loc3_;
         td.scaleX = 0.36;
         td.scaleY = 0.36;
         _loc2_;
         _loc2_;
         td.x = Global.large_thumbnail_x - td.width * 0.5;
         _loc2_;
         _loc2_;
         td.y = Global.large_thumbnail_y - td.height * 0.5;
         td.name = "gamezoom";
         addChild(td);
         this.circle_border = new CircleBorder(td.radius);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         this.circle_border.x = 600;
         _loc3_;
         this.circle_border.y = 600;
         _loc3_;
         _loc3_;
         this.circle_border.name = "circle_border";
         this.circle_border.alpha = 0.5;
         _loc2_;
         td.addChild(this.circle_border);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         tweenIntoGame();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenOut();
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_stats.tweenOut();
         _loc3_;
         _loc3_;
         Global.lobby_display.logo.tweenOut();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-TO§(null);
      }
   }
}
