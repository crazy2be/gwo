package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class SimpleButton extends MovieClip
   {
      
      public function SimpleButton()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         mouseChildren = false;
         _loc1_;
         _loc1_;
         buttonMode = true;
         _loc2_;
         _loc2_;
         this.addEventListener(MouseEvent.MOUSE_OVER,this.§_-mN§,false,0,true);
         _loc1_;
         _loc1_;
         this.addEventListener(MouseEvent.MOUSE_OUT,this.§_-sR§,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick,false,0,true);
         _loc2_;
         stop();
      }
      
      protected var over:Boolean = false;
      
      protected var §_-QR§:Boolean = false;
      
      protected var §_-Od§:Boolean = false;
      
      public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-QR§ = param1;
         _loc3_;
         _loc3_;
         this.updateGraphic();
      }
      
      protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(this.§_-QR§)
         {
            gotoAndStop("off");
            _loc1_;
            buttonMode = false;
         }
         else
         {
            _loc1_;
            _loc1_;
            if(this.§_-Od§)
            {
               buttonMode = true;
               _loc2_;
               _loc2_;
               gotoAndStop("selected");
            }
            else
            {
               buttonMode = true;
               _loc2_;
               if(this.over)
               {
                  _loc1_;
                  _loc1_;
                  gotoAndStop("over");
               }
               else
               {
                  gotoAndStop("up");
               }
            }
         }
      }
      
      protected function §_-mN§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.over = true;
         _loc3_;
         _loc3_;
         this.updateGraphic();
      }
      
      protected function §_-sR§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.over = false;
         _loc2_;
         _loc2_;
         this.updateGraphic();
      }
      
      public function onClick(param1:MouseEvent) : void
      {
      }
   }
}
