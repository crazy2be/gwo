package §_-5M§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class SliderShieldAngle extends Sprite
   {
      
      public function SliderShieldAngle()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         this.init();
      }
      
      public var mask_clip:MovieClip;
      
      public var knob:§_-tc§;
      
      public var bar:MovieClip;
      
      public var §_-Mi§:TextField;
      
      public var minX:int = -50;
      
      public var maxX:int = 50;
      
      public var §_-2Z§:int = 0;
      
      public var §_-Rj§:int = 360;
      
      public function init() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.knob.mouseEnabled = true;
         _loc1_;
         _loc2_;
         _loc2_;
         this.knob.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.knob.buttonMode = true;
         _loc1_;
         _loc1_;
         this.knob.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
      }
      
      public function §_-K2§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.knob.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc2_;
         Global.EDITOR.catchSliderRelease(this);
      }
      
      public function dragStop() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.knob.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
      }
      
      public function processPosition() : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         var _loc1_:int = this.maxX - this.minX;
         var _loc2_:int = this.knob.x - this.minX;
         _loc7_;
         var _loc3_:Number = _loc2_ / _loc1_;
         _loc6_;
         _loc6_;
         var _loc4_:int = this.§_-Rj§ - this.§_-2Z§;
         _loc7_;
         _loc7_;
         var _loc5_:int = this.§_-2Z§ + _loc4_ * _loc3_;
         _loc7_;
         _loc7_;
         this.§_-IK§(_loc5_);
      }
      
      public function §_-IK§(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         Global.EDITOR.selected.rotation = param1;
         _loc5_;
         _loc5_;
         if(Global.EDITOR.selected.cross)
         {
            Global.EDITOR.selected.cross.rotation = 0 - param1;
            _loc5_;
            _loc5_;
         }
         Global.EDITOR.checkValid();
         Global.EDITOR.updateLevelBounds();
         _loc6_;
         Global.EDITOR.hideLines();
         Global.EDITOR.showLines(Global.EDITOR.selected);
         this.§_-Mi§.text = String(param1);
         _loc5_;
         _loc5_;
         var _loc2_:int = this.§_-Rj§ - this.§_-2Z§;
         _loc5_;
         _loc5_;
         var _loc3_:int = param1 - this.§_-2Z§;
         _loc6_;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc5_;
         this.mask_clip.scaleX = _loc4_;
      }
      
      public function §_-Xm§(param1:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         if(param1 < 0)
         {
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            var param1:int = param1 + 360;
         }
         _loc6_;
         var _loc2_:int = this.§_-Rj§ - this.§_-2Z§;
         _loc7_;
         _loc7_;
         var _loc3_:int = param1 - this.§_-2Z§;
         _loc6_;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc6_;
         var _loc5_:int = this.maxX - this.minX;
         _loc7_;
         _loc6_;
         this.knob.x = this.minX + _loc4_ * _loc5_;
         _loc7_;
         this.mask_clip.scaleX = _loc4_;
         _loc7_;
         this.§_-Mi§.text = String(param1);
      }
   }
}
