package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CWP_Damage;
   
   public class §_-cM§ extends §_-6w§
   {
      
      public function §_-cM§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         CWP_Damage(parent).toggleItemMenu();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
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
