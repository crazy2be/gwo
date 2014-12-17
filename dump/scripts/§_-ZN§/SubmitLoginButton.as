package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-AP§;
   
   public class SubmitLoginButton extends SimpleButton
   {
      
      public function SubmitLoginButton()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!§_-QR§)
         {
            _loc3_;
            if(!this.static((parent as §_-AP§).name_text.text))
            {
               setDisabled(true);
               (parent as §_-AP§).§_-0N§.setDisabled(true);
               (parent as §_-AP§).§_-0W§.setDisabled(true);
               (parent as §_-AP§).§_-5P§.setDisabled(true);
               (parent as §_-AP§).response_text.text = "";
               _loc3_;
               _loc3_;
               (parent as §_-AP§).§_-sS§.text = "CONNECTING TO SERVER...";
               Global.REGISTER_USER = false;
               Global.§_-UW§ = false;
               Global.§_-41§ = false;
               Global.§_-k0§ = false;
               TimelineGlobal.input_username = (parent as §_-AP§).name_text.text;
               _loc3_;
               _loc3_;
               TimelineGlobal.input_password = (parent as §_-AP§).§_-zm§.text;
               SafeGlobal.TIMELINE.connectToPlayerIO();
               SafeGlobal.§_-zK§.§_-gI§();
            }
            else
            {
               Global.lobby_display.displayLoginError("PLEASE ENTER THE USERNAME YOU CREATED WHEN YOU REGISTERED. YOU CAN\'T LOGIN WITH AN EMAIL ADDRESS!");
            }
         }
      }
      
      private function static(param1:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc4_;
         if(_loc3_ == null)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            return false;
         }
         return true;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(§_-QR§)
         {
            _loc2_;
            gotoAndStop("up");
            alpha = 0.4;
            _loc1_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            alpha = 1;
            _loc1_;
            if(over)
            {
               gotoAndStop("over");
               _loc1_;
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
         _loc1_;
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
