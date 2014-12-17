package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.ProjectileEditPanel;
   
   public class §_-aV§ extends SimpleButton
   {
      
      public function §_-aV§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function §_-Mv§(param1:Number, param2:Number) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         x = param1;
         _loc3_;
         _loc3_;
         y = param2;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         (parent as ProjectileEditPanel).§_-63§();
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
