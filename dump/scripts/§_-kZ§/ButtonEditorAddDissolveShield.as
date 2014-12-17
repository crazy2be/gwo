package §_-kZ§
{
   import flash.events.MouseEvent;
   import §_-5M§.EditorPanelMain;
   
   public class ButtonEditorAddDissolveShield extends SimpleButton
   {
      
      public function ButtonEditorAddDissolveShield()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         Global.EDITOR.addShield(SafeGlobal.GATETYPE_DISSOLVESHIELD);
         _loc2_;
         _loc2_;
         (parent as EditorPanelMain).§_-T4§(SafeGlobal.GATETYPE_DISSOLVESHIELD);
         _loc2_;
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
            _loc1_;
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
               (parent as EditorPanelMain).§_-T4§(SafeGlobal.GATETYPE_DISSOLVESHIELD);
               gotoAndStop("over");
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
         _loc2_;
         stop();
      }
   }
}
