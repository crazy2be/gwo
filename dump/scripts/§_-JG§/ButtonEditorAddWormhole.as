package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddWormhole extends SimpleButton
   {
      
      public function ButtonEditorAddWormhole()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.EDITOR.addWormholes();
         _loc3_;
         (parent as EditorPanelMain).§_-ej§();
         _loc3_;
         _loc3_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(§_-L4§)
         {
            gotoAndStop("off");
            _loc1_;
            buttonMode = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               _loc2_;
               _loc2_;
               (parent as EditorPanelMain).§_-ej§();
               _loc2_;
               _loc2_;
               gotoAndStop("over");
               _loc2_;
               _loc2_;
            }
            else
            {
               (parent as EditorPanelMain).§_-vB§();
               _loc2_;
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
