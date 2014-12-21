package com.funkypear.ui
{
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-Ex§ extends MovieClip
   {
      
      public function §_-Ex§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         mouseEnabled = false;
         _loc1_;
         _loc1_;
         mouseChildren = false;
         _loc2_;
         buttonMode = false;
         _loc2_;
         gotoAndStop("locked");
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      private var §_-yY§:Boolean = false;
      
      private var §_-4w§:Boolean = true;
      
      private var locked:Boolean = true;
      
      private var §_-aO§:Sprite;
      
      private var §_-26§:Boolean = false;
      
      private var §_-wo§:Boolean = false;
      
      public function §_-Kv§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         if(!this.§_-26§)
         {
            _loc1_;
            _loc1_;
            mouseEnabled = true;
            _loc1_;
            _loc1_;
            mouseChildren = false;
            _loc1_;
            buttonMode = true;
            _loc1_;
            _loc1_;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            _loc2_;
            addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
            this.locked = false;
            _loc1_;
            gotoAndStop("up");
            this.§_-26§ = true;
            if(this.§_-wo§)
            {
               _loc1_;
               _loc1_;
               this.§_-FM§();
            }
         }
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.locked)
         {
            _loc2_;
            gotoAndStop("locked");
            _loc3_;
            _loc3_;
         }
         else
         {
            if(this.§_-4w§)
            {
               this.§_-yY§ = true;
               _loc2_;
            }
            this.doRollOver(null);
            (parent as LobbyMenu).§_-NP§(name);
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         if(this.locked)
         {
            _loc3_;
            _loc3_;
            gotoAndStop("locked");
            _loc3_;
            _loc3_;
         }
         else
         {
            if(!this.§_-yY§)
            {
               gotoAndStop("up");
            }
            else
            {
               gotoAndStop("selected");
            }
            this.§_-5T§();
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.locked)
         {
            gotoAndStop("locked");
         }
         else
         {
            if(!this.§_-yY§)
            {
               _loc2_;
               _loc2_;
               gotoAndStop("up");
            }
            else
            {
               gotoAndStop("selected");
               _loc3_;
            }
            this.§_-E2§();
         }
      }
      
      public function §_-yF§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-yY§ = false;
         _loc1_;
         this.doRollOut(null);
      }
      
      private function §_-5T§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         var _loc1_:Number = 1.1;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-qP§.stop();
               _loc3_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc3_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc2_;
         _loc2_;
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-qP§.start();
         _loc2_;
         _loc2_;
         this.§_-GY§.start();
      }
      
      private function §_-E2§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = 1;
         _loc3_;
         _loc2_;
         _loc2_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc3_;
            _loc2_;
            _loc2_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc3_;
               this.§_-qP§.stop();
               _loc3_;
               _loc2_;
               _loc2_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         _loc2_;
         _loc2_;
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function §_-FM§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-wo§ = true;
         if(this.§_-aO§ == null)
         {
            this.§_-aO§ = new §_-id§() as Sprite;
            _loc1_;
            _loc1_;
            this.§_-aO§.x = 7;
            _loc2_;
            this.§_-aO§.y = 8;
            addChild(this.§_-aO§);
         }
         else
         {
            this.§_-aO§.visible = true;
            _loc2_;
         }
         this.§_-lA§();
         if(this.locked)
         {
            this.§_-aO§.visible = false;
         }
      }
      
      public function §_-9Y§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-wo§ = false;
         _loc1_;
         if(this.§_-aO§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-aO§.visible = false;
         }
      }
      
      public function §_-lA§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-aO§ != null)
         {
            _loc1_;
            setChildIndex(this.§_-aO§,numChildren - 1);
         }
      }
   }
}
