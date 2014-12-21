package §_-eR§
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
         _loc2_;
         _loc2_;
         this.init();
      }
      
      public var mask_clip:MovieClip;
      
      public var knob:§_-KE§;
      
      public var bar:MovieClip;
      
      public var §_-Ej§:TextField;
      
      public var minX:int = -50;
      
      public var maxX:int = 50;
      
      public var §_-tX§:int = 0;
      
      public var §_-eD§:int = 360;
      
      public function init() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.knob.mouseEnabled = true;
         _loc2_;
         _loc2_;
         _loc2_;
         this.knob.mouseChildren = false;
         _loc2_;
         _loc1_;
         _loc1_;
         this.knob.buttonMode = true;
         _loc2_;
         _loc2_;
         this.knob.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
      }
      
      public function §_-iA§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.knob.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
         _loc2_;
         Global.EDITOR.catchSliderRelease(this);
      }
      
      public function dragStop() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.knob.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
      }
      
      public function processPosition() : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         _loc6_;
         var _loc1_:int = this.maxX - this.minX;
         var _loc2_:int = this.knob.x - this.minX;
         _loc7_;
         _loc7_;
         var _loc3_:Number = _loc2_ / _loc1_;
         _loc7_;
         var _loc4_:int = this.§_-eD§ - this.§_-tX§;
         _loc7_;
         _loc7_;
         var _loc5_:int = this.§_-tX§ + _loc4_ * _loc3_;
         _loc7_;
         this.§_-dA§(_loc5_);
      }
      
      public function §_-dA§(param1:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         Global.EDITOR.selected.rotation = param1;
         if(Global.EDITOR.selected.cross)
         {
            _loc6_;
            Global.EDITOR.selected.cross.rotation = 0 - param1;
            _loc6_;
         }
         Global.EDITOR.checkValid();
         Global.EDITOR.updateLevelBounds();
         Global.EDITOR.hideLines();
         _loc6_;
         Global.EDITOR.showLines(Global.EDITOR.selected);
         _loc5_;
         _loc5_;
         this.§_-Ej§.text = String(param1);
         _loc6_;
         var _loc2_:int = this.§_-eD§ - this.§_-tX§;
         _loc5_;
         _loc5_;
         var _loc3_:int = param1 - this.§_-tX§;
         _loc6_;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc5_;
         _loc5_;
         this.mask_clip.scaleX = _loc4_;
      }
      
      public function §_-rV§(param1:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         if(param1 < 0)
         {
            _loc6_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            var param1:int = param1 + 360;
         }
         _loc7_;
         var _loc2_:int = this.§_-eD§ - this.§_-tX§;
         _loc7_;
         var _loc3_:int = param1 - this.§_-tX§;
         _loc6_;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc7_;
         _loc7_;
         var _loc5_:int = this.maxX - this.minX;
         _loc6_;
         _loc6_;
         this.knob.x = this.minX + _loc4_ * _loc5_;
         _loc6_;
         this.mask_clip.scaleX = _loc4_;
         _loc7_;
         this.§_-Ej§.text = String(param1);
      }
   }
}
