package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-d8§ extends SimpleButton
   {
      
      public function §_-d8§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.save_replay_id = SafeGlobal.selected_level.slot_id;
         _loc2_;
         _loc2_;
         Global.save_replay_turn_id = SafeGlobal.§_-ER§;
         _loc3_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_SAVING_REPLAY);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
