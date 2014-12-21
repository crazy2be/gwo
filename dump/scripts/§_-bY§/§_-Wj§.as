package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-Wj§ extends SimpleButton
   {
      
      public function §_-Wj§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         Global.lobby_display.displayPasswordScreen();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-L4§)
         {
            gotoAndStop("up");
            _loc1_;
            alpha = 0.4;
            _loc1_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            alpha = 1;
            _loc1_;
            _loc1_;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
