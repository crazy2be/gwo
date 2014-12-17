package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-A3§ extends Sprite
   {
      
      public function §_-A3§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         this.shadow_mc = param1;
         _loc3_;
         x = 1500;
         _loc2_;
         _loc2_;
         y = 14;
      }
      
      protected var §_-hW§:Tween;
      
      protected var §_-Bm§:Tween;
      
      protected var fade_in:Tween;
      
      protected var §_-2V§:Tween;
      
      protected var shadow_mc:Sprite;
      
      public var §_-HF§:Boolean = false;
      
      public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tweenOut();
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_menu.§_-3-§();
      }
      
      public function tweenInExtras() : void
      {
      }
      
      public function §_-CK§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.§_-2V§ != null)
         {
            _loc2_;
            _loc1_;
            this.§_-2V§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-qT§);
            _loc1_;
            this.§_-2V§.stop();
            _loc1_;
            this.§_-2V§ = null;
         }
      }
      
      public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(!this.§_-HF§)
         {
            Global.lobby_display.lobby_menu.§_-Zu§();
            this.tweenInExtras();
            _loc3_;
            _loc3_;
            this.§_-hW§ = new Tween(this,"x",Strong.easeOut,x,81,1,true);
            this.§_-hW§.start();
            _loc3_;
            _loc3_;
            if(param1)
            {
               _loc3_;
               this.shadow_mc.alpha = 0;
               _loc3_;
               _loc3_;
               this.shadow_mc.visible = true;
               this.fade_in = new Tween(this.shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc3_;
               this.fade_in.start();
            }
            this.§_-HF§ = true;
         }
      }
      
      public function tweenOut(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-HF§)
         {
            _loc2_;
            _loc2_;
            this.§_-Bm§ = new Tween(this,"x",Strong.easeOut,x,1500,1,true);
            this.§_-Bm§.start();
            _loc3_;
            if(param1)
            {
               this.§_-2V§ = new Tween(this.shadow_mc,"alpha",Strong.easeOut,0.5,0,1,true);
               _loc3_;
               _loc3_;
               _loc2_;
               this.§_-2V§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-qT§,false,0,true);
               _loc2_;
               _loc2_;
               this.§_-2V§.start();
            }
            this.§_-HF§ = false;
         }
      }
      
      public function §_-qT§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-2V§ != null)
         {
            this.§_-2V§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-qT§);
            this.§_-2V§ = null;
         }
         if(this.fade_in != null)
         {
            _loc3_;
            _loc3_;
            this.fade_in = null;
         }
         this.shadow_mc.alpha = 0;
         this.shadow_mc.visible = false;
      }
   }
}
