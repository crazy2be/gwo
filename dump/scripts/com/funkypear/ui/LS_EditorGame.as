package com.funkypear.ui
{
   public class LS_EditorGame extends LobbyScreen
   {
      
      public function LS_EditorGame()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
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
         _loc2_;
         x = 0;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         td = new ThumbnailDisplay(Global.editor_test_map);
         _loc3_;
         td.x = Global.EDITOR.screen.x;
         _loc2_;
         _loc2_;
         td.y = Global.EDITOR.screen.y;
         td.name = "gamezoom";
         addChild(td);
         _loc3_;
         this.circle_border = new CircleBorder(td.radius);
         _loc2_;
         _loc2_;
         _loc2_;
         this.circle_border.x = 600;
         _loc3_;
         _loc3_;
         this.circle_border.y = 600;
         _loc3_;
         this.circle_border.name = "circle_border";
         this.circle_border.alpha = 0.5;
         td.addChild(this.circle_border);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-1a§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
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
