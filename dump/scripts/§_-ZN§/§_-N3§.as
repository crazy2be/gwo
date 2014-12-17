package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-6o§;
   
   public class §_-N3§ extends SimpleButton
   {
      
      public function §_-N3§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      private var §_-Lx§:Boolean = true;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-Lx§)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            Global.lobby_display.backToHub();
            _loc2_;
            _loc2_;
            Global.lobby_display.lobby_menu.§_-g5§();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.§_-Lx§)
         {
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
               (parent as §_-6o§).§_-iG§();
               _loc1_;
               _loc1_;
               gotoAndStop("over");
               _loc1_;
            }
            else
            {
               (parent as §_-6o§).§_-8w§();
               gotoAndStop("up");
            }
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Lx§ = param1;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
