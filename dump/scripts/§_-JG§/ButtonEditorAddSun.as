package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddSun extends SimpleButton
   {
      
      public function ButtonEditorAddSun()
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
         _loc2_;
         Global.EDITOR.addSun();
         _loc2_;
         _loc2_;
         (parent as EditorPanelMain).§_-gb§();
         _loc3_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-L4§)
         {
            _loc1_;
            gotoAndStop("off");
            _loc2_;
            _loc2_;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            if(over)
            {
               (parent as EditorPanelMain).§_-gb§();
               gotoAndStop("over");
               _loc2_;
               _loc2_;
            }
            else
            {
               (parent as EditorPanelMain).§_-vB§();
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
