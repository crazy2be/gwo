package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.ProjectileEditPanel;
   
   public class §_-y5§ extends SimpleButton
   {
      
      public function §_-y5§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public function §_-E9§(param1:Number, param2:Number) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         x = param1;
         _loc3_;
         y = param2;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         (parent as ProjectileEditPanel).§_-3m§();
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
