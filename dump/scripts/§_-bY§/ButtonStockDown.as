package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.WeaponBox;
   
   public class ButtonStockDown extends SimpleButton
   {
      
      public function ButtonStockDown()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-L4§)
         {
            gotoAndStop("off");
            _loc2_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               gotoAndStop("over");
               _loc1_;
               _loc1_;
            }
            else
            {
               gotoAndStop("up");
            }
         }
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = param1.target.parent.id;
         var _loc3_:WeaponBox = param1.target.parent;
         _loc5_;
         _loc5_;
         _loc3_.removeStock();
         _loc4_;
         _loc4_;
         this.updateGraphic();
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
