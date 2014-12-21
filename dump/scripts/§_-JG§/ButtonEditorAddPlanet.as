package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class ButtonEditorAddPlanet extends SimpleButton
   {
      
      public function ButtonEditorAddPlanet()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.EDITOR.addPlanet();
         _loc2_;
         (parent as EditorPanelMain).§_-gP§();
         _loc2_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
               _loc2_;
               (parent as EditorPanelMain).§_-gP§();
               _loc1_;
               gotoAndStop("over");
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
