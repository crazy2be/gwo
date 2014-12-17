package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-c-§.§_-IM§;
   import flash.events.MouseEvent;
   import flash.events.Event;
   
   public class §_-G-§ extends Sprite
   {
      
      public function §_-G-§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-h§:MovieClip;
      
      public var §_-bW§:MovieClip;
      
      public var §_-Vk§:MovieClip;
      
      public var §_-Rh§:MovieClip;
      
      public var §_-n4§:MovieClip;
      
      private var §_-xj§:Number;
      
      private var §_-gP§:int;
      
      private var §_-nS§:Number;
      
      public var _value:int = 1;
      
      private var §_-CH§:int;
      
      private var §_-0-M§:Function;
      
      private var §_-hy§:§_-IM§;
      
      private var §_-6a§:Boolean = false;
      
      public function init(param1:Number, param2:int, param3:int, param4:Function) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.§_-xj§ = param1;
         _loc5_;
         this.§_-gP§ = param2;
         _loc6_;
         this.§_-nS§ = this.§_-xj§ / this.§_-gP§;
         this._value = param3;
         this.§_-0-M§ = param4;
         _loc5_;
         this.§_-ps§();
         _loc6_;
         this.§_-QE§();
      }
      
      private function §_-ps§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = NaN;
         this.§_-n4§.width = this.§_-xj§;
         _loc3_;
         _loc3_;
         this.§_-Rh§.x = this.§_-n4§.x + this.§_-xj§;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = this._value * this.§_-nS§;
         this.§_-Vk§.x = _loc1_;
         _loc3_;
         this.§_-bW§.width = _loc1_;
         this.§_-h§.visible = false;
      }
      
      private function §_-QE§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-Vk§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iU§,false,0,true);
         _loc2_;
         this.§_-Vk§.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.§_-Vk§.mouseChildren = false;
         _loc2_;
         _loc2_;
         this.§_-Vk§.buttonMode = true;
      }
      
      private function §_-iU§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-CH§ = this._value;
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-vw§,false,0,true);
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-nY§,false,0,true);
         _loc3_;
         this.§_-Vk§.addEventListener(MouseEvent.MOUSE_UP,this.§_-nY§,false,0,true);
      }
      
      private function §_-vw§(param1:Event) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = this.mouseX;
         var _loc3_:Number = Math.round(_loc2_ / this.§_-nS§);
         _loc6_;
         _loc6_;
         var _loc4_:int = this.§_-CH§ + this.§_-0-M§();
         _loc5_;
         _loc5_;
         if(_loc4_ > this.§_-gP§)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = this.§_-gP§;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(_loc3_ > _loc4_)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = _loc4_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(_loc3_ < 1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = 1;
            _loc6_;
         }
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(_loc3_ <= _loc4_ && _loc3_ >= 1)
         {
            _loc6_;
            this.§_-Vk§.x = _loc3_ * this.§_-nS§;
            this.§_-bW§.width = _loc3_ * this.§_-nS§;
            this.§_-h§.width = _loc4_ * this.§_-nS§;
            this.§_-h§.visible = true;
            _loc5_;
            this.§_-CH§ = _loc3_;
            _loc5_;
         }
         else
         {
            this.§_-CH§ = this._value;
         }
         this.§_-hy§ = new §_-IM§("onValueChanged",true,false);
         this.§_-hy§.§_-CH§ = this.§_-CH§;
         dispatchEvent(this.§_-hy§);
      }
      
      public function §_-nY§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this._value = this.§_-CH§;
         this.§_-h§.visible = false;
         if(hasEventListener(Event.ENTER_FRAME))
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-vw§);
         }
         if(this.§_-Vk§.hasEventListener(MouseEvent.MOUSE_UP))
         {
            this.§_-Vk§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-nY§);
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-nY§);
            _loc3_;
            _loc3_;
         }
         this.§_-hy§ = new §_-IM§("onFinishDrag",true,false);
         this.§_-hy§.§_-CH§ = this.§_-CH§;
         _loc2_;
         _loc2_;
         dispatchEvent(this.§_-hy§);
      }
   }
}
