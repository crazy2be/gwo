package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-xx§ extends SimpleButton
   {
      
      public function §_-xx§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         Global.lobby_display.displayRegisterScreen();
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
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
   }
}
