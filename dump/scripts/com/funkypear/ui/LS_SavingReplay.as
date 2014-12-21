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
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-BB§:Number;
      
      private var §_-AK§:§_-xD§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         x = 800;
         _loc3_;
         _loc3_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = null;
         _loc2_ = new §_-Ii§();
         _loc3_;
         _loc3_;
         _loc2_.name = "lls";
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-L0§(true);
         _loc3_;
         _loc3_;
         this.§_-BB§ = x;
         _loc3_;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-Dr§,false,0,true);
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.tweenIn();
         _loc2_;
         _loc2_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenIn();
         _loc2_;
         _loc2_;
         _loc3_;
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
         _loc1_;
         this.§_-Hl§();
      }
      
      private function §_-Hl§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-AK§ = new §_-xD§();
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         this.§_-AK§.x = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-AK§.y = 595;
         _loc2_;
         this.§_-AK§.width = 1;
         _loc2_;
         addChild(this.§_-AK§);
      }
      
      private function §_-1s§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         removeChild(this.§_-AK§);
         _loc1_;
         _loc1_;
         this.§_-AK§ = null;
      }
      
      public function §_-K6§(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-AK§.width = Math.floor(800 * param1);
      }
      
      private function §_-Dr§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-BB§ = this.§_-BB§ + 26.67;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      private function §_-A-§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-BB§ = this.§_-BB§ - 26.67;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-1s§();
         _loc3_;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-Dr§);
         _loc2_;
         _loc2_;
         §_-4y§();
      }
   }
}
