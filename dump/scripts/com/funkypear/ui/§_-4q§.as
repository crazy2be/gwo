package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-vO§.§_-07§;
   import flash.events.MouseEvent;
   import flash.events.Event;
   
   public class §_-4q§ extends Sprite
   {
      
      public function §_-4q§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-CI§:MovieClip;
      
      public var §_-8O§:MovieClip;
      
      public var §_-dg§:MovieClip;
      
      public var §_-T9§:MovieClip;
      
      public var §_-Wq§:MovieClip;
      
      private var §_-Xv§:Number;
      
      private var §_-I5§:int;
      
      private var §_-O8§:Number;
      
      public var _value:int = 1;
      
      private var §_-9x§:int;
      
      private var §_-vN§:Function;
      
      private var §_-jf§:§_-07§;
      
      private var §_-lC§:Boolean = false;
      
      public function init(param1:Number, param2:int, param3:int, param4:Function) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.§_-Xv§ = param1;
         this.§_-I5§ = param2;
         _loc5_;
         _loc5_;
         this.§_-O8§ = this.§_-Xv§ / this.§_-I5§;
         this._value = param3;
         this.§_-vN§ = param4;
         _loc5_;
         _loc5_;
         this.§_-oc§();
         _loc6_;
         this.§_-Kv§();
      }
      
      private function §_-oc§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = NaN;
         _loc3_;
         _loc3_;
         this.§_-Wq§.width = this.§_-Xv§;
         this.§_-T9§.x = this.§_-Wq§.x + this.§_-Xv§;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc1_ = this._value * this.§_-O8§;
         _loc2_;
         _loc2_;
         this.§_-dg§.x = _loc1_;
         this.§_-8O§.width = _loc1_;
         _loc2_;
         this.§_-CI§.visible = false;
      }
      
      private function §_-Kv§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-dg§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-tK§,false,0,true);
         _loc1_;
         this.§_-dg§.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.§_-dg§.mouseChildren = false;
         _loc2_;
         this.§_-dg§.buttonMode = true;
      }
      
      private function §_-tK§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-9x§ = this._value;
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-jS§,false,0,true);
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-E1§,false,0,true);
         _loc2_;
         this.§_-dg§.addEventListener(MouseEvent.MOUSE_UP,this.§_-E1§,false,0,true);
      }
      
      private function §_-jS§(param1:Event) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = this.mouseX;
         var _loc3_:Number = Math.round(_loc2_ / this.§_-O8§);
         _loc6_;
         _loc6_;
         var _loc4_:int = this.§_-9x§ + this.§_-vN§();
         _loc5_;
         _loc5_;
         if(_loc4_ > this.§_-I5§)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = this.§_-I5§;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(_loc3_ > _loc4_)
         {
            _loc6_;
            _loc5_;
            _loc3_ = _loc4_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         if(_loc3_ < 1)
         {
            _loc6_;
            _loc6_;
            _loc3_ = 1;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         if(_loc3_ <= _loc4_ && _loc3_ >= 1)
         {
            this.§_-dg§.x = _loc3_ * this.§_-O8§;
            this.§_-8O§.width = _loc3_ * this.§_-O8§;
            this.§_-CI§.width = _loc4_ * this.§_-O8§;
            _loc5_;
            this.§_-CI§.visible = true;
            this.§_-9x§ = _loc3_;
            _loc6_;
         }
         else
         {
            this.§_-9x§ = this._value;
            _loc6_;
            _loc6_;
         }
         this.§_-jf§ = new §_-07§("onValueChanged",true,false);
         this.§_-jf§.§_-9x§ = this.§_-9x§;
         dispatchEvent(this.§_-jf§);
      }
      
      public function §_-E1§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._value = this.§_-9x§;
         this.§_-CI§.visible = false;
         _loc3_;
         _loc3_;
         if(hasEventListener(Event.ENTER_FRAME))
         {
            _loc3_;
            removeEventListener(Event.ENTER_FRAME,this.§_-jS§);
            _loc2_;
            _loc2_;
         }
         if(this.§_-dg§.hasEventListener(MouseEvent.MOUSE_UP))
         {
            this.§_-dg§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-E1§);
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-E1§);
            _loc3_;
            _loc3_;
         }
         this.§_-jf§ = new §_-07§("onFinishDrag",true,false);
         _loc2_;
         _loc2_;
         this.§_-jf§.§_-9x§ = this.§_-9x§;
         dispatchEvent(this.§_-jf§);
      }
   }
}
