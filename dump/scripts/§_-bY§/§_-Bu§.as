package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-Bu§ extends SimpleButton
   {
      
      public function §_-Bu§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var slot_id:int = 0;
      
      public function init(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.slot_id = param1;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_menu.§_-NP§("CustomWeapon" + this.slot_id);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
