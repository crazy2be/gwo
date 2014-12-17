package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.utils.getDefinitionByName;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-r7§ extends Sprite
   {
      
      public function §_-r7§(param1:int = -1, param2:Boolean = false)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         _loc4_;
         this.§_-Q7§ = new Sprite();
         this.§_-T9§ = new Sprite();
         addChild(this.§_-T9§);
         _loc4_;
         _loc4_;
         addChild(this.§_-Q7§);
         if(param2)
         {
            this.§_-Q7§.mouseEnabled = true;
            _loc3_;
            this.§_-Q7§.mouseChildren = false;
            this.§_-Q7§.buttonMode = true;
            this.§_-VC§ = new ModToolTip(param1);
            this.§_-T9§.addChild(this.§_-VC§);
            _loc3_;
            this.§_-Q7§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            this.§_-Q7§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         }
         this.changeIcon(param1);
      }
      
      private var §_-Q7§:Sprite;
      
      private var §_-T9§:Sprite;
      
      private var mod_id:int;
      
      private var §_-VC§:ModToolTip;
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      private var large_scale:Number = 1.1;
      
      private var normal_scale:Number = 1;
      
      public function changeIcon(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:§_-00§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         _loc7_;
         _loc7_;
         this.mod_id = param1;
         _loc7_;
         if(this.§_-Q7§.numChildren > 0)
         {
            while(this.§_-Q7§.numChildren > 0)
            {
               this.§_-Q7§.removeChildAt(0);
               _loc7_;
               _loc7_;
            }
            _loc6_;
         }
         if(param1 == -1)
         {
            _loc6_;
            _loc2_ = new §_-00§();
            _loc6_;
            this.§_-Q7§.addChild(_loc2_);
         }
         else
         {
            _loc3_ = String("ModGfx" + param1);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc7_;
            _loc7_;
            this.§_-Q7§.addChild(_loc5_);
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-VC§.§_-KC§();
         _loc3_;
         this.§_-vN§();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-VC§.§_-oT§();
         _loc2_;
         _loc2_;
         this.§_-l7§();
      }
      
      public function setNormalScale(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.normal_scale = param1;
         _loc2_;
         _loc2_;
         _loc3_;
         this.large_scale = param1 + param1 * 0.1;
      }
      
      private function §_-vN§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc1_;
               _loc1_;
               this.§_-nh§.stop();
               _loc1_;
               _loc1_;
               this.§_-Vs§.stop();
               _loc1_;
               _loc1_;
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc1_;
            _loc1_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.large_scale,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.large_scale,10,false);
         _loc1_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      private function §_-l7§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc1_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-nh§.stop();
               _loc2_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.normal_scale,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.normal_scale,10,false);
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
   }
}
