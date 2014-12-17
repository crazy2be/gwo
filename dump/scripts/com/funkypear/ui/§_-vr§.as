package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.Event;
   
   public class §_-vr§ extends Sprite
   {
      
      public function §_-vr§(param1:Sprite, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.content_clip = param1;
         this.mask_clip = param2;
         _loc5_;
         _loc5_;
         this.hide_when_inactive = param3;
         _loc4_;
         _loc4_;
         this.§_-wB§ = param1.y;
         _loc5_;
         this.min_value = this.§_-ZZ§;
         _loc4_;
         _loc4_;
         this.max_value = param2.height - this.§_-ZZ§;
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-CQ§ = this.max_value - this.min_value;
         this.bar = new §_-uy§();
         _loc4_;
         _loc4_;
         _loc4_;
         this.bar.y = this.§_-ZZ§;
         _loc4_;
         _loc4_;
         this.bar.height = this.§_-CQ§;
         _loc4_;
         _loc4_;
         addChild(this.bar);
         _loc4_;
         _loc4_;
         this.§_-uo§ = new §_-4h§();
         _loc5_;
         _loc5_;
         addChild(this.§_-uo§);
         _loc4_;
         _loc4_;
         this.§_-SG§ = new §_-Ur§();
         this.§_-SG§.y = param2.height - this.§_-ZZ§;
         addChild(this.§_-SG§);
         this.§_-av§ = new §_-CO§();
         _loc4_;
         _loc5_;
         this.§_-av§.y = this.§_-ZZ§;
         addChild(this.§_-av§);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-av§.mouseEnabled = true;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-av§.mouseChildren = false;
         _loc5_;
         this.§_-av§.buttonMode = true;
         _loc5_;
         _loc5_;
         this.§_-av§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-WI§,false,0,true);
      }
      
      private var content_clip:Sprite;
      
      private var mask_clip:Sprite;
      
      private var min_value:Number;
      
      private var max_value:Number;
      
      private var §_-CQ§:Number;
      
      private var §_-av§:§_-CO§;
      
      private var bar:§_-uy§;
      
      private var §_-uo§:§_-4h§;
      
      private var §_-SG§:§_-Ur§;
      
      private var §_-wB§:Number;
      
      private var §_-ZZ§:Number = 9;
      
      private var §_-sU§:Number;
      
      private var §_-px§:Boolean = false;
      
      private var hide_when_inactive:Boolean = false;
      
      public function §_-WI§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-px§ = true;
         _loc2_;
         this.§_-av§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-WI§);
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-xM§,false,0,true);
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-YH§,false,0,true);
      }
      
      public function §_-YH§(param1:Event) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = mouseY;
         _loc3_;
         _loc3_;
         if(_loc2_ < this.min_value)
         {
            _loc4_;
            _loc3_;
            _loc2_ = this.min_value;
            _loc3_;
            _loc3_;
         }
         _loc4_;
         if(_loc2_ > this.max_value)
         {
            _loc3_;
            _loc2_ = this.max_value;
            _loc3_;
         }
         this.§_-av§.y = _loc2_;
         _loc4_;
         this.§_-uh§(_loc2_);
      }
      
      private function §_-uh§(param1:Number) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         var _loc2_:Number = (param1 - this.§_-ZZ§) / this.§_-CQ§;
         _loc5_;
         _loc6_;
         var _loc3_:Number = this.§_-sU§ - this.mask_clip.height;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         var _loc4_:Number = this.§_-wB§ - _loc3_ * _loc2_;
         _loc6_;
         _loc6_;
         this.content_clip.y = _loc4_;
      }
      
      public function §_-xM§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-px§ = false;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.§_-YH§);
         _loc3_;
         _loc3_;
         this.§_-av§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-WI§,false,0,true);
      }
      
      public function §_-ps§(param1:Number = -1) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = this.§_-av§.y;
         _loc3_;
         _loc3_;
         this.§_-av§.y = this.§_-ZZ§;
         _loc4_;
         this.§_-uh§(this.§_-ZZ§);
         _loc3_;
         _loc4_;
         if(param1 == -1)
         {
            this.§_-sU§ = this.content_clip.height;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-sU§ = param1;
         }
         _loc4_;
         if(this.§_-sU§ <= this.mask_clip.height)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            this.§_-av§.visible = false;
            _loc4_;
            _loc4_;
            _loc3_;
            if(this.hide_when_inactive)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               this.bar.alpha = 0;
               _loc3_;
               _loc3_;
               this.§_-uo§.alpha = 0;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-SG§.alpha = 0;
            }
            else
            {
               _loc3_;
               _loc3_;
               this.bar.alpha = 0.4;
               _loc3_;
               _loc3_;
               this.§_-uo§.alpha = 0.4;
               _loc4_;
               _loc4_;
               this.§_-SG§.alpha = 0.4;
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            this.§_-av§.visible = true;
            _loc4_;
            _loc4_;
            this.bar.alpha = 1;
            this.§_-uo§.alpha = 1;
            _loc3_;
            this.§_-SG§.alpha = 1;
         }
         if(this.§_-px§)
         {
            if(this.§_-sU§ <= this.mask_clip.height)
            {
               this.§_-xM§(null);
            }
            else
            {
               this.§_-av§.y = _loc2_;
               _loc3_;
               this.§_-uh§(_loc2_);
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            this.§_-uh§(this.min_value);
         }
      }
      
      public function §_-2j§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         var _loc1_:Number = this.§_-sU§ - this.mask_clip.height;
         _loc3_;
         if(_loc1_ > 0)
         {
            _loc3_;
            _loc3_;
            if(this.§_-px§)
            {
               _loc2_;
               _loc2_;
            }
            else
            {
               this.§_-av§.y = this.max_value;
               _loc2_;
               _loc2_;
               this.§_-uh§(this.max_value);
            }
         }
      }
   }
}
