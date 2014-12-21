package §_-bY§
{
   import com.funkypear.ui.§_-Rx§;
   import flash.events.MouseEvent;
   import com.funkypear.ui.ModSelectPanel;
   
   public class §_-2T§ extends SimpleButton
   {
      
      public function §_-2T§(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         _loc2_;
         this.id = param1;
         _loc3_;
         _loc3_;
         this.mod_icon = new §_-Rx§(this.id);
         _loc3_;
         _loc2_;
         _loc2_;
         this.mod_icon.x = 30;
         _loc2_;
         this.mod_icon.y = 30;
         _loc2_;
         addChild(this.mod_icon);
      }
      
      public var id:int = 0;
      
      private var mod_icon:§_-Rx§;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         ModSelectPanel(parent.parent).§_-uR§(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(§_-L4§)
         {
            _loc2_;
            gotoAndStop("off");
            _loc1_;
            buttonMode = false;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
               ModSelectPanel(parent.parent).§_-yu§(this.id);
               _loc2_;
            }
            else
            {
               gotoAndStop("up");
               ModSelectPanel(parent.parent).§_-LP§();
            }
         }
      }
   }
}
