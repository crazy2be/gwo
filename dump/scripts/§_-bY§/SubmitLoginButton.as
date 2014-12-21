package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-iG§;
   
   public class SubmitLoginButton extends SimpleButton
   {
      
      public function SubmitLoginButton()
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
         if(!§_-L4§)
         {
            if(!this.§_-Qu§((parent as §_-iG§).name_text.text))
            {
               _loc3_;
               _loc3_;
               setDisabled(true);
               (parent as §_-iG§).§_-T2§.setDisabled(true);
               _loc2_;
               (parent as §_-iG§).§_-cv§.setDisabled(true);
               (parent as §_-iG§).§_-ln§.setDisabled(true);
               (parent as §_-iG§).response_text.text = "";
               _loc3_;
               _loc3_;
               (parent as §_-iG§).§_-eP§.text = "CONNECTING TO SERVER...";
               _loc3_;
               _loc3_;
               Global.REGISTER_USER = false;
               Global.§_-Ba§ = false;
               _loc2_;
               _loc2_;
               Global.§_-kR§ = false;
               _loc2_;
               Global.§_-qU§ = false;
               _loc3_;
               TimelineGlobal.input_username = (parent as §_-iG§).name_text.text;
               _loc2_;
               _loc2_;
               TimelineGlobal.input_password = (parent as §_-iG§).§_-92§.text;
               SafeGlobal.TIMELINE.connectToPlayerIO();
               _loc3_;
               SafeGlobal.§_-8m§.§_-YN§();
               _loc2_;
            }
            else
            {
               Global.lobby_display.displayLoginError("PLEASE ENTER THE USERNAME YOU CREATED WHEN YOU REGISTERED. YOU CAN\'T LOGIN WITH AN EMAIL ADDRESS!");
            }
         }
      }
      
      private function §_-Qu§(param1:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc4_;
         _loc4_;
         if(_loc3_ == null)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            return false;
         }
         return true;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(§_-L4§)
         {
            _loc2_;
            _loc2_;
            gotoAndStop("up");
            alpha = 0.4;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            alpha = 1;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
               _loc2_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
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
