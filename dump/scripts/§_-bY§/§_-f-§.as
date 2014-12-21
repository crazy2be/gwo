package §_-bY§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponColourMenu;
   import flash.geom.ColorTransform;
   
   public class §_-f-§ extends SimpleButton
   {
      
      public function §_-f-§(param1:Number, param2:int)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         super();
         _loc5_;
         _loc5_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc4_;
         _loc4_;
         this.colour_value = param1;
         _loc5_;
         this.colour_id = param2;
         var _loc3_:ColorTransform = new ColorTransform();
         _loc5_;
         _loc3_.color = this.colour_value;
         _loc4_;
         _loc4_;
         this.§_-RW§.transform.colorTransform = _loc3_;
      }
      
      public var §_-RW§:MovieClip;
      
      private var colour_value:Number;
      
      private var colour_id:int;
      
      private var size:Number = 16;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         (parent as CustomWeaponColourMenu).§_-cD§(this.colour_id);
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
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
