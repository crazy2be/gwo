package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddStandardMine extends SimpleButton
   {
      
      public function ButtonEditorAddStandardMine()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         _loc3_;
         if(!§_-L4§)
         {
            _loc3_;
            _loc3_;
            Global.EDITOR.addMine(SafeGlobal.MINETYPE_STANDARD);
            _loc3_;
            (parent as EditorPanelMain).§_-UT§(SafeGlobal.MINETYPE_STANDARD);
            _loc2_;
            _loc2_;
         }
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(§_-L4§)
         {
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc2_;
               (parent as EditorPanelMain).§_-UT§(SafeGlobal.MINETYPE_STANDARD);
               _loc2_;
               _loc2_;
               gotoAndStop("over");
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
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
