package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-0-4§;
   
   public class RetrievePasswordButton extends SimpleButton
   {
      
      public function RetrievePasswordButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.§_-Qu§((parent as §_-0-4§).§_-FI§.text))
         {
            _loc2_;
            setDisabled(true);
            _loc2_;
            (parent as §_-0-4§).response_text.text = "";
            TimelineGlobal.input_email = (parent as §_-0-4§).§_-FI§.text;
            _loc3_;
            _loc3_;
            SafeGlobal.TIMELINE.retrievePassword();
         }
         else
         {
            (parent as §_-0-4§).response_text.text = "Please enter a valid email address.";
         }
      }
      
      private function §_-Qu§(param1:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc5_;
         _loc5_;
         if(_loc3_ == null)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
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
         _loc1_;
         stop();
      }
   }
}
