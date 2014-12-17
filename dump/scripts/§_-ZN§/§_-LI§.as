package §_-ZN§
{
   import flash.events.MouseEvent;
   
   public class §_-LI§ extends SimpleButton
   {
      
      public function §_-LI§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      public var slot_id:int = -1;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.slot_id != -1)
         {
            _loc3_;
            Global.lobby_display.displayConfirmDeleteMap(this.slot_id);
         }
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
         _loc2_;
         stop();
      }
   }
}
