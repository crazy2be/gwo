package §_-bY§
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
         this.§_-pZ§ = [0,0];
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
         this.item_value = param1;
         _loc3_;
         _loc3_;
         this.§_-pZ§ = param2;
         _loc3_;
         _loc3_;
         this.holder = new Sprite();
         this.holder.x = 28;
         _loc4_;
         this.holder.y = 28;
         addChild(this.holder);
         this.updateContent();
      }
      
      private var item_value:int;
      
      private var §_-pZ§:Array;
      
      private var holder:Sprite;
      
      private function updateContent() : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:§_-Zt§ = null;
         var _loc2_:Class = null;
         var _loc3_:Sprite = null;
         var _loc4_:ColorTransform = null;
         _loc6_;
         _loc6_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc5_;
            }
            _loc5_;
            _loc5_;
         }
         if(this.item_value == 0)
         {
            _loc1_ = new §_-Zt§();
            _loc6_;
            _loc6_;
            this.holder.addChild(_loc1_);
         }
         else
         {
            _loc2_ = getDefinitionByName("CustomTrailClip" + this.item_value) as Class;
            _loc3_ = new _loc2_() as Sprite;
            _loc4_ = new ColorTransform();
            _loc4_.color = SafeGlobal.cw_trail_colours[this.§_-pZ§[0]];
            _loc6_;
            _loc6_;
            if(Global.cw_trail_colour_count[this.item_value] > 0)
            {
               _loc6_;
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
         _loc3_;
         (parent as CustomWeaponTrailMenu).§_-cD§(this.item_value);
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
