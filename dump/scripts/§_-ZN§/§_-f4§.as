package §_-ZN§
{
   import flash.events.MouseEvent;
   
   public class §_-f4§ extends SimpleButton
   {
      
      public function §_-f4§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
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
         _loc2_;
         if(!§_-QR§)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.displayLoginScreen();
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
            alpha = 0.4;
            buttonMode = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            alpha = 1;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
