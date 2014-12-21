package §_-bY§
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
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc3_;
         this.id = param1;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc4_;
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
         _loc3_;
         FaveColourSelectPanel(parent.parent).selectColour(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(§_-L4§)
         {
            _loc1_;
            _loc1_;
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               gotoAndStop("over");
               FaveColourSelectPanel(parent.parent).§_-7§(this.id);
               _loc2_;
               _loc2_;
            }
            else
            {
               gotoAndStop("up");
               FaveColourSelectPanel(parent.parent).§_-Jr§();
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
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
