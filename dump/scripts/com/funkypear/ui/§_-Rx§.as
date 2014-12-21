package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.utils.getDefinitionByName;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-Rx§ extends Sprite
   {
      
      public function §_-Rx§(param1:int = -1, param2:Boolean = false)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         this.§_-5h§ = new Sprite();
         this.§_-cH§ = new Sprite();
         _loc4_;
         addChild(this.§_-cH§);
         addChild(this.§_-5h§);
         _loc4_;
         _loc4_;
         if(param2)
         {
            this.§_-5h§.mouseEnabled = true;
            this.§_-5h§.mouseChildren = false;
            _loc4_;
            this.§_-5h§.buttonMode = true;
            _loc4_;
            this.§_-ez§ = new ModToolTip(param1);
            this.§_-cH§.addChild(this.§_-ez§);
            _loc3_;
            _loc3_;
            this.§_-5h§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            this.§_-5h§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         }
         this.changeIcon(param1);
      }
      
      private var §_-5h§:Sprite;
      
      private var §_-cH§:Sprite;
      
      private var mod_id:int;
      
      private var §_-ez§:ModToolTip;
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      private var large_scale:Number = 1.1;
      
      private var normal_scale:Number = 1;
      
      public function changeIcon(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:§_-H6§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         _loc6_;
         this.mod_id = param1;
         _loc7_;
         if(this.§_-5h§.numChildren > 0)
         {
            while(this.§_-5h§.numChildren > 0)
            {
               this.§_-5h§.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
            _loc6_;
            _loc6_;
         }
         if(param1 == -1)
         {
            _loc7_;
            _loc2_ = new §_-H6§();
            _loc6_;
            _loc6_;
            this.§_-5h§.addChild(_loc2_);
         }
         else
         {
            _loc3_ = String("ModGfx" + param1);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc7_;
            this.§_-5h§.addChild(_loc5_);
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-ez§.§_-zN§();
         _loc2_;
         _loc2_;
         this.§_-5T§();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-ez§.§_-G7§();
         _loc3_;
         _loc3_;
         this.§_-E2§();
      }
      
      public function setNormalScale(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.normal_scale = param1;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.large_scale = param1 + param1 * 0.1;
      }
      
      private function §_-5T§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-qP§.stop();
               _loc1_;
               this.§_-GY§.stop();
               _loc2_;
            }
            this.§_-qP§ = null;
            _loc1_;
            _loc1_;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.large_scale,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.large_scale,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      private function §_-E2§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc2_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc1_;
               _loc1_;
               _loc1_;
               this.§_-qP§.stop();
               _loc1_;
               _loc1_;
               _loc2_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc2_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.normal_scale,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.normal_scale,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
   }
}
