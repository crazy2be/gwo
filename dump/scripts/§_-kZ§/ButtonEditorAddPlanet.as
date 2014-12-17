package §_-kZ§
{
   import flash.events.MouseEvent;
   import §_-5M§.EditorPanelMain;
   
   public class ButtonEditorAddPlanet extends SimpleButton
   {
      
      public function ButtonEditorAddPlanet()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.EDITOR.addPlanet();
         _loc2_;
         (parent as EditorPanelMain).§_-F§();
         _loc3_;
         _loc3_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
               _loc2_;
               (parent as EditorPanelMain).§_-F§();
               _loc1_;
               gotoAndStop("over");
               _loc1_;
               _loc1_;
            }
            else
            {
               (parent as EditorPanelMain).§_-8w§();
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
