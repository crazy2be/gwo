package §_-kZ§
{
   import flash.events.MouseEvent;
   import §_-5M§.EditorPanelMain;
   
   public class ButtonEditorAddUnitMarker extends SimpleButton
   {
      
      public function ButtonEditorAddUnitMarker()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!§_-QR§)
         {
            _loc3_;
            Global.EDITOR.addUnitMarkers();
            _loc2_;
            _loc2_;
            (parent as EditorPanelMain).§_-Us§();
            _loc2_;
         }
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               _loc2_;
               _loc2_;
               gotoAndStop("over");
               _loc1_;
            }
            else
            {
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
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
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
