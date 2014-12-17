package §_-5M§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class SliderPlanetSize extends Sprite
   {
      
      public function SliderPlanetSize()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
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
      
      public var §_-sM§:int;
      
      public var §_-2Z§:int = 50;
      
      public var §_-Rj§:int = 125;
      
      public function init() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         this.knob.mouseEnabled = true;
         _loc1_;
         _loc1_;
         _loc1_;
         this.knob.mouseChildren = false;
         _loc1_;
         _loc1_;
         _loc2_;
         this.knob.buttonMode = true;
         _loc2_;
         this.knob.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
      }
      
      public function §_-K2§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
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
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         var _loc1_:int = this.maxX - this.minX;
         var _loc2_:int = this.knob.x - this.minX;
         _loc7_;
         _loc7_;
         _loc6_;
         if(this.§_-sM§ != _loc2_)
         {
            this.§_-sM§ = _loc2_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc3_ = _loc2_ / _loc1_;
            _loc6_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc4_ = this.§_-Rj§ - this.§_-2Z§;
            _loc7_;
            _loc7_;
            _loc5_ = this.§_-2Z§ + _loc4_ * _loc3_;
            this.§_-IK§(_loc5_);
         }
      }
      
      public function §_-IK§(param1:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         Global.EDITOR.selected.setRadius(param1);
         _loc6_;
         _loc6_;
         this.§_-Mi§.text = String(param1);
         _loc5_;
         var _loc2_:int = this.§_-Rj§ - this.§_-2Z§;
         _loc5_;
         var _loc3_:int = param1 - this.§_-2Z§;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc6_;
         this.mask_clip.scaleX = _loc4_;
      }
      
      public function §_-Xm§(param1:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc7_;
         var _loc2_:int = this.§_-Rj§ - this.§_-2Z§;
         _loc7_;
         var _loc3_:int = param1 - this.§_-2Z§;
         _loc6_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc6_;
         var _loc5_:int = this.maxX - this.minX;
         _loc7_;
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
