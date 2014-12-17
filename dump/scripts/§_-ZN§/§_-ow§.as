package §_-ZN§
{
   import flash.events.MouseEvent;
   
   public class §_-ow§ extends SimpleButton
   {
      
      public function §_-ow§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.save_replay_id = SafeGlobal.selected_level.slot_id;
         _loc3_;
         Global.save_replay_turn_id = SafeGlobal.§_-Mk§;
         _loc2_;
         Global.lobby_display.displayLobbyScreen(Global.SCREEN_SAVING_REPLAY);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
