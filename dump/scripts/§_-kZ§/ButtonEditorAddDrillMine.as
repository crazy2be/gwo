package §_-kZ§
{
   import flash.events.MouseEvent;
   import §_-5M§.EditorPanelMain;
   
   public class ButtonEditorAddDrillMine extends SimpleButton
   {
      
      public function ButtonEditorAddDrillMine()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!§_-QR§)
         {
            _loc3_;
            _loc3_;
            Global.EDITOR.addMine(SafeGlobal.MINETYPE_DRILL);
            _loc2_;
            _loc2_;
            (parent as EditorPanelMain).§_-8q§(SafeGlobal.MINETYPE_DRILL);
            _loc2_;
         }
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            _loc2_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc1_;
               _loc1_;
               (parent as EditorPanelMain).§_-8q§(SafeGlobal.MINETYPE_DRILL);
               _loc1_;
               _loc1_;
               gotoAndStop("over");
            }
            else
            {
               (parent as EditorPanelMain).§_-8w§();
               _loc1_;
               _loc1_;
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
