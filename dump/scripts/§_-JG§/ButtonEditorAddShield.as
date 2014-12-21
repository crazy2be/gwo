package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddShield extends SimpleButton
   {
      
      public function ButtonEditorAddShield()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         Global.EDITOR.addShield(SafeGlobal.GATETYPE_SHIELD);
         _loc3_;
         (parent as EditorPanelMain).§_-Lm§(SafeGlobal.GATETYPE_SHIELD);
         _loc2_;
         _loc2_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-L4§)
         {
            _loc1_;
            _loc1_;
            gotoAndStop("off");
            buttonMode = false;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(over)
            {
               (parent as EditorPanelMain).§_-Lm§(SafeGlobal.GATETYPE_SHIELD);
               gotoAndStop("over");
               _loc1_;
            }
            else
            {
               (parent as EditorPanelMain).§_-vB§();
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
         _loc1_;
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
