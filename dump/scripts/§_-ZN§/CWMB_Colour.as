package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponPanel;
   
   public class CWMB_Colour extends §_-ZU§
   {
      
      public function CWMB_Colour()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var §_-Fw§:MovieClip;
      
      private var slot_id:int = -1;
      
      public function §_-JR§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.slot_id = param1;
      }
      
      override public function updateContent(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc4_;
         _loc2_.color = SafeGlobal.cw_colours[param1];
         _loc3_;
         this.§_-Fw§.transform.colorTransform = _loc2_;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         CustomWeaponPanel(parent).toggleColourMenu(this.slot_id);
         _loc2_;
         _loc2_;
         over = false;
         _loc3_;
         updateGraphic();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
