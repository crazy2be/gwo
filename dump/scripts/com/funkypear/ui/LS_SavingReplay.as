package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class LS_SavingReplay extends LobbyScreen
   {
      
      public function LS_SavingReplay()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-rk§:Number;
      
      private var §_-jk§:§_-AV§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = null;
         _loc2_ = new §_-4Y§();
         _loc4_;
         _loc2_.name = "lls";
         _loc4_;
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         §_-QO§(true);
         _loc2_;
         _loc2_;
         this.§_-rk§ = x;
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-a§,false,0,true);
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.tweenIn();
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenIn();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenIn();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.logo.tweenIn();
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_players.tweenInFromEditor();
      }
      
      override public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.lobby_client.submitReplaySave(Global.save_replay_id,Global.save_replay_turn_id);
         _loc2_;
         this.§_-VQ§();
      }
      
      private function §_-VQ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-jk§ = new §_-AV§();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-jk§.x = 0;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-jk§.y = 595;
         _loc2_;
         _loc2_;
         this.§_-jk§.width = 1;
         _loc1_;
         _loc1_;
         addChild(this.§_-jk§);
      }
      
      private function §_-pz§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         removeChild(this.§_-jk§);
         _loc1_;
         this.§_-jk§ = null;
      }
      
      public function §_-6m§(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-jk§.width = Math.floor(800 * param1);
      }
      
      private function §_-a§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      private function §_-fF§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-rk§ = this.§_-rk§ - 26.67;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-pz§();
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-a§);
         _loc3_;
         _loc3_;
         §_-j6§();
      }
   }
}
