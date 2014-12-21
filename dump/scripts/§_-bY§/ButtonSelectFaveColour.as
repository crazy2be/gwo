package §_-bY§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.LP_TeamSetUp;
   import flash.geom.ColorTransform;
   
   public class ButtonSelectFaveColour extends SimpleButton
   {
      
      public function ButtonSelectFaveColour()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var colourbox:MovieClip;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         LP_TeamSetUp(parent).§_-Z9§();
      }
      
      public function §_-r7§(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc3_;
         _loc2_.color = SafeGlobal.colour_hex[param1];
         _loc3_;
         this.colourbox.transform.colorTransform = _loc2_;
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
