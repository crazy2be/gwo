package §_-JG§
{
   import flash.events.MouseEvent;
   import §_-eR§.EditorPanelMain;
   
   public class §_-hf§ extends SimpleButton
   {
      
      public function §_-hf§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
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
         Global.EDITOR.addBlackHole();
         _loc2_;
         _loc2_;
         (parent as EditorPanelMain).§_-Yi§();
         _loc3_;
         param1.stopPropagation();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
               (parent as EditorPanelMain).§_-Yi§();
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
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
