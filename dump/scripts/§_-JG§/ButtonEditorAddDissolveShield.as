package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddDissolveShield extends SimpleButton
   {
      
      public function ButtonEditorAddDissolveShield()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.EDITOR.addShield(SafeGlobal.GATETYPE_DISSOLVESHIELD);
         _loc3_;
         (parent as EditorPanelMain).§_-Lm§(SafeGlobal.GATETYPE_DISSOLVESHIELD);
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
            _loc2_;
            _loc2_;
            gotoAndStop("off");
            _loc1_;
            _loc1_;
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               (parent as EditorPanelMain).§_-Lm§(SafeGlobal.GATETYPE_DISSOLVESHIELD);
               _loc1_;
               gotoAndStop("over");
               _loc1_;
               _loc1_;
            }
            else
            {
               (parent as EditorPanelMain).§_-vB§();
               _loc1_;
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
   }
}
