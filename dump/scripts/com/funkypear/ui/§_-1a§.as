package com.funkypear.ui
{
   public class §_-1a§ extends LobbyScreen
   {
      
      public function §_-1a§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var anim:§_-mW§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.anim = new §_-mW§();
         _loc3_;
         _loc3_;
         addChild(this.anim);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-L0§();
      }
      
      public function §_-ud§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.lobby_display.displayNextIntroAnim();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         §_-4y§();
      }
   }
}
