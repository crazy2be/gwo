package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-iG§;
   
   public class §_-9M§ extends SimpleButton
   {
      
      public function §_-9M§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         if(!§_-L4§)
         {
            _loc2_;
            _loc2_;
            setDisabled(true);
            (parent as §_-iG§).§_-s7§.setDisabled(true);
            _loc3_;
            (parent as §_-iG§).§_-T2§.setDisabled(true);
            (parent as §_-iG§).§_-cv§.setDisabled(true);
            (parent as §_-iG§).response_text.text = "";
            _loc3_;
            (parent as §_-iG§).§_-eP§.text = "CONNECTING TO SERVER...";
            Global.REGISTER_USER = false;
            Global.§_-Ba§ = true;
            Global.§_-kR§ = true;
            _loc3_;
            SafeGlobal.TIMELINE.connectToPlayerIO();
            _loc3_;
            SafeGlobal.§_-8m§.§_-I1§();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-L4§)
         {
            gotoAndStop("up");
            alpha = 0.4;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            alpha = 1;
            if(over)
            {
               gotoAndStop("over");
               _loc2_;
            }
            else
            {
               gotoAndStop("up");
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
