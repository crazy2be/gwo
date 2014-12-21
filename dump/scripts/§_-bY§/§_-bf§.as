package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-bf§ extends SimpleButton
   {
      
      public function §_-bf§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      public var slot_id:int = -1;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.slot_id != -1)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.displayConfirmDeleteMap(this.slot_id);
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
