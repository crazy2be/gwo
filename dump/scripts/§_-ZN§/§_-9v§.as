package §_-ZN§
{
   import com.funkypear.ui.§_-r7§;
   import flash.events.MouseEvent;
   import com.funkypear.ui.ModSelectPanel;
   
   public class §_-9v§ extends SimpleButton
   {
      
      public function §_-9v§(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.id = param1;
         this.mod_icon = new §_-r7§(this.id);
         _loc3_;
         _loc2_;
         _loc3_;
         this.mod_icon.x = 30;
         _loc3_;
         _loc3_;
         this.mod_icon.y = 30;
         addChild(this.mod_icon);
      }
      
      public var id:int = 0;
      
      private var mod_icon:§_-r7§;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         ModSelectPanel(parent.parent).§_-rr§(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(§_-QR§)
         {
            _loc1_;
            gotoAndStop("off");
            buttonMode = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               gotoAndStop("over");
               _loc2_;
               ModSelectPanel(parent.parent).§_-IQ§(this.id);
            }
            else
            {
               gotoAndStop("up");
               ModSelectPanel(parent.parent).§_-kG§();
            }
         }
      }
   }
}
