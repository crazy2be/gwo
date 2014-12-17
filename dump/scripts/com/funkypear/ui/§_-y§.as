package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-ZN§.§_-Qo§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-y§ extends §_-A3§
   {
      
      public function §_-y§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super(param1);
         _loc3_;
         _loc3_;
         x = 1500;
         _loc3_;
         y = 138;
      }
      
      public var §_-Jg§:TextField;
      
      public var waiting_bg:MovieClip;
      
      public var §_-8O§:TextField;
      
      public var update_button:§_-Qo§;
      
      private var §_-5d§:String = "";
      
      private var §_-36§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         tweenOut(true);
      }
      
      public function clickOK() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.doClose();
      }
      
      public function update(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-5d§ = param1.split("|")[0];
         _loc2_;
         _loc2_;
         this.§_-36§ = param1.split("|")[1];
         _loc3_;
         this.§_-8O§.text = this.§_-5d§;
         _loc3_;
         _loc3_;
         this.§_-Jg§.text = this.§_-36§;
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(!§_-HF§)
         {
            _loc2_;
            tweenInExtras();
            _loc3_;
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hW§.start();
            _loc3_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               _loc2_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc5_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
