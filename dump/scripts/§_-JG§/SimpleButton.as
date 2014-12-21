package §_-JG§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class SimpleButton extends MovieClip
   {
      
      public function SimpleButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         mouseChildren = false;
         _loc2_;
         _loc2_;
         buttonMode = true;
         this.addEventListener(MouseEvent.MOUSE_OVER,this.§_-vV§,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.§_-wD§,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.onClick,false,0,true);
         _loc1_;
         stop();
      }
      
      protected var over:Boolean = false;
      
      protected var §_-L4§:Boolean = false;
      
      public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-L4§ = param1;
         _loc2_;
         this.updateGraphic();
      }
      
      protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.§_-L4§)
         {
            _loc1_;
            _loc1_;
            gotoAndStop("off");
            _loc2_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            if(this.over)
            {
               _loc1_;
               gotoAndStop("over");
            }
            else
            {
               gotoAndStop("up");
            }
         }
      }
      
      protected function §_-vV§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.over = true;
         _loc3_;
         this.updateGraphic();
      }
      
      protected function §_-wD§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.over = false;
         _loc3_;
         this.updateGraphic();
      }
      
      public function onClick(param1:MouseEvent) : void
      {
      }
   }
}
