package §_-ZN§
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponTrailMenu;
   
   public class CustomWeaponTrailButton extends SimpleButton
   {
      
      public function CustomWeaponTrailButton(param1:int, param2:Array)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-k9§ = [0,0];
         _loc3_;
         super();
         _loc4_;
         addFrameScript(0,this.frame1,9,this.frame10);
         this.item_value = param1;
         this.§_-k9§ = param2;
         this.holder = new Sprite();
         this.holder.x = 28;
         _loc3_;
         this.holder.y = 28;
         addChild(this.holder);
         this.updateContent();
      }
      
      private var item_value:int;
      
      private var §_-k9§:Array;
      
      private var holder:Sprite;
      
      private function updateContent() : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:§_-z§ = null;
         var _loc2_:Class = null;
         var _loc3_:Sprite = null;
         var _loc4_:ColorTransform = null;
         _loc5_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc5_;
               _loc5_;
            }
            _loc6_;
         }
         if(this.item_value == 0)
         {
            _loc1_ = new §_-z§();
            _loc5_;
            this.holder.addChild(_loc1_);
         }
         else
         {
            _loc2_ = getDefinitionByName("CustomTrailClip" + this.item_value) as Class;
            _loc3_ = new _loc2_() as Sprite;
            _loc4_ = new ColorTransform();
            _loc4_.color = SafeGlobal.cw_trail_colours[this.§_-k9§[0]];
            _loc5_;
            _loc5_;
            if(Global.cw_trail_colour_count[this.item_value] > 0)
            {
               _loc5_;
               _loc5_;
               _loc3_.transform.colorTransform = _loc4_;
               _loc6_;
            }
            this.holder.addChild(_loc3_);
         }
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         (parent as CustomWeaponTrailMenu).§try §(this.item_value);
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
