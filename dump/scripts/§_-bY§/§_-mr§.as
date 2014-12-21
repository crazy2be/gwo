package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-jh§;
   
   public class §_-mr§ extends SimpleButton
   {
      
      public function §_-mr§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      private var §_-iw§:Boolean = true;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-iw§)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.backToHub();
            _loc2_;
            Global.lobby_display.lobby_menu.§_-ny§();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.§_-iw§)
         {
            _loc1_;
            _loc1_;
            gotoAndStop("up");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            if(over)
            {
               (parent as §_-jh§).§_-qQ§();
               gotoAndStop("over");
            }
            else
            {
               (parent as §_-jh§).§_-vB§();
               gotoAndStop("up");
            }
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-iw§ = param1;
         _loc3_;
         _loc3_;
         mouseEnabled = param1;
         _loc3_;
         _loc3_;
         buttonMode = param1;
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
