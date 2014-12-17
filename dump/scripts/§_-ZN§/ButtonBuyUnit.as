package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.UnitBox;
   import §_-WX§.§_-Xd§;
   
   public class ButtonBuyUnit extends SimpleButton
   {
      
      public function ButtonBuyUnit()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = param1.target.parent.id;
         var _loc3_:UnitBox = param1.target.parent;
         var _loc4_:§_-Xd§ = Global.unitDetails[_loc2_ - 1];
         _loc6_;
         _loc6_;
         param1.target.parent.parent.buyUnit(_loc4_,_loc3_,_loc2_);
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
