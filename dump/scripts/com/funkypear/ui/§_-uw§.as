package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-uw§ extends Sprite
   {
      
      public function §_-uw§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         this.shadow_mc = param1;
         _loc3_;
         x = 1500;
         _loc2_;
         _loc2_;
         y = 14;
      }
      
      protected var §_-hH§:Tween;
      
      protected var §_-Cs§:Tween;
      
      protected var fade_in:Tween;
      
      protected var §_-cG§:Tween;
      
      protected var shadow_mc:Sprite;
      
      public var §_-0B§:Boolean = false;
      
      public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tweenOut();
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_menu.§_-pk§();
      }
      
      public function tweenInExtras() : void
      {
      }
      
      public function §_-1t§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-cG§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-cG§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-nL§);
            _loc1_;
            this.§_-cG§.stop();
            _loc1_;
            this.§_-cG§ = null;
         }
      }
      
      public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!this.§_-0B§)
         {
            Global.lobby_display.lobby_menu.§_-K0§();
            this.tweenInExtras();
            this.§_-hH§ = new Tween(this,"x",Strong.easeOut,x,81,1,true);
            _loc3_;
            _loc3_;
            this.§_-hH§.start();
            _loc2_;
            _loc2_;
            if(param1)
            {
               this.shadow_mc.alpha = 0;
               this.shadow_mc.visible = true;
               _loc2_;
               this.fade_in = new Tween(this.shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               this.fade_in.start();
               _loc3_;
            }
            this.§_-0B§ = true;
         }
      }
      
      public function tweenOut(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-0B§)
         {
            _loc2_;
            _loc2_;
            this.§_-Cs§ = new Tween(this,"x",Strong.easeOut,x,1500,1,true);
            this.§_-Cs§.start();
            _loc3_;
            if(param1)
            {
               _loc3_;
               this.§_-cG§ = new Tween(this.shadow_mc,"alpha",Strong.easeOut,0.5,0,1,true);
               _loc2_;
               this.§_-cG§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-nL§,false,0,true);
               this.§_-cG§.start();
            }
            this.§_-0B§ = false;
         }
      }
      
      public function §_-nL§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-cG§ != null)
         {
            _loc2_;
            this.§_-cG§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-nL§);
            _loc3_;
            this.§_-cG§ = null;
         }
         if(this.fade_in != null)
         {
            this.fade_in = null;
            _loc3_;
         }
         this.shadow_mc.alpha = 0;
         this.shadow_mc.visible = false;
      }
   }
}
