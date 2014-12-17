package com.funkypear.ui
{
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-d3§ extends MovieClip
   {
      
      public function §_-d3§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         mouseEnabled = false;
         _loc2_;
         _loc2_;
         mouseChildren = false;
         _loc2_;
         buttonMode = false;
         _loc1_;
         gotoAndStop("locked");
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      private var §_-Od§:Boolean = false;
      
      private var §_-2n§:Boolean = true;
      
      private var locked:Boolean = true;
      
      private var §_-kP§:Sprite;
      
      private var §_-B4§:Boolean = false;
      
      private var §_-Kk§:Boolean = false;
      
      public function §_-QE§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!this.§_-B4§)
         {
            _loc1_;
            _loc1_;
            mouseEnabled = true;
            mouseChildren = false;
            buttonMode = true;
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
            this.locked = false;
            _loc2_;
            _loc2_;
            gotoAndStop("up");
            this.§_-B4§ = true;
            _loc2_;
            if(this.§_-Kk§)
            {
               this.§_-Q1§();
            }
         }
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.locked)
         {
            gotoAndStop("locked");
            _loc2_;
            _loc2_;
         }
         else
         {
            if(this.§_-2n§)
            {
               _loc3_;
               _loc3_;
               this.§_-Od§ = true;
               _loc3_;
               _loc3_;
            }
            this.doRollOver(null);
            _loc3_;
            (parent as LobbyMenu).§_-rh§(name);
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.locked)
         {
            gotoAndStop("locked");
         }
         else
         {
            if(!this.§_-Od§)
            {
               _loc2_;
               _loc2_;
               gotoAndStop("up");
            }
            else
            {
               gotoAndStop("selected");
            }
            this.§_-vN§();
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.locked)
         {
            _loc2_;
            gotoAndStop("locked");
         }
         else
         {
            if(!this.§_-Od§)
            {
               gotoAndStop("up");
               _loc3_;
            }
            else
            {
               gotoAndStop("selected");
            }
            this.§_-l7§();
         }
      }
      
      public function §_-oD§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Od§ = false;
         _loc2_;
         this.doRollOut(null);
      }
      
      private function §_-vN§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         var _loc1_:Number = 1.1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc2_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc3_;
               this.§_-nh§.stop();
               _loc3_;
               _loc3_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc3_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc2_;
         _loc2_;
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         _loc3_;
         _loc3_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      private function §_-l7§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = 1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc3_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-nh§.stop();
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-Vs§.stop();
               _loc3_;
            }
            this.§_-nh§ = null;
            _loc3_;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         _loc2_;
         _loc2_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function §_-Q1§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Kk§ = true;
         _loc2_;
         _loc2_;
         if(this.§_-kP§ == null)
         {
            this.§_-kP§ = new §_-fj§() as Sprite;
            this.§_-kP§.x = 7;
            _loc1_;
            _loc1_;
            this.§_-kP§.y = 8;
            _loc2_;
            addChild(this.§_-kP§);
         }
         else
         {
            this.§_-kP§.visible = true;
            _loc2_;
         }
         this.§_-Dk§();
         _loc2_;
         _loc2_;
         if(this.locked)
         {
            _loc1_;
            this.§_-kP§.visible = false;
         }
      }
      
      public function §_-qG§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Kk§ = false;
         _loc2_;
         if(this.§_-kP§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-kP§.visible = false;
         }
      }
      
      public function §_-Dk§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-kP§ != null)
         {
            _loc1_;
            setChildIndex(this.§_-kP§,numChildren - 1);
         }
      }
   }
}
