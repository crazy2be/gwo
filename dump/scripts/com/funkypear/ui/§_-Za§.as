package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.Event;
   
   public class §_-Za§ extends Sprite
   {
      
      public function §_-Za§(param1:Sprite, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.content_clip = param1;
         this.mask_clip = param2;
         this.hide_when_inactive = param3;
         this.§_-co§ = param1.y;
         _loc5_;
         _loc5_;
         this.min_value = this.§_-GT§;
         this.max_value = param2.height - this.§_-GT§;
         _loc5_;
         _loc5_;
         this.§_-6X§ = this.max_value - this.min_value;
         this.bar = new §_-3E§();
         _loc4_;
         _loc5_;
         this.bar.y = this.§_-GT§;
         _loc5_;
         this.bar.height = this.§_-6X§;
         _loc4_;
         addChild(this.bar);
         _loc4_;
         this.§_-gf§ = new §_-yi§();
         addChild(this.§_-gf§);
         _loc5_;
         _loc5_;
         this.§_-8l§ = new §_-Ja§();
         this.§_-8l§.y = param2.height - this.§_-GT§;
         _loc5_;
         addChild(this.§_-8l§);
         _loc4_;
         _loc4_;
         this.§_-i8§ = new §_-§();
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-i8§.y = this.§_-GT§;
         _loc5_;
         _loc5_;
         addChild(this.§_-i8§);
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-i8§.mouseEnabled = true;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-i8§.mouseChildren = false;
         _loc5_;
         this.§_-i8§.buttonMode = true;
         this.§_-i8§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-24§,false,0,true);
      }
      
      private var content_clip:Sprite;
      
      private var mask_clip:Sprite;
      
      private var min_value:Number;
      
      private var max_value:Number;
      
      private var §_-6X§:Number;
      
      private var §_-i8§:§_-§;
      
      private var bar:§_-3E§;
      
      private var §_-gf§:§_-yi§;
      
      private var §_-8l§:§_-Ja§;
      
      private var §_-co§:Number;
      
      private var §_-GT§:Number = 9;
      
      private var §_-cy§:Number;
      
      private var §_-4W§:Boolean = false;
      
      private var hide_when_inactive:Boolean = false;
      
      public function §_-24§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-4W§ = true;
         _loc2_;
         this.§_-i8§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-24§);
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-27§,false,0,true);
         _loc3_;
         addEventListener(Event.ENTER_FRAME,this.§_-SX§,false,0,true);
      }
      
      public function §_-SX§(param1:Event) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = mouseY;
         _loc3_;
         _loc3_;
         if(_loc2_ < this.min_value)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc2_ = this.min_value;
         }
         _loc4_;
         if(_loc2_ > this.max_value)
         {
            _loc4_;
            _loc2_ = this.max_value;
         }
         this.§_-i8§.y = _loc2_;
         this.§_-0-Z§(_loc2_);
      }
      
      private function §_-0-Z§(param1:Number) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc2_:Number = (param1 - this.§_-GT§) / this.§_-6X§;
         _loc6_;
         _loc5_;
         var _loc3_:Number = this.§_-cy§ - this.mask_clip.height;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         var _loc4_:Number = this.§_-co§ - _loc3_ * _loc2_;
         _loc5_;
         this.content_clip.y = _loc4_;
      }
      
      public function §_-27§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-4W§ = false;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.§_-SX§);
         _loc2_;
         _loc2_;
         this.§_-i8§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-24§,false,0,true);
      }
      
      public function §_-oc§(param1:Number = -1) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = this.§_-i8§.y;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         this.§_-i8§.y = this.§_-GT§;
         this.§_-0-Z§(this.§_-GT§);
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == -1)
         {
            _loc3_;
            this.§_-cy§ = this.content_clip.height;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-cy§ = param1;
         }
         _loc3_;
         if(this.§_-cy§ <= this.mask_clip.height)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-i8§.visible = false;
            _loc3_;
            _loc3_;
            if(this.hide_when_inactive)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.bar.alpha = 0;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc4_;
               this.§_-gf§.alpha = 0;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc4_;
               this.§_-8l§.alpha = 0;
            }
            else
            {
               _loc3_;
               this.bar.alpha = 0.4;
               _loc4_;
               _loc4_;
               this.§_-gf§.alpha = 0.4;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               this.§_-8l§.alpha = 0.4;
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            this.§_-i8§.visible = true;
            this.bar.alpha = 1;
            _loc3_;
            _loc3_;
            this.§_-gf§.alpha = 1;
            this.§_-8l§.alpha = 1;
         }
         if(this.§_-4W§)
         {
            _loc3_;
            _loc3_;
            if(this.§_-cy§ <= this.mask_clip.height)
            {
               _loc3_;
               _loc3_;
               this.§_-27§(null);
               _loc4_;
               _loc4_;
            }
            else
            {
               this.§_-i8§.y = _loc2_;
               this.§_-0-Z§(_loc2_);
               _loc3_;
            }
         }
         else
         {
            this.§_-0-Z§(this.min_value);
         }
      }
      
      public function §_-u3§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         var _loc1_:Number = this.§_-cy§ - this.mask_clip.height;
         _loc2_;
         if(_loc1_ > 0)
         {
            _loc3_;
            _loc3_;
            if(this.§_-4W§)
            {
               _loc3_;
               _loc3_;
            }
            else
            {
               this.§_-i8§.y = this.max_value;
               _loc2_;
               _loc2_;
               this.§_-0-Z§(this.max_value);
            }
         }
      }
   }
}
