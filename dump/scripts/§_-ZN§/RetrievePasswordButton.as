package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-3V§;
   
   public class RetrievePasswordButton extends SimpleButton
   {
      
      public function RetrievePasswordButton()
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.static((parent as §_-3V§).§_-v5§.text))
         {
            setDisabled(true);
            (parent as §_-3V§).response_text.text = "";
            TimelineGlobal.input_email = (parent as §_-3V§).§_-v5§.text;
            SafeGlobal.TIMELINE.retrievePassword();
            _loc2_;
         }
         else
         {
            (parent as §_-3V§).response_text.text = "Please enter a valid email address.";
         }
      }
      
      private function static(param1:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc4_;
         _loc4_;
         if(_loc3_ == null)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            return false;
         }
         return true;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
