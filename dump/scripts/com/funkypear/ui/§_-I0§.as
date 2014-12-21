package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-I0§ extends Sprite
   {
      
      public function §_-I0§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         Global.lobby_display.selectBrowseYourCustom();
      }
      
      public function §_-sG§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         buttonMode = true;
         _loc2_;
         mouseEnabled = true;
         _loc1_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc1_;
         _loc1_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
      }
      
      public function §_-Kv§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               this.§_-qP§.stop();
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-GY§.stop();
               _loc5_;
            }
            this.§_-qP§ = null;
            _loc4_;
            this.§_-GY§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-qP§.start();
         _loc4_;
         _loc4_;
         this.§_-GY§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         var _loc3_:Number = 0.5;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc5_;
            _loc5_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-qP§.stop();
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            _loc5_;
            _loc5_;
            this.§_-GY§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         this.§_-qP§.start();
         _loc5_;
         this.§_-GY§.start();
      }
   }
}
