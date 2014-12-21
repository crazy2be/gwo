package com.funkypear.ui
{
   public class LS_EditorGame extends LobbyScreen
   {
      
      public function LS_EditorGame()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
         _loc3_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         td = new ThumbnailDisplay(Global.editor_test_map);
         td.x = Global.EDITOR.screen.x;
         _loc3_;
         _loc3_;
         td.y = Global.EDITOR.screen.y;
         _loc3_;
         td.name = "gamezoom";
         addChild(td);
         this.circle_border = new CircleBorder(td.radius);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.circle_border.x = 600;
         _loc3_;
         _loc3_;
         _loc3_;
         this.circle_border.y = 600;
         _loc2_;
         _loc3_;
         this.circle_border.name = "circle_border";
         _loc3_;
         _loc3_;
         this.circle_border.alpha = 0.5;
         _loc3_;
         _loc3_;
         td.addChild(this.circle_border);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         §_-Jq§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-Yc§(null);
      }
   }
}
