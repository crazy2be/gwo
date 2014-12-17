package §_-ZN§
{
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §_-MY§ extends SimpleButton
   {
      
      public function §_-MY§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-aG§:TextField;
      
      public function setTextField(param1:TextField) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-aG§ = param1;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         _loc5_;
         _loc5_;
         if(this.§_-aG§ != null)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = this.§_-aG§.text;
            _loc4_;
            _loc5_;
            _loc3_ = this.§_-af§(_loc2_);
            _loc4_;
            _loc4_;
            System.setClipboard(_loc3_);
         }
      }
      
      private function §_-af§(param1:String) : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1 == null)
         {
            _loc2_;
            _loc2_;
            return "";
         }
         return param1.replace(new RegExp("^\\s+|\\s+$","g"),"");
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
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
