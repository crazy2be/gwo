package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-ei§ extends Sprite
   {
      
      public function §_-ei§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         Global.lobby_display.selectBrowseLatestCustom();
      }
      
      public function §_-Ua§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         buttonMode = true;
         _loc1_;
         mouseEnabled = true;
         _loc2_;
         _loc2_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc2_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
      }
      
      public function §_-QE§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc4_;
               this.§_-Vs§.stop();
               _loc5_;
               _loc5_;
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc5_;
            _loc5_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc5_;
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         _loc4_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         var _loc3_:Number = 0.5;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc5_;
            _loc5_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc4_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            _loc4_;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc4_;
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         this.§_-nh§.start();
         _loc4_;
         this.§_-Vs§.start();
      }
   }
}
