package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.FaveColourSelectPanel;
   import flash.geom.ColorTransform;
   
   public class ColourButton extends SimpleButton
   {
      
      public function ColourButton(param1:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super();
         _loc3_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc4_;
         _loc4_;
         this.id = param1;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc3_;
         _loc3_;
         _loc2_.color = SafeGlobal.colour_hex[this.id];
         _loc4_;
         this.colourbox.transform.colorTransform = _loc2_;
      }
      
      public var colourbox:MovieClip;
      
      public var id:int = 0;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         FaveColourSelectPanel(parent.parent).selectColour(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-QR§)
         {
            gotoAndStop("off");
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
               gotoAndStop("over");
               FaveColourSelectPanel(parent.parent).§_-O1§(this.id);
            }
            else
            {
               gotoAndStop("up");
               FaveColourSelectPanel(parent.parent).§_-RC§();
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
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
