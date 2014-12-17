package §_-kZ§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class SimpleButton extends MovieClip
   {
      
      public function SimpleButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         _loc2_;
         _loc2_;
         mouseChildren = false;
         buttonMode = true;
         _loc2_;
         _loc2_;
         this.addEventListener(MouseEvent.MOUSE_OVER,this.§_-mN§,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.§_-sR§,false,0,true);
         _loc2_;
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick,false,0,true);
         _loc2_;
         _loc2_;
         stop();
      }
      
      protected var over:Boolean = false;
      
      protected var §_-QR§:Boolean = false;
      
      public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-QR§ = param1;
         _loc2_;
         _loc2_;
         this.updateGraphic();
      }
      
      protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-QR§)
         {
            gotoAndStop("off");
            _loc2_;
            _loc2_;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(this.over)
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
      
      protected function §_-mN§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.over = true;
         _loc3_;
         this.updateGraphic();
      }
      
      protected function §_-sR§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
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
