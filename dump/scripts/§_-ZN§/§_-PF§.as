package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-AP§;
   
   public class §_-PF§ extends SimpleButton
   {
      
      public function §_-PF§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!§_-QR§)
         {
            _loc2_;
            _loc2_;
            setDisabled(true);
            _loc3_;
            (parent as §_-AP§).§_-Eh§.setDisabled(true);
            _loc3_;
            _loc3_;
            (parent as §_-AP§).§_-0N§.setDisabled(true);
            _loc2_;
            _loc2_;
            (parent as §_-AP§).§_-0W§.setDisabled(true);
            (parent as §_-AP§).response_text.text = "";
            (parent as §_-AP§).§_-sS§.text = "CONNECTING TO SERVER...";
            Global.REGISTER_USER = false;
            Global.§_-UW§ = true;
            _loc3_;
            Global.§_-41§ = true;
            SafeGlobal.TIMELINE.connectToPlayerIO();
            SafeGlobal.§_-zK§.§_-qI§();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("up");
            _loc2_;
            _loc2_;
            alpha = 0.4;
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            alpha = 1;
            _loc2_;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
            }
            else
            {
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
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
