package §_-kZ§
{
   import flash.events.MouseEvent;
   import §_-5M§.EditorPanelMain;
   
   public class ButtonEditorAddWormhole extends SimpleButton
   {
      
      public function ButtonEditorAddWormhole()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         Global.EDITOR.addWormholes();
         _loc2_;
         (parent as EditorPanelMain).§_-fc§();
         _loc2_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               (parent as EditorPanelMain).§_-fc§();
               _loc1_;
               _loc1_;
               gotoAndStop("over");
               _loc2_;
               _loc2_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
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
   }
}
