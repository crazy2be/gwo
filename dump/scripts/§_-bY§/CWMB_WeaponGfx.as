package §_-bY§
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CWP_WeaponGfx;
   
   public class CWMB_WeaponGfx extends §_-6w§
   {
      
      public function CWMB_WeaponGfx()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
         this.holder = new Sprite();
         _loc1_;
         _loc1_;
         this.holder.x = 0;
         this.holder.y = 0;
         _loc1_;
         addChild(this.holder);
      }
      
      private var §_-4B§:int = 0;
      
      private var colour_id:int = 0;
      
      private var holder:Sprite;
      
      public function §_-r7§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.colour_id = param1;
         _loc2_;
         _loc2_;
         this.updateContent(this.§_-4B§);
      }
      
      override public function updateContent(param1:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:Sprite = null;
         var _loc7_:Rectangle = null;
         _loc9_;
         this.§_-4B§ = param1;
         _loc8_;
         _loc8_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc9_;
               _loc9_;
            }
         }
         var _loc2_:Class = getDefinitionByName("CustomWeaponClip" + param1) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc8_;
         _loc3_.rotation = 315;
         var _loc4_:ColorTransform = new ColorTransform();
         _loc4_.color = SafeGlobal.cw_colours[this.colour_id];
         var _loc5_:MovieClip = _loc3_.getChildByName("colour") as MovieClip;
         if(_loc5_ != null)
         {
            _loc8_;
            _loc5_.transform.colorTransform = _loc4_;
         }
         _loc6_ = new Sprite();
         _loc6_.addChild(_loc3_);
         _loc8_;
         this.holder.addChild(_loc6_);
         _loc7_ = _loc6_.getBounds(_loc6_);
         _loc9_;
         _loc6_.x = (57 - _loc6_.width) / 2 - _loc7_.x;
         _loc8_;
         _loc8_;
         _loc6_.y = (57 - _loc6_.height) / 2 - _loc7_.y;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         CWP_WeaponGfx(parent).§_-0A§();
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
         _loc1_;
         stop();
      }
   }
}
