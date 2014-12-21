package §_-bY§
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CustomWeaponWepGfxMenu;
   
   public class CustomWeaponWepGfxButton extends SimpleButton
   {
      
      public function CustomWeaponWepGfxButton(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc4_;
         _loc4_;
         this.item_value = param1;
         this.colour_id = param2;
         this.holder = new Sprite();
         _loc3_;
         _loc3_;
         this.holder.x = 0;
         _loc3_;
         _loc3_;
         this.holder.y = 0;
         addChild(this.holder);
         this.updateContent();
      }
      
      private var item_value:int;
      
      private var colour_id:int;
      
      private var holder:Sprite;
      
      private function updateContent() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:Sprite = null;
         var _loc6_:Rectangle = null;
         _loc7_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc7_;
            }
         }
         var _loc1_:Class = getDefinitionByName("CustomWeaponClip" + this.item_value) as Class;
         var _loc2_:Sprite = new _loc1_() as Sprite;
         _loc8_;
         _loc2_.rotation = 315;
         var _loc3_:ColorTransform = new ColorTransform();
         _loc8_;
         _loc8_;
         _loc3_.color = SafeGlobal.cw_colours[this.colour_id];
         var _loc4_:MovieClip = _loc2_.getChildByName("colour") as MovieClip;
         if(_loc4_ != null)
         {
            _loc7_;
            _loc7_;
            _loc4_.transform.colorTransform = _loc3_;
         }
         _loc5_ = new Sprite();
         _loc5_.addChild(_loc2_);
         _loc8_;
         _loc8_;
         this.holder.addChild(_loc5_);
         _loc6_ = _loc5_.getBounds(_loc5_);
         _loc8_;
         _loc5_.x = (57 - _loc5_.width) / 2 - _loc6_.x;
         _loc8_;
         _loc8_;
         _loc5_.y = (57 - _loc5_.height) / 2 - _loc6_.y;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         (parent as CustomWeaponWepGfxMenu).§_-cD§(this.item_value);
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
         _loc1_;
         stop();
      }
   }
}
